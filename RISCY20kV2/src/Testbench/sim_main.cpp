#include "Vtop.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include "Vtop___024root.h"

#include <iostream>
#include <SDL.h>
#include <SDL_ttf.h>
#include <thread>
#include <atomic>
#include <cstring>
#include <sstream>
#include <iomanip>

#define HEIGHT 480
#define WIDTH  800
#define DEBUG_HEIGHT 50
#define TOTAL_HEIGHT (HEIGHT + DEBUG_HEIGHT)


std::atomic<bool> running(true);
vluint64_t main_time = 0;


uint32_t framebuffer[WIDTH * HEIGHT];
std::atomic<char> dirty = 0;

std::atomic<bool> btnDownRight=1;
std::atomic<bool> btnUpRight=1;
std::atomic<bool> btnLeftRight=1;
std::atomic<bool> btnRightRight=1;
std::atomic<bool> btnDownLeft = 1;
std::atomic<bool> btnUpLeft = 1;
std::atomic<bool> btnLeftLeft = 1;
std::atomic<bool> btnRightLeft = 1;

double sc_time_stamp() { return main_time; }

void simulation_thread() {
    Vtop* top = new Vtop;
    VerilatedVcdC* tfp = new VerilatedVcdC;
    Verilated::traceEverOn(true);

#ifndef SCREEN
    top->trace(tfp, 99);
#endif
    tfp->open("verilator.vcd");

    std::cout << "STARTING SIMULATION\n";
    char oldFrame=0;
    const int MAX_TIME = 200000;
    top->btnDownL = 1;
    top->btnUpL = 1;
    top->btnLeftL = 1;
    top->btnRightL = 1;
    
    top->btnDownR = 1;
    top->btnUpR = 1;
    top->btnLeftR = 1;
    top->btnRightR = 1;
#ifdef SCREEN
    for (main_time = 0; running; main_time += 33) {
#else
    for (main_time = 0; main_time < MAX_TIME * 33 && running; main_time += 33) {
#endif
        top->clk = !top->clk;
        
        
        top->eval();
        tfp->dump(main_time);
        
        if (top->clk) {
            // if (main_time % 10000 == 0) {
                //     printf("Current time: %.2llu\n", main_time);
                //     // dirty = 1;
                // }
                
                #ifdef SCREEN
                uint16_t x = top->rootp->top__DOT__xcursor;
                uint16_t y = top->rootp->top__DOT__ycursor;
                uint8_t r = top->rootp->top__DOT__R_tmp<<3;
                uint8_t g = top->rootp->top__DOT__G_tmp<<2;
                uint8_t b = top->rootp->top__DOT__B_tmp<<3;
                
                if (x+1 < WIDTH && y < HEIGHT) {
                    framebuffer[y * WIDTH + x+1] = (0xFF << 24) | (r << 16) | (g << 8) | b;
                    oldFrame = 0;
                }
                else if(!oldFrame){
                    top->btnDownR = btnDownRight.load();
                    top->btnUpR = btnUpRight.load();
                    top->btnLeftR = btnLeftRight.load();
                    top->btnRightR = btnRightRight.load();
                    top->btnDownL = btnDownLeft.load();
                    top->btnUpL = btnUpLeft.load();
                    top->btnLeftL = btnLeftLeft.load();
                    top->btnRightL = btnRightLeft.load();
                    dirty = 1;
                    oldFrame = 1;
                }
                #endif
            }
        }
        
    std::cout << "FINISHED SIMULATION\n";

    tfp->close();
    delete tfp;
    delete top;
    running = false;
}
void get_key_state();


int main(int argc, char** argv) {
#ifdef SCREEN
    std::cout << "SCREEN EMULATION\n";
#else
    std::cout << "TRACE EMULATION\n";
#endif
    Verilated::commandArgs(argc, argv);
    SDL_Init(SDL_INIT_VIDEO);

    int displayIndex = 1;

    SDL_Window* win = SDL_CreateWindow(
        "PPU Framebuffer",
        SDL_WINDOWPOS_CENTERED_DISPLAY(displayIndex),
        SDL_WINDOWPOS_CENTERED_DISPLAY(displayIndex),
        WIDTH,
        TOTAL_HEIGHT,
        SDL_WINDOW_SHOWN
    );    
    SDL_Renderer* ren = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED);
    SDL_Texture* tex = SDL_CreateTexture(ren, SDL_PIXELFORMAT_ARGB8888, SDL_TEXTUREACCESS_STREAMING, WIDTH, HEIGHT);

    SDL_Event event;
    // debug font
    TTF_Font* font = nullptr;
    SDL_Color textColor = {255, 255, 255, 255};

    if (TTF_Init() == -1) {
        std::cerr << "TTF_Init failed: " << TTF_GetError() << std::endl;
        return 1;
    }
    
    font = TTF_OpenFont("./fonts/DejaVuSansMono.ttf", 16);
    if (!font) {
        std::cerr << "Failed to load font: " << TTF_GetError() << std::endl;
        return 1;
    }

    std::thread simThread(simulation_thread);
    bool running_frame = true;
    while (running_frame) {
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT){
                running_frame = false;
                running = false;
            }
        }

        get_key_state();
        if (dirty.load()) {
            dirty = 0;
            void* pixels;
            int pitch;
            SDL_LockTexture(tex, NULL, &pixels, &pitch);
            std::memcpy(pixels, framebuffer, sizeof(framebuffer));
            SDL_UnlockTexture(tex);
            
            SDL_RenderClear(ren);
            SDL_Rect framebufferRect = {0, 0, WIDTH, HEIGHT};
            SDL_RenderCopy(ren, tex, NULL, &framebufferRect);

            SDL_Rect debugRect = {0, HEIGHT, WIDTH, DEBUG_HEIGHT};
            SDL_SetRenderDrawColor(ren, 50, 50, 50, 255);
            SDL_RenderFillRect(ren, &debugRect);
            // Debug text rendering
            std::ostringstream oss;
            oss << "Simulation time: " << std::fixed << std::setprecision(2) << (main_time / 1e6) << " ms";
            std::string debugText = oss.str();
            SDL_Surface* textSurface = TTF_RenderText_Blended(font, debugText.c_str(), textColor);
            if (textSurface) {
                SDL_Texture* textTexture = SDL_CreateTextureFromSurface(ren, textSurface);
                SDL_Rect textRect = {10, HEIGHT + 10, textSurface->w, textSurface->h};
                SDL_RenderCopy(ren, textTexture, NULL, &textRect);
                SDL_FreeSurface(textSurface);
                SDL_DestroyTexture(textTexture);
            }

            SDL_RenderPresent(ren);
        }
        SDL_Delay(16);
    }

    simThread.join();
    SDL_DestroyTexture(tex);
    SDL_DestroyRenderer(ren);
    SDL_DestroyWindow(win);
    TTF_CloseFont(font);
    SDL_Quit();
    return 0;
}


void get_key_state(){
    const Uint8* state = SDL_GetKeyboardState(NULL);
    btnLeftRight =  !state[SDL_SCANCODE_LEFT];
    btnRightRight = !state[SDL_SCANCODE_RIGHT];
    btnUpRight =    !state[SDL_SCANCODE_UP];
    btnDownRight =  !state[SDL_SCANCODE_DOWN];
    btnLeftLeft =   !state[SDL_SCANCODE_A];
    btnRightLeft =  !state[SDL_SCANCODE_D];
    btnUpLeft =     !state[SDL_SCANCODE_W];
    btnDownLeft =   !state[SDL_SCANCODE_S];
}

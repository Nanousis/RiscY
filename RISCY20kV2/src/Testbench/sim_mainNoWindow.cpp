#include "Vtop.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <iostream>
#include <iomanip>
#include "Vtop___024root.h"
#include <fstream>
#include <SDL.h>

#include <thread>
#include <atomic>

std::atomic<bool> running(true);
vluint64_t main_time = 0;

// SDL STUFF
uint8_t cur_r_value = 0;
uint8_t cur_g_value = 0;
uint8_t cur_b_value = 0;
uint16_t cur_x = 0;
uint16_t cur_y = 0;


double sc_time_stamp() { return main_time; }

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    CData last_tx_data = 0;  // or initialize to some sentinel value
    uint32_t last_g_value = 0;  // or initialize to some sentinel value
    bool tx_data_valid = false; // To detect first time it becomes valid
    
    Vtop* top = new Vtop;

    // Waveform trace setup
    Verilated::traceEverOn(true);
    VerilatedVcdC* tfp = new VerilatedVcdC;
    top->trace(tfp, 99);
    // tfp->dumpvars(1,"TOP.top.cpu_1");
    // tfp->dumpvars(1,"TOP.top.cpu_1.cpu_regs");
    // tfp->dumpvars(1,"TOP.top.cpu_1.PC");
    // tfp->dumpvars(1,"TOP.top.");
    // tfp->dumpvars(1,"TOP.top.uart_controller.tx_data");
    tfp->open("verilator.vcd");

    std::cout << "Starting TESTBENCH" << std::endl;
    // std::ofstream reg_log("register_dump.txt"); // open for writing

    // Clock + simulation loop
    const int MAX_TIME = 100000;
    for (main_time = 0; main_time < MAX_TIME*33; main_time+=33) {
        // Clock toggle
        top->clk = !top->clk;
        top->eval();
        tfp->dump(main_time);
        if (top->clk) {
            uint32_t pc = top->rootp->top__DOT__cpu_1__DOT__PC;
            // // Start dumping when PC reaches 0x80000000
            // if (pc >= 0x80000000) {
            //     reg_log << "\n--- Register Dump @ PC = 0x" 
            //               << std::hex << pc << " ---\n";
        
            //     for (int i = 0; i < 32; ++i) {
            //         uint32_t reg_val = top->rootp->top__DOT__cpu_1__DOT__cpu_regs__DOT__data[i];
            //         reg_log << "x" << std::setw(2) << std::setfill('0') << std::dec << i 
            //                   << ": 0x" << std::hex << std::setw(8) << std::setfill('0') << reg_val << "\n";
            //     }
        
            //     reg_log << std::dec; // Reset number formatting
            // }
        


            CData curr_tx_data = top->rootp->top__DOT__uart_controller__DOT__tx_data;
            if (curr_tx_data != last_tx_data || !tx_data_valid) {
                last_tx_data = curr_tx_data;
                tx_data_valid = true;
                std::cout << (char)curr_tx_data;
            }
            
            // cur_r_value = top->rootp->top__DOT__R_tmp;
            // cur_g_value = top->rootp->top__DOT__G_tmp;
            // cur_b_value = top->rootp->top__DOT__B_tmp;
            // cur_x = top->rootp->top__DOT__xcursor;
            // cur_y = top->rootp->top__DOT__ycursor;
        }
    }
    std::cout << "\nFINISHED\n";
    // reg_log.close();
    tfp->close();
    delete tfp;
    
    delete top;

    return 0;
}

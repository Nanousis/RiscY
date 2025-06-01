// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


VL_ATTR_COLD void Vtop___024root__trace_init_sub__TOP__0(Vtop___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_init_sub__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+890,0,"LCD_CLK",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+891,0,"LCD_HYNC",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+892,0,"LCD_SYNC",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+893,0,"LCD_DEN",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+894,0,"LCD_R",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+895,0,"LCD_G",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+896,0,"LCD_B",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+897,0,"flashMiso",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+898,0,"flashClk",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+899,0,"flashMosi",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+900,0,"flashCs",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+901,0,"uart_rx",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+902,0,"uart_tx",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+903,0,"btnDownL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+904,0,"btnUpL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+905,0,"btnLeftL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+906,0,"btnRightL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+907,0,"btnDownR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+908,0,"btnUpR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+909,0,"btnLeftR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+910,0,"btnRightR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("top", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+890,0,"LCD_CLK",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+891,0,"LCD_HYNC",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+892,0,"LCD_SYNC",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+893,0,"LCD_DEN",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+894,0,"LCD_R",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+895,0,"LCD_G",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+896,0,"LCD_B",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+897,0,"flashMiso",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+898,0,"flashClk",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+899,0,"flashMosi",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+900,0,"flashCs",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+901,0,"uart_rx",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+902,0,"uart_tx",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+903,0,"btnDownL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+904,0,"btnUpL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+905,0,"btnLeftL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+906,0,"btnRightL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+907,0,"btnDownR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+908,0,"btnUpR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+909,0,"btnLeftR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+910,0,"btnRightR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+4,0,"led",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBit(c+918,0,"flashWp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+918,0,"flashHold",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+854,0,"cpuclk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+889,0,"clkout",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+889,0,"CLK_PIX",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+919,0,"clk_btn",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+889,0,"cpu_clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+763,0,"overflow",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+417,0,"PC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+764,0,"instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+864,0,"data_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+418,0,"ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+419,0,"wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+765,0,"data_to_write",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+865,0,"data_read",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+420,0,"byte_select",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+421,0,"debug_error",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+866,0,"mem_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+867,0,"mem_wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+919,0,"screen_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+868,0,"screen_wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+5,0,"boot_data_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+6,0,"boot_instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+7,0,"memReady",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+920,0,"debug",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+8,0,"second_stage_instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+9,0,"second_stage_mem_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+869,0,"second_stage_mem_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+870,0,"second_stage_mem_wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+10,0,"program_instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+11,0,"program_mem_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+871,0,"program_mem_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+872,0,"program_mem_wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+873,0,"uart_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+874,0,"uart_wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+422,0,"uart_data_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+921,0,"usb_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+922,0,"usb_data_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+923,0,"counter27M",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+875,0,"clint_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+876,0,"clint_wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+423,0,"clint_data_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+424,0,"msw_irq",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+425,0,"mtimer_irq",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+919,0,"mext_irq",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+877,0,"btn_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"btn_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+878,0,"flash_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+879,0,"flash_wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+426,0,"flash_data_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+924,0,"pixelAddress",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 9,0);
    tracep->declBus(c+925,0,"pixelData",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+13,0,"error",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+712,0,"R_tmp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+713,0,"G_tmp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+714,0,"B_tmp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+766,0,"xcursor",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBus(c+767,0,"ycursor",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBit(c+768,0,"is_blank",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+427,0,"counter1M",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+428,0,"counter50M",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+856,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+926,0,"STATE_INIT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+927,0,"STATE_WAITING_BUTTON",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+928,0,"STATE_DEBOUNCE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+929,0,"STATE_START",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+857,0,"txCounter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 22,0);
    tracep->declBus(c+930,0,"holdWEN",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+14,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 23,0);
    tracep->pushPrefix("RAM", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+429,0,"PC",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+10,0,"instr",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+880,0,"data_addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 17,0);
    tracep->declBit(c+871,0,"ren",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+872,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+765,0,"data_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+11,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+420,0,"byte_select_vector",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+7,0,"ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+931,0,"data_size",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+932,0,"file_location",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 151,0);
    tracep->declBus(c+1,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+937,0,"STATE_IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"STATE_READING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STATE_WRITING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+940,0,"STATE_FINISHED",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+937,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+930,0,"cnt",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+941,0,"saved_data_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 19,0);
    tracep->declBit(c+15,0,"debug_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("SecondStageRAM", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+429,0,"PC",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+8,0,"instr",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+880,0,"data_addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 17,0);
    tracep->declBit(c+869,0,"ren",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+870,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+765,0,"data_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+9,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+420,0,"byte_select_vector",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+7,0,"ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+931,0,"data_size",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+942,0,"file_location",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 215,0);
    tracep->declBus(c+2,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+937,0,"STATE_IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"STATE_READING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STATE_WRITING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+940,0,"STATE_FINISHED",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+937,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+930,0,"cnt",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+941,0,"saved_data_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 19,0);
    tracep->declBit(c+16,0,"debug_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("VGA", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+855,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+889,0,"clkFpga",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+889,0,"clkPixel",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+893,0,"RGB_Activate",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+891,0,"H_Sync",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+892,0,"V_Sync",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+712,0,"R_tmp",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+713,0,"G_tmp",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+714,0,"B_tmp",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+766,0,"PixelCtr",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBus(c+767,0,"LineCtr",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBit(c+768,0,"is_blank",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+421,0,"debug_error",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+896,0,"RGB_B",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+895,0,"RGB_G",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+894,0,"RGB_R",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+949,0,"H_BackPorch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+950,0,"H_Pulse",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+951,0,"H_Display",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+952,0,"H_FrontPorch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+953,0,"V_BackPorch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+954,0,"V_Pulse",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+955,0,"V_Display",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+956,0,"V_FrontPorch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+957,0,"horizontalTime",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+958,0,"verticalTime",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBit(c+769,0,"H_activate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+770,0,"V_activate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declArray(c+959,0,"charMem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 0,127);
    tracep->declBus(c+963,0,"currentPixel",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 14,0);
    tracep->declBus(c+964,0,"dataOutTxt",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+965,0,"dataOutAttr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->popPrefix();
    tracep->pushPrefix("bm", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+903,0,"btnDownL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+904,0,"btnUpL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+905,0,"btnLeftL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+906,0,"btnRightL",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+907,0,"btnDownR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+908,0,"btnUpR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+909,0,"btnLeftR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+910,0,"btnRightR",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+877,0,"ren",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+881,0,"address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+12,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+17,0,"stableDownL",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+18,0,"stableUpL",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+19,0,"stableLeftL",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+20,0,"stableRightL",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+21,0,"stableDownR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+22,0,"stableUpR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+23,0,"stableLeftR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+24,0,"stableRightR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("debounceDownL", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+903,0,"btn_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+17,0,"btn_stable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+937,0,"IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"COUNTING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+966,0,"DEBOUNCE_TIME",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+25,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+26,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+27,0,"btn_last",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+28,0,"newChange",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+29,0,"dff1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+30,0,"dff2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+31,0,"dff3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("debounceDownR", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+907,0,"btn_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+21,0,"btn_stable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+937,0,"IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"COUNTING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+966,0,"DEBOUNCE_TIME",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+32,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+33,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+34,0,"btn_last",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+35,0,"newChange",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+36,0,"dff1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+37,0,"dff2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+38,0,"dff3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("debounceLeftL", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+905,0,"btn_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+19,0,"btn_stable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+937,0,"IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"COUNTING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+966,0,"DEBOUNCE_TIME",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+39,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+40,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+41,0,"btn_last",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+42,0,"newChange",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+43,0,"dff1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+44,0,"dff2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+45,0,"dff3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("debounceLeftR", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+909,0,"btn_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+23,0,"btn_stable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+937,0,"IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"COUNTING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+966,0,"DEBOUNCE_TIME",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+46,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+47,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+48,0,"btn_last",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+49,0,"newChange",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+50,0,"dff1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+51,0,"dff2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+52,0,"dff3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("debounceRightL", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+906,0,"btn_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+20,0,"btn_stable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+937,0,"IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"COUNTING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+966,0,"DEBOUNCE_TIME",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+53,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+54,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+55,0,"btn_last",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+56,0,"newChange",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+57,0,"dff1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+58,0,"dff2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+59,0,"dff3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("debounceRightR", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+910,0,"btn_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+24,0,"btn_stable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+937,0,"IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"COUNTING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+966,0,"DEBOUNCE_TIME",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+60,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+61,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+62,0,"btn_last",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+63,0,"newChange",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+64,0,"dff1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+65,0,"dff2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+66,0,"dff3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("debounceUpL", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+904,0,"btn_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+18,0,"btn_stable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+937,0,"IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"COUNTING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+966,0,"DEBOUNCE_TIME",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+67,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+68,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+69,0,"btn_last",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+70,0,"newChange",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+71,0,"dff1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+72,0,"dff2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+73,0,"dff3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("debounceUpR", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+908,0,"btn_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+22,0,"btn_stable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+937,0,"IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"COUNTING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+966,0,"DEBOUNCE_TIME",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+74,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBus(c+75,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+76,0,"btn_last",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+77,0,"newChange",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+78,0,"dff1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+79,0,"dff2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+80,0,"dff3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("bu", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+417,0,"PC",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+864,0,"data_addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+418,0,"ren",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+419,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"btn_out",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+5,0,"memory_out",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+426,0,"flash_out",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+422,0,"uart_out",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+967,0,"counter27M",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+427,0,"counter1M",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+11,0,"program_mem_out",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+9,0,"second_stage_mem_out",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+968,0,"usb_out",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+423,0,"clint_data_out",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+6,0,"boot_instr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+10,0,"program_instr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+8,0,"second_stage_instr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+875,0,"clint_ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+876,0,"clint_wen",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+866,0,"mem_ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+867,0,"mem_wen",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+871,0,"program_mem_ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+872,0,"program_mem_wen",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+869,0,"second_stage_mem_ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+870,0,"second_stage_mem_wen",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+919,0,"screen_ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+868,0,"screen_wen",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+878,0,"flash_ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+879,0,"flash_wen",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+873,0,"uart_ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+874,0,"uart_wen",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+877,0,"btn_ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+882,0,"usb_ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+865,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+764,0,"instr_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("clint_inst", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+864,0,"addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+765,0,"wdata",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+876,0,"write_enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+423,0,"rdata",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+424,0,"msw_irq",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+425,0,"mtimer_irq",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+424,0,"msip",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declQuad(c+430,0,"mtime",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declQuad(c+432,0,"mtimecmp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declBus(c+969,0,"MSIP_ADDR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+970,0,"MTIME_ADDR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+971,0,"MTIMECMP_ADDR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("counter1mhz", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+427,0,"counter",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+972,0,"DIVISION",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+434,0,"subCounter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 10,0);
    tracep->popPrefix();
    tracep->pushPrefix("counter50mhz", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+428,0,"counter",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+927,0,"DIVISION",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+435,0,"subCounter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 10,0);
    tracep->popPrefix();
    tracep->pushPrefix("cpu_1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+763,0,"overflow",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+417,0,"PC_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+764,0,"instr_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+864,0,"data_addr",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+418,0,"ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+419,0,"wen",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+765,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+865,0,"data_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+420,0,"byte_select",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+424,0,"software_interrupt",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+425,0,"timer_interrupt",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+919,0,"external_interrupt",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+436,0,"debug_error",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+7,0,"memReady",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+437,0,"IFID_instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+438,0,"PC_IF2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+417,0,"PC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+973,0,"PC_OLD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+439,0,"IFID_PC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+440,0,"IDEX_PC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+441,0,"EXMEM_PC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+442,0,"MEMWB_PC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+974,0,"PCplus4",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+443,0,"JumpAddress",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+771,0,"PC_new",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+764,0,"instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+911,0,"IF2_instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+444,0,"IDEX_instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+445,0,"EXMEM_instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+446,0,"MEMWB_instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+447,0,"delayed_instr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+448,0,"inA_is_PC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+449,0,"branch_taken",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+912,0,"BranchInA",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+450,0,"IDEX_signExtend",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+451,0,"signExtend",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+452,0,"rdA",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+453,0,"rdB",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+454,0,"IDEX_rdA",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+455,0,"IDEX_rdB",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+456,0,"IDEX_funct3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+457,0,"IDEX_funct7",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+458,0,"IDEX_instr_rs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+459,0,"IDEX_instr_rs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+460,0,"IDEX_instr_rd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+461,0,"IDEX_RegDst",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+462,0,"IDEX_ALUSrc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+463,0,"IDEX_inA_is_PC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+464,0,"IDEX_Jump",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+465,0,"IDEX_JumpJALR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+466,0,"IDEX_reg_type",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+467,0,"IDEX_ALUcntrl",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+468,0,"IDEX_MemRead",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+469,0,"IDEX_MemWrite",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+470,0,"IDEX_MemToReg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+471,0,"IDEX_RegWrite",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+472,0,"EXMEM_funct3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+473,0,"MEMWB_funct3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+474,0,"EXMEM_RegWriteAddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+475,0,"EXMEM_ALUOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+476,0,"EXMEM_BranchALUOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+477,0,"EXMEM_reg_type",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+478,0,"EXMEM_Zero",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+479,0,"EXMEM_JumpJALR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+420,0,"byte_select_vector",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+480,0,"EXMEM_MemWriteData",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+765,0,"MemWriteData",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+481,0,"EXMEM_MemRead",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+419,0,"EXMEM_MemWrite",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+482,0,"EXMEM_RegWrite",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+483,0,"EXMEM_MemToReg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+484,0,"MEMWB_DMemOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+485,0,"MEMWB_RegWriteAddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+486,0,"MEMWB_ALUOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+487,0,"MEMWB_MemToReg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+488,0,"MEMWB_RegWrite",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+489,0,"MEMWB_reg_type",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+772,0,"ALUInA",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+773,0,"ALUInB",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+774,0,"bypassOutA",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+775,0,"bypassOutB",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+776,0,"ALUOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+913,0,"BranchALUOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+865,0,"DMemOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+490,0,"MemOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+491,0,"wRegData",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+777,0,"WB_csr_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+778,0,"Zero",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+492,0,"RegDst",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+493,0,"MemRead",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+494,0,"MemWrite",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+495,0,"MemToReg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+496,0,"ALUSrc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+497,0,"PCSrc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+498,0,"RegWrite",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+499,0,"Jump",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+500,0,"JumpJALR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+501,0,"reg_type",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+502,0,"Branch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+503,0,"IDEX_Branch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+504,0,"EXMEM_Branch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+779,0,"bubble_ifid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+780,0,"bubble_idex",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+505,0,"bubble_exmem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+975,0,"bubble_memwb",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+781,0,"write_ifid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+718,0,"write_idex",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+719,0,"write_exmem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+720,0,"write_memwb",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+782,0,"write_pc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+506,0,"opcode",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+507,0,"funct3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+508,0,"ALUcntrl",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+509,0,"csr_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+510,0,"EXMEM_csr_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+511,0,"MEMWB_csr_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+512,0,"csr_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+513,0,"IDEX_csr_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+514,0,"EXMEM_csr_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+515,0,"MEMWB_csr_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBit(c+516,0,"csr_write_allowed",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+517,0,"IDEX_csr_write_allowed",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+518,0,"EXMEM_csr_write_allowed",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+519,0,"MEMWB_csr_write_allowed",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+520,0,"csr_immidiate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+976,0,"IDEX_csr_immidiate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+977,0,"EXMEM_csr_immidiate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+978,0,"MEMWB_csr_immidiate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+521,0,"funct7",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+522,0,"instr_rs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+523,0,"instr_rs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+524,0,"instr_rd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+525,0,"RegWriteAddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+526,0,"ALUOp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+979,0,"bypassA",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+980,0,"bypassB",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+527,0,"imm_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+528,0,"imm_s",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+529,0,"imm_b",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+530,0,"imm_u",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+531,0,"imm_j",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+532,0,"imm_z",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+533,0,"keepDelayInstr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+534,0,"int_taken",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+783,0,"trap_vector",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+535,0,"syscall",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+784,0,"trap_waiting",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+536,0,"trap_in_ID",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declArray(c+785,0,"debug_str",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 159,0);
    tracep->declBit(c+537,0,"write_pc_delayed",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+538,0,"bubble_ifid_delayed",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+981,0,"PCPrevious",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+539,0,"newmepc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+540,0,"pc_string",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2039,0);
    tracep->declBit(c+604,0,"pc_jumped",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+982,0,"MEPC_IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+983,0,"MEPC_WAITINGJUMP",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+605,0,"mepc_state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+606,0,"flushPipeline",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("SignExtendSelector", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+451,0,"out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+527,0,"imm_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+528,0,"imm_s",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+529,0,"imm_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+530,0,"imm_u",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+531,0,"imm_j",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+532,0,"imm_z",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+506,0,"opcode",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->popPrefix();
    tracep->pushPrefix("control_alu", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+526,0,"ALUOp",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+520,0,"csr_immidiate",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+467,0,"ALUcntrl",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+456,0,"funct3",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+457,0,"funct7",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declQuad(c+607,0,"debug_string",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->popPrefix();
    tracep->pushPrefix("control_branch", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+449,0,"branch_taken",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+472,0,"funct3",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+504,0,"Branch",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+478,0,"zero",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+609,0,"sign",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("control_bypass_ex", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+774,0,"bypassOutA",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+775,0,"bypassOutB",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+459,0,"idex_rs1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+458,0,"idex_rs2",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+460,0,"idex_rd",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+466,0,"idex_reg_type",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+477,0,"exmem_reg_type",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+489,0,"memwb_reg_type",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+454,0,"idex_rdA",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+455,0,"idex_rdB",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+491,0,"wRegData",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+475,0,"EXMEM_ALUOut",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+509,0,"csr_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+777,0,"WB_csr_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+610,0,"idex_csr_addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+611,0,"exmem_csr_addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+612,0,"memwb_csr_addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+520,0,"csr_immidiate",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+518,0,"exmem_csr_write_allowed",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+519,0,"memwb_csr_write_allowed",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+474,0,"exmem_rd",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+485,0,"memwb_rd",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+482,0,"exmem_regwrite",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+488,0,"memwb_regwrite",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+613,0,"bypassA",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+614,0,"bypassB",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->popPrefix();
    tracep->pushPrefix("control_main", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+492,0,"RegDst",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+502,0,"Branch",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+493,0,"MemRead",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+494,0,"MemWrite",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+495,0,"MemToReg",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+496,0,"ALUSrc",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+498,0,"RegWrite",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+499,0,"Jump",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+500,0,"JumpJALR",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+448,0,"inA_is_PC",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+501,0,"reg_type",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+508,0,"ALUcntrl",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+506,0,"opcode",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->popPrefix();
    tracep->pushPrefix("control_stall_id", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+779,0,"bubble_ifid",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+780,0,"bubble_idex",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+505,0,"bubble_exmem",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+615,0,"bubble_memwb",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+781,0,"write_ifid",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+718,0,"write_idex",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+719,0,"write_exmem",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+720,0,"write_memwb",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+782,0,"write_pc",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+784,0,"trap_waiting",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+522,0,"ifid_rs",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+523,0,"ifid_rt",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+460,0,"idex_rd",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+493,0,"memRead",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+469,0,"idex_memWrite",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+468,0,"idex_memread",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"memReady",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+499,0,"Jump",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+503,0,"IDEX_Branch",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+504,0,"EXMEM_Branch",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+535,0,"syscall",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+534,0,"int_trap",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+536,0,"trap_in_ID",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+606,0,"flushPipeline",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+497,0,"PCSrc",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+81,0,"memStalled",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+790,0,"suppressTrap",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+791,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->popPrefix();
    tracep->pushPrefix("cpu_alu", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+984,0,"N",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+776,0,"out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+778,0,"zero",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+763,0,"overflow",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+772,0,"inA",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+773,0,"inB",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+526,0,"op",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+776,0,"out_val",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declQuad(c+792,0,"unsigned_sub",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 32,0);
    tracep->declQuad(c+616,0,"debug_string",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->popPrefix();
    tracep->pushPrefix("cpu_regs", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+522,0,"raA",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+523,0,"raB",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+485,0,"wa",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+488,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+491,0,"wd",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+452,0,"rdA",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+453,0,"rdB",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+618,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->pushPrefix("data", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 32; ++i) {
        tracep->declBus(c+619+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 31,0);
    }
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("csrFile", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+512,0,"csrAddr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+515,0,"csrWAddr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBit(c+651,0,"ren",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+519,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+777,0,"wd",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+509,0,"rd",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+782,0,"write_pc",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+439,0,"PC_ID",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+539,0,"new_mepc",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+425,0,"timer_interrupt",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+424,0,"software_interrupt",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+919,0,"external_interrupt",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+784,0,"syscall",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+534,0,"int_taken",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+536,0,"trap_in_ID",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+606,0,"flushPipeline",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+783,0,"trap_vector",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+985,0,"FLUSH_COUNT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+986,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+652,0,"mstatus",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+653,0,"mstatush",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+654,0,"misa",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+655,0,"mie",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+656,0,"mtvec",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+657,0,"mscratch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+658,0,"mepc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+659,0,"mcause",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+660,0,"mtval",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+661,0,"mip",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+662,0,"enableInterrupts",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+663,0,"pipeline_flush_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declArray(c+664,0,"debug",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 319,0);
    tracep->declArray(c+674,0,"debug2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 319,0);
    tracep->declBus(c+684,0,"trap_vector_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("mem_read_selector", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+473,0,"mem_select",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+484,0,"DMemOut",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+685,0,"byte_index",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+490,0,"out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+686,0,"byte_sel",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+687,0,"half",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->popPrefix();
    tracep->pushPrefix("mem_write_selector", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+472,0,"mem_select",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+480,0,"ALUin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+688,0,"offset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+420,0,"byte_select_vector",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+765,0,"out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("signExtendUnit", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+689,0,"instr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 24,0);
    tracep->declBus(c+527,0,"imm_i",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+528,0,"imm_s",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+529,0,"imm_b",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+530,0,"imm_u",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+531,0,"imm_j",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+532,0,"imm_z",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("flashController", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+878,0,"ren",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+879,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+897,0,"flashMiso",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+898,0,"flashClk",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+899,0,"flashMosi",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+900,0,"flashCs",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+765,0,"data_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+883,0,"address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+426,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+794,0,"flash_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+795,0,"flash_wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+796,0,"flash_ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+858,0,"flash_ready",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+797,0,"flash_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 23,0);
    tracep->declBus(c+798,0,"flash_data_in",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+721,0,"flash_data_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+926,0,"READY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+927,0,"READENABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+928,0,"WRITEENABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+987,0,"ADDRESS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+988,0,"DATAIN",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+989,0,"DATAOUT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+690,0,"stateDebug",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->pushPrefix("navigator", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+794,0,"flash_enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+799,0,"readAddress",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 23,0);
    tracep->declBus(c+799,0,"writeAddress",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 23,0);
    tracep->declBus(c+800,0,"dataToWrite",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 23,0);
    tracep->declBit(c+795,0,"write_enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+796,0,"read_enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+897,0,"flashMiso",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+898,0,"flashClk",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+899,0,"flashMosi",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+900,0,"flashCs",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+858,0,"ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+721,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+990,0,"command",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+722,0,"currentByteOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+723,0,"currentByteNum",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declArray(c+724,0,"dataIn",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declArray(c+732,0,"dataInBuffer",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declBit(c+740,0,"enabling_done",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+991,0,"STATE_INIT_POWER",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+992,0,"STATE_LOAD_CMD_TO_SEND",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+993,0,"STATE_SEND",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+990,0,"STATE_LOAD_ADDRESS_TO_SEND",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+994,0,"STATE_READ_DATA",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+995,0,"STATE_DONE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+996,0,"STATE_WRITE_ENABLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+997,0,"STATE_LOAD_WRITE_CMD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+998,0,"STATE_LOAD_WRITE_ADDRESS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+999,0,"STATE_SEND_WRITE_DATA",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+1000,0,"STATE_WAIT_WRITE_COMPLETE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+741,0,"dataToSend",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 23,0);
    tracep->declBus(c+742,0,"bitsToSend",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declQuad(c+743,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 32,0);
    tracep->declBus(c+745,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+746,0,"returnState",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+747,0,"dataReady",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("stored_characters", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 4; ++i) {
        tracep->declBus(c+1001+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 7,0);
    }
    tracep->popPrefix();
    tracep->declBit(c+748,0,"write_progress",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("mem", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+429,0,"PC",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 21,0);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+6,0,"instr",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+880,0,"data_addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 17,0);
    tracep->declBit(c+866,0,"ren",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+867,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+765,0,"data_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+5,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+420,0,"byte_select_vector",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+7,0,"ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+1005,0,"data_size",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+3,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+937,0,"STATE_IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+938,0,"STATE_READING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+939,0,"STATE_WRITING",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+940,0,"STATE_FINISHED",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+82,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+83,0,"cnt",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+84,0,"saved_data_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 19,0);
    tracep->declBit(c+85,0,"debug_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("ppu_inst", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+889,0,"clk_cpu",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+868,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+884,0,"address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+765,0,"data_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+420,0,"byte_select",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+766,0,"xcursor",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBus(c+767,0,"ycursor",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBit(c+768,0,"is_blank",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+1006,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+714,0,"RGB_B",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+713,0,"RGB_G",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+712,0,"RGB_R",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+1007,0,"MAX_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 14,0);
    tracep->declBus(c+1008,0,"MAX_OBJ",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+691,0,"textEn",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+692,0,"spritesEn",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+693,0,"writeAttr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+694,0,"writeText",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+695,0,"writeSprite",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+859,0,"dataOutTxt",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+749,0,"dataOutAttr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+750,0,"dataOutSprite",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+801,0,"xcursor_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBus(c+802,0,"ycursor_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBus(c+803,0,"spriteCursor_x",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBus(c+804,0,"xPos",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 12,0);
    tracep->declBus(c+805,0,"yPos",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 12,0);
    tracep->declArray(c+1009,0,"fontMem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,16383);
    tracep->declBus(c+914,0,"currentCharacter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 14,0);
    tracep->declBus(c+806,0,"spritePointer",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 14,0);
    tracep->declArray(c+860,0,"charMem",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 0,127);
    tracep->pushPrefix("objectAttributes", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 20; ++i) {
        tracep->declBus(c+807+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 31,0);
    }
    tracep->popPrefix();
    tracep->declBus(c+827,0,"current_objectAttributes",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+828,0,"x_obj",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+829,0,"y_obj",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+696,0,"spriteID",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->pushPrefix("lineBuffer", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 20; ++i) {
        tracep->declBus(c+830+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 15,0);
    }
    tracep->popPrefix();
    tracep->declBus(c+850,0,"objectPointer",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 9,0);
    tracep->declBit(c+851,0,"hblank",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+852,0,"data_in_half",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+715,0,"r",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+716,0,"g",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+717,0,"b",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+1521,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 23,0);
    tracep->declBus(c+697,0,"text_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+698,0,"cur_sprite_buf",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+699,0,"buffer_counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+700,0,"obj_line_buffer",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBit(c+701,0,"hasStarted",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+915,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->pushPrefix("attributes_Buffer", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+988,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+1522,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+889,0,"clkA",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+889,0,"clkB",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+691,0,"we_a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+919,0,"we_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+702,0,"addr_a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 10,0);
    tracep->declBus(c+916,0,"addr_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 10,0);
    tracep->declBus(c+693,0,"din_a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+1523,0,"din_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+86,0,"dout_a",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+749,0,"dout_b",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+919,0,"gnd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+918,0,"vcc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("sprite_BRAM", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+988,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+1524,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+889,0,"clkA",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+889,0,"clkB",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+692,0,"we_a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+919,0,"we_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+703,0,"addr_a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBus(c+853,0,"addr_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 13,0);
    tracep->declBus(c+695,0,"din_a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+1525,0,"din_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+87,0,"dout_a",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+750,0,"dout_b",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+919,0,"gnd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+918,0,"vcc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("text_Buffer", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+988,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+1522,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+889,0,"clkA",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+889,0,"clkB",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+691,0,"we_a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+919,0,"we_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+702,0,"addr_a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 10,0);
    tracep->declBus(c+916,0,"addr_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 10,0);
    tracep->declBus(c+694,0,"din_a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+1526,0,"din_b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+88,0,"dout_a",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+859,0,"dout_b",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+919,0,"gnd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+918,0,"vcc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("text", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+924,0,"pixelAddress",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 9,0);
    tracep->declBus(c+885,0,"char_write_addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBit(c+919,0,"ren",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+868,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+917,0,"char_write",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+925,0,"pixelData",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+13,0,"error",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("charMemory", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 20; ++i) {
        tracep->declArray(c+89+i*16,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 0,511);
    }
    tracep->popPrefix();
    tracep->declBus(c+409,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+410,0,"j",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+886,0,"line",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->popPrefix();
    tracep->pushPrefix("uart_controller", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+855,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+873,0,"ren",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+874,0,"wen",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+901,0,"uart_rx",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+902,0,"uart_tx",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+887,0,"address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+765,0,"word_in",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+422,0,"data_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+888,0,"data_in",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+704,0,"byte_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+751,0,"rx_rdy",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+411,0,"tx_busy",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+752,0,"rx_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+705,0,"tx_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+706,0,"ena_tx",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+707,0,"ier",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+708,0,"lcr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+753,0,"lsr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+709,0,"dll",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+710,0,"dlm",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+711,0,"dlab",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("uart_inst", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+1527,0,"SYSCLK_MHZ",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+1528,0,"BAUD_RATE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+889,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+901,0,"rxd",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+751,0,"rx_rdy",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+752,0,"rx_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+706,0,"ena_tx",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+705,0,"tx_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+902,0,"txd",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+411,0,"tx_busy",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+754,0,"rx_sample_pulse",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+1529,0,"CLK_IN_HZ",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+1530,0,"RX_PERIOD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+1530,0,"TX_PERIOD",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+755,0,"rx_period",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+756,0,"rx_position",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+757,0,"rx_byte",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 9,0);
    tracep->declBit(c+758,0,"rxd_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+759,0,"last_rxd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+760,0,"rx_busy",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+761,0,"rx_last_busy",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+412,0,"tx_period",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+413,0,"tx_position",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+414,0,"tx_byte",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 9,0);
    tracep->declBus(c+415,0,"tx_data_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+416,0,"tx_run",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+762,0,"rx_trigger",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vtop___024root__trace_init_top(Vtop___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_init_top\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtop___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vtop___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vtop___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtop___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtop___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vtop___024root__trace_register(Vtop___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_register\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    tracep->addConstCb(&Vtop___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vtop___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vtop___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vtop___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vtop___024root__trace_const_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtop___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_const_0\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtop___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

extern const VlWide<512>/*16383:0*/ Vtop__ConstPool__CONST_hd74c513e_0;

VL_ATTR_COLD void Vtop___024root__trace_const_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_const_0_sub_0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    VlWide<5>/*159:0*/ __Vtemp_1;
    VlWide<7>/*223:0*/ __Vtemp_2;
    // Body
    bufp->fullBit(oldp+918,(1U));
    bufp->fullBit(oldp+919,(0U));
    bufp->fullBit(oldp+920,(vlSelfRef.top__DOT__debug));
    bufp->fullBit(oldp+921,(vlSelfRef.top__DOT__usb_ren));
    bufp->fullIData(oldp+922,(vlSelfRef.top__DOT__usb_data_out),32);
    bufp->fullBit(oldp+923,(vlSelfRef.top__DOT__counter27M));
    bufp->fullSData(oldp+924,(vlSelfRef.top__DOT__pixelAddress),10);
    bufp->fullCData(oldp+925,(vlSelfRef.top__DOT__pixelData),8);
    bufp->fullIData(oldp+926,(0U),32);
    bufp->fullIData(oldp+927,(1U),32);
    bufp->fullIData(oldp+928,(2U),32);
    bufp->fullIData(oldp+929,(3U),32);
    bufp->fullCData(oldp+930,(0U),5);
    bufp->fullIData(oldp+931,(0x40000U),32);
    __Vtemp_1[0U] = 0x2e686578U;
    __Vtemp_1[1U] = 0x2f52414dU;
    __Vtemp_1[2U] = 0x75646573U;
    __Vtemp_1[3U] = 0x696e636cU;
    __Vtemp_1[4U] = 0x2e2e2fU;
    bufp->fullWData(oldp+932,(__Vtemp_1),152);
    bufp->fullCData(oldp+937,(0U),2);
    bufp->fullCData(oldp+938,(1U),2);
    bufp->fullCData(oldp+939,(2U),2);
    bufp->fullCData(oldp+940,(3U),2);
    bufp->fullIData(oldp+941,(0U),20);
    __Vtemp_2[0U] = 0x2e686578U;
    __Vtemp_2[1U] = 0x74616765U;
    __Vtemp_2[2U] = 0x6f6e6453U;
    __Vtemp_2[3U] = 0x2f736563U;
    __Vtemp_2[4U] = 0x75646573U;
    __Vtemp_2[5U] = 0x696e636cU;
    __Vtemp_2[6U] = 0x2e2e2fU;
    bufp->fullWData(oldp+942,(__Vtemp_2),216);
    bufp->fullSData(oldp+949,(0x60U),16);
    bufp->fullSData(oldp+950,(0x48U),16);
    bufp->fullSData(oldp+951,(0x320U),16);
    bufp->fullSData(oldp+952,(0x18U),16);
    bufp->fullSData(oldp+953,(6U),16);
    bufp->fullSData(oldp+954,(7U),16);
    bufp->fullSData(oldp+955,(0x1e0U),16);
    bufp->fullSData(oldp+956,(3U),16);
    bufp->fullSData(oldp+957,(0x3e0U),16);
    bufp->fullSData(oldp+958,(0x1f0U),16);
    bufp->fullWData(oldp+959,(vlSelfRef.top__DOT__VGA__DOT__charMem),128);
    bufp->fullSData(oldp+963,(vlSelfRef.top__DOT__VGA__DOT__currentPixel),15);
    bufp->fullCData(oldp+964,(vlSelfRef.top__DOT__VGA__DOT__dataOutTxt),8);
    bufp->fullCData(oldp+965,(vlSelfRef.top__DOT__VGA__DOT__dataOutAttr),8);
    bufp->fullIData(oldp+966,(0xf4240U),22);
    bufp->fullIData(oldp+967,(vlSelfRef.top__DOT__counter27M),32);
    bufp->fullIData(oldp+968,(vlSelfRef.top__DOT__bu__DOT__usb_out),32);
    bufp->fullIData(oldp+969,(0x2000000U),32);
    bufp->fullIData(oldp+970,(0x200bff8U),32);
    bufp->fullIData(oldp+971,(0x2004000U),32);
    bufp->fullIData(oldp+972,(0x32U),32);
    bufp->fullIData(oldp+973,(vlSelfRef.top__DOT__cpu_1__DOT__PC_OLD),32);
    bufp->fullIData(oldp+974,(vlSelfRef.top__DOT__cpu_1__DOT__PCplus4),32);
    bufp->fullBit(oldp+975,(vlSelfRef.top__DOT__cpu_1__DOT__bubble_memwb));
    bufp->fullBit(oldp+976,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_immidiate));
    bufp->fullBit(oldp+977,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_immidiate));
    bufp->fullBit(oldp+978,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_immidiate));
    bufp->fullCData(oldp+979,(vlSelfRef.top__DOT__cpu_1__DOT__bypassA),2);
    bufp->fullCData(oldp+980,(vlSelfRef.top__DOT__cpu_1__DOT__bypassB),2);
    bufp->fullIData(oldp+981,(vlSelfRef.top__DOT__cpu_1__DOT__PCPrevious),32);
    bufp->fullIData(oldp+982,(0U),32);
    bufp->fullIData(oldp+983,(1U),32);
    bufp->fullIData(oldp+984,(0x20U),32);
    bufp->fullCData(oldp+985,(0xdU),4);
    bufp->fullIData(oldp+986,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__i),32);
    bufp->fullIData(oldp+987,(4U),32);
    bufp->fullIData(oldp+988,(8U),32);
    bufp->fullIData(oldp+989,(0xcU),32);
    bufp->fullCData(oldp+990,(3U),8);
    bufp->fullCData(oldp+991,(0U),8);
    bufp->fullCData(oldp+992,(1U),8);
    bufp->fullCData(oldp+993,(2U),8);
    bufp->fullCData(oldp+994,(4U),8);
    bufp->fullCData(oldp+995,(5U),8);
    bufp->fullCData(oldp+996,(6U),8);
    bufp->fullCData(oldp+997,(7U),8);
    bufp->fullCData(oldp+998,(8U),8);
    bufp->fullCData(oldp+999,(9U),8);
    bufp->fullCData(oldp+1000,(0xaU),8);
    bufp->fullCData(oldp+1001,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__stored_characters[0]),8);
    bufp->fullCData(oldp+1002,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__stored_characters[1]),8);
    bufp->fullCData(oldp+1003,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__stored_characters[2]),8);
    bufp->fullCData(oldp+1004,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__stored_characters[3]),8);
    bufp->fullIData(oldp+1005,(0x2002U),32);
    bufp->fullIData(oldp+1006,(0xdeadbeafU),32);
    bufp->fullSData(oldp+1007,(0x190U),15);
    bufp->fullIData(oldp+1008,(0x14U),32);
    bufp->fullWData(oldp+1009,(Vtop__ConstPool__CONST_hd74c513e_0),16384);
    bufp->fullIData(oldp+1521,(0U),24);
    bufp->fullIData(oldp+1522,(0xbU),32);
    bufp->fullCData(oldp+1523,(vlSelfRef.top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__din_b),8);
    bufp->fullIData(oldp+1524,(0xeU),32);
    bufp->fullCData(oldp+1525,(vlSelfRef.top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__din_b),8);
    bufp->fullCData(oldp+1526,(vlSelfRef.top__DOT__ppu_inst__DOT__text_Buffer__DOT__din_b),8);
    bufp->fullIData(oldp+1527,(0x1bU),32);
    bufp->fullIData(oldp+1528,(0x1c200U),32);
    bufp->fullIData(oldp+1529,(0x19bfcc0U),32);
    bufp->fullIData(oldp+1530,(0xe9U),32);
}

VL_ATTR_COLD void Vtop___024root__trace_full_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtop___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_full_0\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtop___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtop___024root__trace_full_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_full_0_sub_0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    VlWide<4>/*127:0*/ __Vtemp_1;
    // Body
    bufp->fullIData(oldp+1,(vlSelfRef.top__DOT__RAM__DOT__i),32);
    bufp->fullIData(oldp+2,(vlSelfRef.top__DOT__SecondStageRAM__DOT__i),32);
    bufp->fullIData(oldp+3,(vlSelfRef.top__DOT__mem__DOT__i),32);
    bufp->fullCData(oldp+4,(vlSelfRef.top__DOT__led),6);
    bufp->fullIData(oldp+5,(vlSelfRef.top__DOT__boot_data_out),32);
    bufp->fullIData(oldp+6,(vlSelfRef.top__DOT__boot_instr),32);
    bufp->fullBit(oldp+7,(vlSelfRef.top__DOT__memReady));
    bufp->fullIData(oldp+8,(vlSelfRef.top__DOT__second_stage_instr),32);
    bufp->fullIData(oldp+9,(vlSelfRef.top__DOT__second_stage_mem_out),32);
    bufp->fullIData(oldp+10,(vlSelfRef.top__DOT__program_instr),32);
    bufp->fullIData(oldp+11,(vlSelfRef.top__DOT__program_mem_out),32);
    bufp->fullBit(oldp+12,(vlSelfRef.top__DOT__btn_out));
    bufp->fullBit(oldp+13,(vlSelfRef.top__DOT__error));
    bufp->fullIData(oldp+14,(vlSelfRef.top__DOT__counter),24);
    bufp->fullBit(oldp+15,(vlSelfRef.top__DOT__RAM__DOT__debug_reg));
    bufp->fullBit(oldp+16,(vlSelfRef.top__DOT__SecondStageRAM__DOT__debug_reg));
    bufp->fullBit(oldp+17,(vlSelfRef.top__DOT__bm__DOT__stableDownL));
    bufp->fullBit(oldp+18,(vlSelfRef.top__DOT__bm__DOT__stableUpL));
    bufp->fullBit(oldp+19,(vlSelfRef.top__DOT__bm__DOT__stableLeftL));
    bufp->fullBit(oldp+20,(vlSelfRef.top__DOT__bm__DOT__stableRightL));
    bufp->fullBit(oldp+21,(vlSelfRef.top__DOT__bm__DOT__stableDownR));
    bufp->fullBit(oldp+22,(vlSelfRef.top__DOT__bm__DOT__stableUpR));
    bufp->fullBit(oldp+23,(vlSelfRef.top__DOT__bm__DOT__stableLeftR));
    bufp->fullBit(oldp+24,(vlSelfRef.top__DOT__bm__DOT__stableRightR));
    bufp->fullIData(oldp+25,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__counter),22);
    bufp->fullCData(oldp+26,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__state),2);
    bufp->fullBit(oldp+27,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__btn_last));
    bufp->fullBit(oldp+28,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__newChange));
    bufp->fullBit(oldp+29,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff1));
    bufp->fullBit(oldp+30,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff2));
    bufp->fullBit(oldp+31,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff3));
    bufp->fullIData(oldp+32,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__counter),22);
    bufp->fullCData(oldp+33,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__state),2);
    bufp->fullBit(oldp+34,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__btn_last));
    bufp->fullBit(oldp+35,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__newChange));
    bufp->fullBit(oldp+36,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff1));
    bufp->fullBit(oldp+37,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff2));
    bufp->fullBit(oldp+38,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff3));
    bufp->fullIData(oldp+39,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__counter),22);
    bufp->fullCData(oldp+40,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__state),2);
    bufp->fullBit(oldp+41,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__btn_last));
    bufp->fullBit(oldp+42,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__newChange));
    bufp->fullBit(oldp+43,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff1));
    bufp->fullBit(oldp+44,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff2));
    bufp->fullBit(oldp+45,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff3));
    bufp->fullIData(oldp+46,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__counter),22);
    bufp->fullCData(oldp+47,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__state),2);
    bufp->fullBit(oldp+48,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__btn_last));
    bufp->fullBit(oldp+49,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__newChange));
    bufp->fullBit(oldp+50,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff1));
    bufp->fullBit(oldp+51,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff2));
    bufp->fullBit(oldp+52,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff3));
    bufp->fullIData(oldp+53,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__counter),22);
    bufp->fullCData(oldp+54,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__state),2);
    bufp->fullBit(oldp+55,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__btn_last));
    bufp->fullBit(oldp+56,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__newChange));
    bufp->fullBit(oldp+57,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff1));
    bufp->fullBit(oldp+58,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff2));
    bufp->fullBit(oldp+59,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff3));
    bufp->fullIData(oldp+60,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__counter),22);
    bufp->fullCData(oldp+61,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__state),2);
    bufp->fullBit(oldp+62,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__btn_last));
    bufp->fullBit(oldp+63,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__newChange));
    bufp->fullBit(oldp+64,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff1));
    bufp->fullBit(oldp+65,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff2));
    bufp->fullBit(oldp+66,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff3));
    bufp->fullIData(oldp+67,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__counter),22);
    bufp->fullCData(oldp+68,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__state),2);
    bufp->fullBit(oldp+69,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__btn_last));
    bufp->fullBit(oldp+70,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__newChange));
    bufp->fullBit(oldp+71,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff1));
    bufp->fullBit(oldp+72,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff2));
    bufp->fullBit(oldp+73,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff3));
    bufp->fullIData(oldp+74,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__counter),22);
    bufp->fullCData(oldp+75,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__state),2);
    bufp->fullBit(oldp+76,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__btn_last));
    bufp->fullBit(oldp+77,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__newChange));
    bufp->fullBit(oldp+78,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff1));
    bufp->fullBit(oldp+79,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff2));
    bufp->fullBit(oldp+80,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff3));
    bufp->fullBit(oldp+81,(vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__memStalled));
    bufp->fullCData(oldp+82,(vlSelfRef.top__DOT__mem__DOT__state),2);
    bufp->fullCData(oldp+83,(vlSelfRef.top__DOT__mem__DOT__cnt),5);
    bufp->fullIData(oldp+84,(vlSelfRef.top__DOT__mem__DOT__saved_data_addr),20);
    bufp->fullBit(oldp+85,(vlSelfRef.top__DOT__mem__DOT__debug_reg));
    bufp->fullCData(oldp+86,(vlSelfRef.top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__dout_a),8);
    bufp->fullCData(oldp+87,(vlSelfRef.top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__dout_a),8);
    bufp->fullCData(oldp+88,(vlSelfRef.top__DOT__ppu_inst__DOT__text_Buffer__DOT__dout_a),8);
    bufp->fullWData(oldp+89,(vlSelfRef.top__DOT__text__DOT__charMemory[0]),512);
    bufp->fullWData(oldp+105,(vlSelfRef.top__DOT__text__DOT__charMemory[1]),512);
    bufp->fullWData(oldp+121,(vlSelfRef.top__DOT__text__DOT__charMemory[2]),512);
    bufp->fullWData(oldp+137,(vlSelfRef.top__DOT__text__DOT__charMemory[3]),512);
    bufp->fullWData(oldp+153,(vlSelfRef.top__DOT__text__DOT__charMemory[4]),512);
    bufp->fullWData(oldp+169,(vlSelfRef.top__DOT__text__DOT__charMemory[5]),512);
    bufp->fullWData(oldp+185,(vlSelfRef.top__DOT__text__DOT__charMemory[6]),512);
    bufp->fullWData(oldp+201,(vlSelfRef.top__DOT__text__DOT__charMemory[7]),512);
    bufp->fullWData(oldp+217,(vlSelfRef.top__DOT__text__DOT__charMemory[8]),512);
    bufp->fullWData(oldp+233,(vlSelfRef.top__DOT__text__DOT__charMemory[9]),512);
    bufp->fullWData(oldp+249,(vlSelfRef.top__DOT__text__DOT__charMemory[10]),512);
    bufp->fullWData(oldp+265,(vlSelfRef.top__DOT__text__DOT__charMemory[11]),512);
    bufp->fullWData(oldp+281,(vlSelfRef.top__DOT__text__DOT__charMemory[12]),512);
    bufp->fullWData(oldp+297,(vlSelfRef.top__DOT__text__DOT__charMemory[13]),512);
    bufp->fullWData(oldp+313,(vlSelfRef.top__DOT__text__DOT__charMemory[14]),512);
    bufp->fullWData(oldp+329,(vlSelfRef.top__DOT__text__DOT__charMemory[15]),512);
    bufp->fullWData(oldp+345,(vlSelfRef.top__DOT__text__DOT__charMemory[16]),512);
    bufp->fullWData(oldp+361,(vlSelfRef.top__DOT__text__DOT__charMemory[17]),512);
    bufp->fullWData(oldp+377,(vlSelfRef.top__DOT__text__DOT__charMemory[18]),512);
    bufp->fullWData(oldp+393,(vlSelfRef.top__DOT__text__DOT__charMemory[19]),512);
    bufp->fullIData(oldp+409,(vlSelfRef.top__DOT__text__DOT__i),32);
    bufp->fullIData(oldp+410,(vlSelfRef.top__DOT__text__DOT__j),32);
    bufp->fullBit(oldp+411,(vlSelfRef.top__DOT__uart_controller__DOT__tx_busy));
    bufp->fullSData(oldp+412,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period),16);
    bufp->fullCData(oldp+413,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position),4);
    bufp->fullSData(oldp+414,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte),10);
    bufp->fullCData(oldp+415,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_data_reg),8);
    bufp->fullBit(oldp+416,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run));
    bufp->fullIData(oldp+417,(vlSelfRef.top__DOT__cpu_1__DOT__PC),32);
    bufp->fullBit(oldp+418,(vlSelfRef.top__DOT__ren));
    bufp->fullBit(oldp+419,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite));
    bufp->fullCData(oldp+420,(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector),4);
    bufp->fullCData(oldp+421,(vlSelfRef.top__DOT____Vcellout__cpu_1__debug_error),3);
    bufp->fullIData(oldp+422,((((IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out) 
                                << 0x18U) | (((IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out) 
                                              << 0x10U) 
                                             | (((IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out) 
                                                 << 8U) 
                                                | (IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out))))),32);
    bufp->fullIData(oldp+423,(vlSelfRef.top__DOT__clint_data_out),32);
    bufp->fullBit(oldp+424,(vlSelfRef.top__DOT__clint_inst__DOT__msip));
    bufp->fullBit(oldp+425,(vlSelfRef.top__DOT__mtimer_irq));
    bufp->fullIData(oldp+426,(vlSelfRef.top__DOT__flash_data_out),32);
    bufp->fullIData(oldp+427,(vlSelfRef.top__DOT__counter1M),32);
    bufp->fullIData(oldp+428,(vlSelfRef.top__DOT__counter50M),32);
    bufp->fullIData(oldp+429,((0x3fffffU & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                            >> 2U))),22);
    bufp->fullQData(oldp+430,(vlSelfRef.top__DOT__clint_inst__DOT__mtime),64);
    bufp->fullQData(oldp+432,(vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp),64);
    bufp->fullSData(oldp+434,(vlSelfRef.top__DOT__counter1mhz__DOT__subCounter),11);
    bufp->fullSData(oldp+435,(vlSelfRef.top__DOT__counter50mhz__DOT__subCounter),11);
    bufp->fullCData(oldp+436,(vlSelfRef.top__DOT____Vcellout__cpu_1__debug_error),2);
    bufp->fullIData(oldp+437,(vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr),32);
    bufp->fullIData(oldp+438,(vlSelfRef.top__DOT__cpu_1__DOT__PC_IF2),32);
    bufp->fullIData(oldp+439,(vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC),32);
    bufp->fullIData(oldp+440,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC),32);
    bufp->fullIData(oldp+441,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_PC),32);
    bufp->fullIData(oldp+442,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_PC),32);
    bufp->fullIData(oldp+443,((vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC 
                               + vlSelfRef.top__DOT__cpu_1__DOT__signExtend)),32);
    bufp->fullIData(oldp+444,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr),32);
    bufp->fullIData(oldp+445,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_instr),32);
    bufp->fullIData(oldp+446,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_instr),32);
    bufp->fullIData(oldp+447,(vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr),32);
    bufp->fullBit(oldp+448,(vlSelfRef.top__DOT__cpu_1__DOT__inA_is_PC));
    bufp->fullBit(oldp+449,(vlSelfRef.top__DOT__cpu_1__DOT__branch_taken));
    bufp->fullIData(oldp+450,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_signExtend),32);
    bufp->fullIData(oldp+451,(vlSelfRef.top__DOT__cpu_1__DOT__signExtend),32);
    bufp->fullIData(oldp+452,((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
                                & (((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                              >> 0xfU)) 
                                    == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr)) 
                                   & (0U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr))))
                                ? vlSelfRef.top__DOT__cpu_1__DOT__wRegData
                                : vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data
                               [(0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                          >> 0xfU))])),32);
    bufp->fullIData(oldp+453,((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
                                & (((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                              >> 0x14U)) 
                                    == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr)) 
                                   & (0U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr))))
                                ? vlSelfRef.top__DOT__cpu_1__DOT__wRegData
                                : vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data
                               [(0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                          >> 0x14U))])),32);
    bufp->fullIData(oldp+454,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdA),32);
    bufp->fullIData(oldp+455,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdB),32);
    bufp->fullCData(oldp+456,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3),3);
    bufp->fullCData(oldp+457,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct7),7);
    bufp->fullCData(oldp+458,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2),5);
    bufp->fullCData(oldp+459,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs1),5);
    bufp->fullCData(oldp+460,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd),5);
    bufp->fullBit(oldp+461,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegDst));
    bufp->fullBit(oldp+462,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUSrc));
    bufp->fullBit(oldp+463,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_inA_is_PC));
    bufp->fullBit(oldp+464,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Jump));
    bufp->fullBit(oldp+465,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR));
    bufp->fullCData(oldp+466,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type),2);
    bufp->fullCData(oldp+467,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl),3);
    bufp->fullBit(oldp+468,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead));
    bufp->fullBit(oldp+469,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite));
    bufp->fullBit(oldp+470,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemToReg));
    bufp->fullBit(oldp+471,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegWrite));
    bufp->fullCData(oldp+472,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3),3);
    bufp->fullCData(oldp+473,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3),3);
    bufp->fullCData(oldp+474,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr),5);
    bufp->fullIData(oldp+475,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut),32);
    bufp->fullIData(oldp+476,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_BranchALUOut),32);
    bufp->fullCData(oldp+477,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_reg_type),2);
    bufp->fullBit(oldp+478,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Zero));
    bufp->fullBit(oldp+479,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_JumpJALR));
    bufp->fullIData(oldp+480,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData),32);
    bufp->fullBit(oldp+481,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemRead));
    bufp->fullBit(oldp+482,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWrite));
    bufp->fullBit(oldp+483,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemToReg));
    bufp->fullIData(oldp+484,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut),32);
    bufp->fullCData(oldp+485,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr),5);
    bufp->fullIData(oldp+486,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut),32);
    bufp->fullBit(oldp+487,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_MemToReg));
    bufp->fullBit(oldp+488,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite));
    bufp->fullCData(oldp+489,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_reg_type),2);
    bufp->fullIData(oldp+490,(vlSelfRef.top__DOT__cpu_1__DOT__MemOut),32);
    bufp->fullIData(oldp+491,(vlSelfRef.top__DOT__cpu_1__DOT__wRegData),32);
    bufp->fullBit(oldp+492,(vlSelfRef.top__DOT__cpu_1__DOT__RegDst));
    bufp->fullBit(oldp+493,(vlSelfRef.top__DOT__cpu_1__DOT__MemRead));
    bufp->fullBit(oldp+494,(vlSelfRef.top__DOT__cpu_1__DOT__MemWrite));
    bufp->fullBit(oldp+495,(vlSelfRef.top__DOT__cpu_1__DOT__MemToReg));
    bufp->fullBit(oldp+496,(vlSelfRef.top__DOT__cpu_1__DOT__ALUSrc));
    bufp->fullBit(oldp+497,(vlSelfRef.top__DOT__cpu_1__DOT__PCSrc));
    bufp->fullBit(oldp+498,(vlSelfRef.top__DOT__cpu_1__DOT__RegWrite));
    bufp->fullBit(oldp+499,(vlSelfRef.top__DOT__cpu_1__DOT__Jump));
    bufp->fullBit(oldp+500,(vlSelfRef.top__DOT__cpu_1__DOT__JumpJALR));
    bufp->fullCData(oldp+501,(vlSelfRef.top__DOT__cpu_1__DOT__reg_type),2);
    bufp->fullBit(oldp+502,(vlSelfRef.top__DOT__cpu_1__DOT__Branch));
    bufp->fullBit(oldp+503,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch));
    bufp->fullBit(oldp+504,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch));
    bufp->fullBit(oldp+505,(vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem));
    bufp->fullCData(oldp+506,((0x7fU & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)),7);
    bufp->fullCData(oldp+507,((7U & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                     >> 0xcU))),3);
    bufp->fullCData(oldp+508,(vlSelfRef.top__DOT__cpu_1__DOT__ALUcntrl),3);
    bufp->fullIData(oldp+509,(vlSelfRef.top__DOT__cpu_1__DOT__csr_data),32);
    bufp->fullIData(oldp+510,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_data),32);
    bufp->fullIData(oldp+511,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_data),32);
    bufp->fullSData(oldp+512,((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                               >> 0x14U)),12);
    bufp->fullSData(oldp+513,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr),12);
    bufp->fullSData(oldp+514,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_addr),12);
    bufp->fullSData(oldp+515,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr),12);
    bufp->fullBit(oldp+516,(((1U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__reg_type)) 
                             && ((0U != (3U & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                               >> 0xcU))) 
                                 && ((1U == (3U & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                   >> 0xcU))) 
                                     || (0U != (0x1fU 
                                                & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                   >> 0xfU))))))));
    bufp->fullBit(oldp+517,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_write_allowed));
    bufp->fullBit(oldp+518,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_write_allowed));
    bufp->fullBit(oldp+519,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed));
    bufp->fullBit(oldp+520,(vlSelfRef.top__DOT__cpu_1__DOT__csr_immidiate));
    bufp->fullCData(oldp+521,((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                               >> 0x19U)),7);
    bufp->fullCData(oldp+522,((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                        >> 0xfU))),5);
    bufp->fullCData(oldp+523,((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                        >> 0x14U))),5);
    bufp->fullCData(oldp+524,((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                        >> 7U))),5);
    bufp->fullCData(oldp+525,(((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegDst)
                                ? (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd)
                                : (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2))),5);
    bufp->fullCData(oldp+526,(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp),4);
    bufp->fullIData(oldp+527,(vlSelfRef.top__DOT__cpu_1__DOT__imm_i),32);
    bufp->fullIData(oldp+528,((((- (IData)((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                            >> 0x1fU))) 
                                << 0xcU) | ((0xfe0U 
                                             & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                >> 0x14U)) 
                                            | (0x1fU 
                                               & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                  >> 7U))))),32);
    bufp->fullIData(oldp+529,((((- (IData)((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                            >> 0x1fU))) 
                                << 0xcU) | ((0x800U 
                                             & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                << 4U)) 
                                            | ((0x7e0U 
                                                & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                   >> 0x14U)) 
                                               | (0x1eU 
                                                  & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                     >> 7U)))))),32);
    bufp->fullIData(oldp+530,((0xfffff000U & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)),32);
    bufp->fullIData(oldp+531,((((- (IData)((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                            >> 0x1fU))) 
                                << 0x14U) | (((0xff000U 
                                               & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr) 
                                              | (0x800U 
                                                 & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                    >> 9U))) 
                                             | (0x7feU 
                                                & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                   >> 0x14U))))),32);
    bufp->fullIData(oldp+532,((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                        >> 0x16U))),32);
    bufp->fullBit(oldp+533,(vlSelfRef.top__DOT__cpu_1__DOT__keepDelayInstr));
    bufp->fullBit(oldp+534,(vlSelfRef.top__DOT__cpu_1__DOT__int_taken));
    bufp->fullBit(oldp+535,(vlSelfRef.top__DOT__cpu_1__DOT__syscall));
    bufp->fullBit(oldp+536,(vlSelfRef.top__DOT__cpu_1__DOT__trap_in_ID));
    bufp->fullBit(oldp+537,(vlSelfRef.top__DOT__cpu_1__DOT__write_pc_delayed));
    bufp->fullBit(oldp+538,(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed));
    bufp->fullIData(oldp+539,(vlSelfRef.top__DOT__cpu_1__DOT__newmepc),32);
    bufp->fullWData(oldp+540,(vlSelfRef.top__DOT__cpu_1__DOT__pc_string),2040);
    bufp->fullBit(oldp+604,(vlSelfRef.top__DOT__cpu_1__DOT__pc_jumped));
    bufp->fullBit(oldp+605,(vlSelfRef.top__DOT__cpu_1__DOT__mepc_state));
    bufp->fullBit(oldp+606,(vlSelfRef.top__DOT__cpu_1__DOT__flushPipeline));
    bufp->fullQData(oldp+607,(vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string),64);
    bufp->fullBit(oldp+609,((vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut 
                             >> 0x1fU)));
    bufp->fullIData(oldp+610,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr),32);
    bufp->fullIData(oldp+611,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_addr),32);
    bufp->fullIData(oldp+612,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr),32);
    bufp->fullCData(oldp+613,(vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassA),2);
    bufp->fullCData(oldp+614,(vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassB),2);
    bufp->fullBit(oldp+615,(vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__bubble_memwb));
    bufp->fullQData(oldp+616,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string),64);
    bufp->fullIData(oldp+618,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__i),32);
    bufp->fullIData(oldp+619,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0]),32);
    bufp->fullIData(oldp+620,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[1]),32);
    bufp->fullIData(oldp+621,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[2]),32);
    bufp->fullIData(oldp+622,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[3]),32);
    bufp->fullIData(oldp+623,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[4]),32);
    bufp->fullIData(oldp+624,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[5]),32);
    bufp->fullIData(oldp+625,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[6]),32);
    bufp->fullIData(oldp+626,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[7]),32);
    bufp->fullIData(oldp+627,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[8]),32);
    bufp->fullIData(oldp+628,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[9]),32);
    bufp->fullIData(oldp+629,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[10]),32);
    bufp->fullIData(oldp+630,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[11]),32);
    bufp->fullIData(oldp+631,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[12]),32);
    bufp->fullIData(oldp+632,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[13]),32);
    bufp->fullIData(oldp+633,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[14]),32);
    bufp->fullIData(oldp+634,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[15]),32);
    bufp->fullIData(oldp+635,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[16]),32);
    bufp->fullIData(oldp+636,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[17]),32);
    bufp->fullIData(oldp+637,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[18]),32);
    bufp->fullIData(oldp+638,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[19]),32);
    bufp->fullIData(oldp+639,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[20]),32);
    bufp->fullIData(oldp+640,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[21]),32);
    bufp->fullIData(oldp+641,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[22]),32);
    bufp->fullIData(oldp+642,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[23]),32);
    bufp->fullIData(oldp+643,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[24]),32);
    bufp->fullIData(oldp+644,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[25]),32);
    bufp->fullIData(oldp+645,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[26]),32);
    bufp->fullIData(oldp+646,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[27]),32);
    bufp->fullIData(oldp+647,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[28]),32);
    bufp->fullIData(oldp+648,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[29]),32);
    bufp->fullIData(oldp+649,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[30]),32);
    bufp->fullIData(oldp+650,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[31]),32);
    bufp->fullBit(oldp+651,((1U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__reg_type))));
    bufp->fullIData(oldp+652,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus),32);
    bufp->fullIData(oldp+653,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatush),32);
    bufp->fullIData(oldp+654,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__misa),32);
    bufp->fullIData(oldp+655,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mie),32);
    bufp->fullIData(oldp+656,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtvec),32);
    bufp->fullIData(oldp+657,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mscratch),32);
    bufp->fullIData(oldp+658,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mepc),32);
    bufp->fullIData(oldp+659,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mcause),32);
    bufp->fullIData(oldp+660,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtval),32);
    bufp->fullIData(oldp+661,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mip),32);
    bufp->fullCData(oldp+662,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts),3);
    bufp->fullCData(oldp+663,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count),4);
    bufp->fullWData(oldp+664,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug),320);
    bufp->fullWData(oldp+674,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2),320);
    bufp->fullIData(oldp+684,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg),32);
    bufp->fullCData(oldp+685,((3U & vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut)),2);
    bufp->fullCData(oldp+686,(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__byte_sel),8);
    bufp->fullSData(oldp+687,(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__half),16);
    bufp->fullCData(oldp+688,((3U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)),2);
    bufp->fullIData(oldp+689,((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                               >> 7U)),25);
    bufp->fullCData(oldp+690,(vlSelfRef.top__DOT__flashController__DOT__stateDebug),5);
    bufp->fullBit(oldp+691,(vlSelfRef.top__DOT__ppu_inst__DOT__textEn));
    bufp->fullBit(oldp+692,(vlSelfRef.top__DOT__ppu_inst__DOT__spritesEn));
    bufp->fullCData(oldp+693,(vlSelfRef.top__DOT__ppu_inst__DOT__writeAttr),8);
    bufp->fullCData(oldp+694,(vlSelfRef.top__DOT__ppu_inst__DOT__writeText),8);
    bufp->fullCData(oldp+695,(vlSelfRef.top__DOT__ppu_inst__DOT__writeSprite),8);
    bufp->fullCData(oldp+696,(vlSelfRef.top__DOT__ppu_inst__DOT__spriteID),7);
    bufp->fullIData(oldp+697,(vlSelfRef.top__DOT__ppu_inst__DOT__text_address),32);
    bufp->fullCData(oldp+698,(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf),5);
    bufp->fullSData(oldp+699,(vlSelfRef.top__DOT__ppu_inst__DOT__buffer_counter),9);
    bufp->fullSData(oldp+700,(vlSelfRef.top__DOT__ppu_inst__DOT__obj_line_buffer),16);
    bufp->fullBit(oldp+701,(vlSelfRef.top__DOT__ppu_inst__DOT__hasStarted));
    bufp->fullSData(oldp+702,((0x7ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                                         >> 1U))),11);
    bufp->fullSData(oldp+703,((0x3fffU & ((vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                                           >> 1U) - (IData)(0x800U)))),14);
    bufp->fullCData(oldp+704,(vlSelfRef.top__DOT__uart_controller__DOT__byte_out),8);
    bufp->fullCData(oldp+705,(vlSelfRef.top__DOT__uart_controller__DOT__tx_data),8);
    bufp->fullBit(oldp+706,(vlSelfRef.top__DOT__uart_controller__DOT__ena_tx));
    bufp->fullCData(oldp+707,(vlSelfRef.top__DOT__uart_controller__DOT__ier),8);
    bufp->fullCData(oldp+708,(vlSelfRef.top__DOT__uart_controller__DOT__lcr),8);
    bufp->fullCData(oldp+709,(vlSelfRef.top__DOT__uart_controller__DOT__dll),8);
    bufp->fullCData(oldp+710,(vlSelfRef.top__DOT__uart_controller__DOT__dlm),8);
    bufp->fullBit(oldp+711,((1U & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__lcr) 
                                   >> 7U))));
    bufp->fullCData(oldp+712,(vlSelfRef.top__DOT__R_tmp),5);
    bufp->fullCData(oldp+713,(vlSelfRef.top__DOT__G_tmp),6);
    bufp->fullCData(oldp+714,(vlSelfRef.top__DOT__B_tmp),5);
    bufp->fullCData(oldp+715,(vlSelfRef.top__DOT__ppu_inst__DOT__r),8);
    bufp->fullCData(oldp+716,(vlSelfRef.top__DOT__ppu_inst__DOT__g),8);
    bufp->fullCData(oldp+717,(vlSelfRef.top__DOT__ppu_inst__DOT__b),8);
    bufp->fullBit(oldp+718,(vlSelfRef.top__DOT__cpu_1__DOT__write_idex));
    bufp->fullBit(oldp+719,(vlSelfRef.top__DOT__cpu_1__DOT__write_exmem));
    bufp->fullBit(oldp+720,(vlSelfRef.top__DOT__cpu_1__DOT__write_memwb));
    bufp->fullIData(oldp+721,(vlSelfRef.top__DOT__flashController__DOT__flash_data_out),32);
    bufp->fullCData(oldp+722,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteOut),8);
    bufp->fullCData(oldp+723,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum),8);
    bufp->fullWData(oldp+724,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn),256);
    bufp->fullWData(oldp+732,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer),256);
    bufp->fullBit(oldp+740,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__enabling_done));
    bufp->fullIData(oldp+741,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataToSend),24);
    bufp->fullSData(oldp+742,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__bitsToSend),9);
    bufp->fullQData(oldp+743,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter),33);
    bufp->fullCData(oldp+745,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state),4);
    bufp->fullCData(oldp+746,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__returnState),4);
    bufp->fullBit(oldp+747,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataReady));
    bufp->fullBit(oldp+748,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__write_progress));
    bufp->fullCData(oldp+749,(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr),8);
    bufp->fullCData(oldp+750,(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite),8);
    bufp->fullBit(oldp+751,(vlSelfRef.top__DOT__uart_controller__DOT__rx_rdy));
    bufp->fullCData(oldp+752,(vlSelfRef.top__DOT__uart_controller__DOT__rx_data),8);
    bufp->fullCData(oldp+753,(vlSelfRef.top__DOT__uart_controller__DOT__lsr),8);
    bufp->fullBit(oldp+754,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_sample_pulse));
    bufp->fullSData(oldp+755,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period),16);
    bufp->fullCData(oldp+756,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position),4);
    bufp->fullSData(oldp+757,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte),10);
    bufp->fullBit(oldp+758,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rxd_reg));
    bufp->fullBit(oldp+759,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__last_rxd));
    bufp->fullBit(oldp+760,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy));
    bufp->fullBit(oldp+761,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy));
    bufp->fullBit(oldp+762,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_trigger));
    bufp->fullBit(oldp+763,(vlSelfRef.top__DOT__overflow));
    bufp->fullIData(oldp+764,(vlSelfRef.top__DOT__instr),32);
    bufp->fullIData(oldp+765,(vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData),32);
    bufp->fullSData(oldp+766,(vlSelfRef.top__DOT__xcursor),14);
    bufp->fullSData(oldp+767,(vlSelfRef.top__DOT__ycursor),14);
    bufp->fullBit(oldp+768,((0x320U <= (IData)(vlSelfRef.top__DOT__xcursor))));
    bufp->fullBit(oldp+769,((0x320U >= (IData)(vlSelfRef.top__DOT__xcursor))));
    bufp->fullBit(oldp+770,((0x1e0U >= (IData)(vlSelfRef.top__DOT__ycursor))));
    bufp->fullIData(oldp+771,(vlSelfRef.top__DOT__cpu_1__DOT__PC_new),32);
    bufp->fullIData(oldp+772,(vlSelfRef.top__DOT__cpu_1__DOT__ALUInA),32);
    bufp->fullIData(oldp+773,(vlSelfRef.top__DOT__cpu_1__DOT__ALUInB),32);
    bufp->fullIData(oldp+774,(vlSelfRef.top__DOT__cpu_1__DOT__bypassOutA),32);
    bufp->fullIData(oldp+775,(vlSelfRef.top__DOT__cpu_1__DOT__bypassOutB),32);
    bufp->fullIData(oldp+776,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val),32);
    bufp->fullIData(oldp+777,(vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data),32);
    bufp->fullBit(oldp+778,((0U == vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val)));
    bufp->fullBit(oldp+779,(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid));
    bufp->fullBit(oldp+780,(vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex));
    bufp->fullBit(oldp+781,(vlSelfRef.top__DOT__cpu_1__DOT__write_ifid));
    bufp->fullBit(oldp+782,(vlSelfRef.top__DOT__cpu_1__DOT__write_pc));
    bufp->fullIData(oldp+783,(vlSelfRef.top__DOT__cpu_1__DOT__trap_vector),32);
    bufp->fullBit(oldp+784,(vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting));
    bufp->fullWData(oldp+785,(vlSelfRef.top__DOT__cpu_1__DOT__debug_str),160);
    bufp->fullBit(oldp+790,(vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__suppressTrap));
    bufp->fullCData(oldp+791,(vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state),4);
    bufp->fullQData(oldp+792,((0x1ffffffffULL & ((QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUInA)) 
                                                 - (QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))))),33);
    bufp->fullBit(oldp+794,(vlSelfRef.top__DOT__flashController__DOT__flash_enable));
    bufp->fullBit(oldp+795,(vlSelfRef.top__DOT__flashController__DOT__flash_wen));
    bufp->fullBit(oldp+796,(vlSelfRef.top__DOT__flashController__DOT__flash_ren));
    bufp->fullIData(oldp+797,(vlSelfRef.top__DOT__flashController__DOT__flash_address),24);
    bufp->fullIData(oldp+798,(vlSelfRef.top__DOT__flashController__DOT__flash_data_in),32);
    bufp->fullIData(oldp+799,((0xffffffU & ((IData)(0x500000U) 
                                            + vlSelfRef.top__DOT__flashController__DOT__flash_address))),24);
    bufp->fullIData(oldp+800,((0xffffffU & vlSelfRef.top__DOT__flashController__DOT__flash_data_in)),24);
    bufp->fullSData(oldp+801,((0x3fffU & ((IData)(1U) 
                                          + (IData)(vlSelfRef.top__DOT__xcursor)))),14);
    bufp->fullSData(oldp+802,((0x3fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                          - (IData)(1U)))),14);
    bufp->fullSData(oldp+803,((0x3fffU & VL_SHIFTL_III(14,14,14, 
                                                       (3U 
                                                        & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                           >> 1U)), 1U))),14);
    bufp->fullSData(oldp+804,((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                          >> 1U))),13);
    bufp->fullSData(oldp+805,((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                          >> 1U))),13);
    bufp->fullSData(oldp+806,(vlSelfRef.top__DOT__ppu_inst__DOT__spritePointer),15);
    bufp->fullIData(oldp+807,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[0]),32);
    bufp->fullIData(oldp+808,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[1]),32);
    bufp->fullIData(oldp+809,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[2]),32);
    bufp->fullIData(oldp+810,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[3]),32);
    bufp->fullIData(oldp+811,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[4]),32);
    bufp->fullIData(oldp+812,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[5]),32);
    bufp->fullIData(oldp+813,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[6]),32);
    bufp->fullIData(oldp+814,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[7]),32);
    bufp->fullIData(oldp+815,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[8]),32);
    bufp->fullIData(oldp+816,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[9]),32);
    bufp->fullIData(oldp+817,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[10]),32);
    bufp->fullIData(oldp+818,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[11]),32);
    bufp->fullIData(oldp+819,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[12]),32);
    bufp->fullIData(oldp+820,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[13]),32);
    bufp->fullIData(oldp+821,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[14]),32);
    bufp->fullIData(oldp+822,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[15]),32);
    bufp->fullIData(oldp+823,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[16]),32);
    bufp->fullIData(oldp+824,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[17]),32);
    bufp->fullIData(oldp+825,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[18]),32);
    bufp->fullIData(oldp+826,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[19]),32);
    bufp->fullIData(oldp+827,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                              [0U]),32);
    bufp->fullSData(oldp+828,((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                         [0U] >> 0x10U))),9);
    bufp->fullSData(oldp+829,((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                               [0U])),9);
    bufp->fullSData(oldp+830,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0]),16);
    bufp->fullSData(oldp+831,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[1]),16);
    bufp->fullSData(oldp+832,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[2]),16);
    bufp->fullSData(oldp+833,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[3]),16);
    bufp->fullSData(oldp+834,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[4]),16);
    bufp->fullSData(oldp+835,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[5]),16);
    bufp->fullSData(oldp+836,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[6]),16);
    bufp->fullSData(oldp+837,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[7]),16);
    bufp->fullSData(oldp+838,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[8]),16);
    bufp->fullSData(oldp+839,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[9]),16);
    bufp->fullSData(oldp+840,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[10]),16);
    bufp->fullSData(oldp+841,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[11]),16);
    bufp->fullSData(oldp+842,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[12]),16);
    bufp->fullSData(oldp+843,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[13]),16);
    bufp->fullSData(oldp+844,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[14]),16);
    bufp->fullSData(oldp+845,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[15]),16);
    bufp->fullSData(oldp+846,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[16]),16);
    bufp->fullSData(oldp+847,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[17]),16);
    bufp->fullSData(oldp+848,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[18]),16);
    bufp->fullSData(oldp+849,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[19]),16);
    bufp->fullSData(oldp+850,(vlSelfRef.top__DOT__ppu_inst__DOT__objectPointer),10);
    bufp->fullBit(oldp+851,(vlSelfRef.top__DOT__ppu_inst__DOT__hblank));
    bufp->fullSData(oldp+852,(vlSelfRef.top__DOT__ppu_inst__DOT__data_in_half),16);
    bufp->fullSData(oldp+853,((0x3fffU & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__hblank)
                                           ? (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__objectPointer)
                                           : (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__spritePointer)))),14);
    bufp->fullBit(oldp+854,(vlSelfRef.top__DOT__cpuclk));
    bufp->fullBit(oldp+855,(vlSelfRef.top__DOT__reset));
    bufp->fullCData(oldp+856,(vlSelfRef.top__DOT__state),3);
    bufp->fullIData(oldp+857,(vlSelfRef.top__DOT__txCounter),23);
    bufp->fullBit(oldp+858,(vlSelfRef.top__DOT__flashController__DOT__flash_ready));
    bufp->fullCData(oldp+859,(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt),8);
    __Vtemp_1[0U] = (((0U == (0x1fU & ((IData)(0x3f80U) 
                                       - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U))))
                       ? 0U : (Vtop__ConstPool__CONST_hd74c513e_0[
                               ((IData)(1U) + (0x1ffU 
                                               & (((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                  >> 5U)))] 
                               << ((IData)(0x20U) - 
                                   (0x1fU & ((IData)(0x3f80U) 
                                             - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))))) 
                     | (Vtop__ConstPool__CONST_hd74c513e_0[
                        (0x1ffU & (((IData)(0x3f80U) 
                                    - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                   >> 5U))] >> (0x1fU 
                                                & ((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))));
    __Vtemp_1[1U] = (((0U == (0x1fU & ((IData)(0x3f80U) 
                                       - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U))))
                       ? 0U : (Vtop__ConstPool__CONST_hd74c513e_0[
                               ((IData)(2U) + (0x1ffU 
                                               & (((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                  >> 5U)))] 
                               << ((IData)(0x20U) - 
                                   (0x1fU & ((IData)(0x3f80U) 
                                             - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))))) 
                     | (Vtop__ConstPool__CONST_hd74c513e_0[
                        ((IData)(1U) + (0x1ffU & (((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                  >> 5U)))] 
                        >> (0x1fU & ((IData)(0x3f80U) 
                                     - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))));
    __Vtemp_1[2U] = (((0U == (0x1fU & ((IData)(0x3f80U) 
                                       - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U))))
                       ? 0U : (Vtop__ConstPool__CONST_hd74c513e_0[
                               ((IData)(3U) + (0x1ffU 
                                               & (((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                  >> 5U)))] 
                               << ((IData)(0x20U) - 
                                   (0x1fU & ((IData)(0x3f80U) 
                                             - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))))) 
                     | (Vtop__ConstPool__CONST_hd74c513e_0[
                        ((IData)(2U) + (0x1ffU & (((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                  >> 5U)))] 
                        >> (0x1fU & ((IData)(0x3f80U) 
                                     - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))));
    __Vtemp_1[3U] = (((0U == (0x1fU & ((IData)(0x3f80U) 
                                       - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U))))
                       ? 0U : (Vtop__ConstPool__CONST_hd74c513e_0[
                               ((IData)(4U) + (0x1ffU 
                                               & (((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                  >> 5U)))] 
                               << ((IData)(0x20U) - 
                                   (0x1fU & ((IData)(0x3f80U) 
                                             - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))))) 
                     | (Vtop__ConstPool__CONST_hd74c513e_0[
                        ((IData)(3U) + (0x1ffU & (((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                  >> 5U)))] 
                        >> (0x1fU & ((IData)(0x3f80U) 
                                     - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))));
    bufp->fullWData(oldp+860,(__Vtemp_1),128);
    bufp->fullIData(oldp+864,(vlSelfRef.top__DOT__data_addr),32);
    bufp->fullIData(oldp+865,(vlSelfRef.top__DOT__data_read),32);
    bufp->fullBit(oldp+866,(vlSelfRef.top__DOT__mem_ren));
    bufp->fullBit(oldp+867,(vlSelfRef.top__DOT__mem_wen));
    bufp->fullBit(oldp+868,(vlSelfRef.top__DOT__screen_wen));
    bufp->fullBit(oldp+869,(vlSelfRef.top__DOT__second_stage_mem_ren));
    bufp->fullBit(oldp+870,(vlSelfRef.top__DOT__second_stage_mem_wen));
    bufp->fullBit(oldp+871,(vlSelfRef.top__DOT__program_mem_ren));
    bufp->fullBit(oldp+872,(vlSelfRef.top__DOT__program_mem_wen));
    bufp->fullBit(oldp+873,(vlSelfRef.top__DOT__uart_ren));
    bufp->fullBit(oldp+874,(vlSelfRef.top__DOT__uart_wen));
    bufp->fullBit(oldp+875,(vlSelfRef.top__DOT__clint_ren));
    bufp->fullBit(oldp+876,(vlSelfRef.top__DOT__clint_wen));
    bufp->fullBit(oldp+877,(vlSelfRef.top__DOT__btn_ren));
    bufp->fullBit(oldp+878,(vlSelfRef.top__DOT__flash_ren));
    bufp->fullBit(oldp+879,(vlSelfRef.top__DOT__flash_wen));
    bufp->fullIData(oldp+880,((0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                           >> 2U))),18);
    bufp->fullIData(oldp+881,((0xffU & vlSelfRef.top__DOT__data_addr)),32);
    bufp->fullBit(oldp+882,(vlSelfRef.top__DOT__bu__DOT__usb_ren));
    bufp->fullCData(oldp+883,((0xffU & vlSelfRef.top__DOT__data_addr)),8);
    bufp->fullSData(oldp+884,((0xffffU & vlSelfRef.top__DOT__data_addr)),16);
    bufp->fullSData(oldp+885,((0x7fffU & (vlSelfRef.top__DOT__data_addr 
                                          >> 1U))),16);
    bufp->fullCData(oldp+886,((0x7fU & (vlSelfRef.top__DOT__data_addr 
                                        >> 7U))),7);
    bufp->fullCData(oldp+887,((7U & vlSelfRef.top__DOT__data_addr)),3);
    bufp->fullCData(oldp+888,(vlSelfRef.top__DOT__uart_controller__DOT__data_in),8);
    bufp->fullBit(oldp+889,(vlSelfRef.clk));
    bufp->fullBit(oldp+890,(vlSelfRef.LCD_CLK));
    bufp->fullBit(oldp+891,(vlSelfRef.LCD_HYNC));
    bufp->fullBit(oldp+892,(vlSelfRef.LCD_SYNC));
    bufp->fullBit(oldp+893,(vlSelfRef.LCD_DEN));
    bufp->fullCData(oldp+894,(vlSelfRef.LCD_R),5);
    bufp->fullCData(oldp+895,(vlSelfRef.LCD_G),6);
    bufp->fullCData(oldp+896,(vlSelfRef.LCD_B),5);
    bufp->fullBit(oldp+897,(vlSelfRef.flashMiso));
    bufp->fullBit(oldp+898,(vlSelfRef.flashClk));
    bufp->fullBit(oldp+899,(vlSelfRef.flashMosi));
    bufp->fullBit(oldp+900,(vlSelfRef.flashCs));
    bufp->fullBit(oldp+901,(vlSelfRef.uart_rx));
    bufp->fullBit(oldp+902,(vlSelfRef.uart_tx));
    bufp->fullBit(oldp+903,(vlSelfRef.btnDownL));
    bufp->fullBit(oldp+904,(vlSelfRef.btnUpL));
    bufp->fullBit(oldp+905,(vlSelfRef.btnLeftL));
    bufp->fullBit(oldp+906,(vlSelfRef.btnRightL));
    bufp->fullBit(oldp+907,(vlSelfRef.btnDownR));
    bufp->fullBit(oldp+908,(vlSelfRef.btnUpR));
    bufp->fullBit(oldp+909,(vlSelfRef.btnLeftR));
    bufp->fullBit(oldp+910,(vlSelfRef.btnRightR));
    bufp->fullIData(oldp+911,(((0U == vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr)
                                ? vlSelfRef.top__DOT__instr
                                : (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed) 
                                    | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid))
                                    ? 0U : vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr))),32);
    bufp->fullIData(oldp+912,(((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR)
                                ? vlSelfRef.top__DOT__cpu_1__DOT__bypassOutA
                                : vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC)),32);
    bufp->fullIData(oldp+913,((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR)
                                 ? vlSelfRef.top__DOT__cpu_1__DOT__bypassOutA
                                 : vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC) 
                               + vlSelfRef.top__DOT__cpu_1__DOT__IDEX_signExtend)),32);
    bufp->fullSData(oldp+914,(vlSelfRef.top__DOT__ppu_inst__DOT____Vcellinp__attributes_Buffer__addr_b),15);
    bufp->fullIData(oldp+915,(vlSelfRef.top__DOT__ppu_inst__DOT__i),32);
    bufp->fullSData(oldp+916,(vlSelfRef.top__DOT__ppu_inst__DOT____Vcellinp__attributes_Buffer__addr_b),11);
    bufp->fullCData(oldp+917,((0xffU & ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))
                                         ? vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData
                                         : ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))
                                             ? (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                                >> 8U)
                                             : ((4U 
                                                 & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))
                                                 ? 
                                                (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                                 >> 0x10U)
                                                 : 
                                                (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                                 >> 0x18U)))))),8);
}

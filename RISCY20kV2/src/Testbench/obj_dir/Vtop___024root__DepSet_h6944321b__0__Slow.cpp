// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop___024root.h"

VL_ATTR_COLD void Vtop___024root___eval_static__TOP(Vtop___024root* vlSelf);
VL_ATTR_COLD void Vtop___024root____Vm_traceActivitySetAll(Vtop___024root* vlSelf);

VL_ATTR_COLD void Vtop___024root___eval_static(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_static\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtop___024root___eval_static__TOP(vlSelf);
    Vtop___024root____Vm_traceActivitySetAll(vlSelf);
}

extern const VlWide<8>/*255:0*/ Vtop__ConstPool__CONST_h9e67c271_0;

VL_ATTR_COLD void Vtop___024root___eval_static__TOP(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_static__TOP\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.top__DOT__cpuclk = 1U;
    vlSelfRef.top__DOT__state = 0U;
    vlSelfRef.top__DOT__txCounter = 0U;
    vlSelfRef.top__DOT__counter = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__keepDelayInstr = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__debug_str[0U] = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__debug_str[1U] = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__debug_str[2U] = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__debug_str[3U] = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__debug_str[4U] = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__memStalled = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__suppressTrap = 0U;
    vlSelfRef.top__DOT__mem__DOT__state = 0U;
    vlSelfRef.top__DOT__mem__DOT__cnt = 0U;
    vlSelfRef.top__DOT__mem__DOT__saved_data_addr = 0U;
    vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__state = 0U;
    vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__state = 0U;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__state = 0U;
    vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__state = 0U;
    vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__state = 0U;
    vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__state = 0U;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__state = 0U;
    vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__state = 0U;
    vlSelfRef.top__DOT__flash_data_out = 0xdeadbeafU;
    vlSelfRef.top__DOT__flashController__DOT__flash_enable = 0U;
    vlSelfRef.top__DOT__flashController__DOT__flash_wen = 0U;
    vlSelfRef.top__DOT__flashController__DOT__flash_ren = 0U;
    vlSelfRef.top__DOT__flashController__DOT__flash_address = 0U;
    vlSelfRef.top__DOT__flashController__DOT__flash_data_in = 0U;
    vlSelfRef.top__DOT__flashController__DOT__stateDebug = 0U;
    vlSelfRef.flashClk = 0U;
    vlSelfRef.flashMosi = 0U;
    vlSelfRef.flashCs = 1U;
    vlSelfRef.top__DOT__flashController__DOT__flash_ready = 1U;
    vlSelfRef.top__DOT__flashController__DOT__flash_data_out = 0U;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteOut = 0U;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum = 0U;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[0U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[0U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[1U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[1U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[2U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[2U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[3U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[3U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[4U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[4U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[5U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[5U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[6U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[6U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[7U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[7U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[0U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[0U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[1U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[1U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[2U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[2U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[3U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[3U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[4U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[4U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[5U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[5U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[6U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[6U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[7U] 
        = Vtop__ConstPool__CONST_h9e67c271_0[7U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__enabling_done = 0U;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataToSend = 0U;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__bitsToSend = 0U;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter = 0ULL;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state = 0U;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__returnState = 0U;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataReady = 0U;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__write_progress = 0U;
    vlSelfRef.top__DOT__ppu_inst__DOT__textEn = 1U;
    vlSelfRef.top__DOT__ppu_inst__DOT__spritesEn = 0U;
    vlSelfRef.top__DOT__ppu_inst__DOT__objectPointer = 0U;
    vlSelfRef.top__DOT__ppu_inst__DOT__hblank = 0U;
    vlSelfRef.top__DOT__ppu_inst__DOT__buffer_counter = 0U;
    vlSelfRef.top__DOT__ppu_inst__DOT__hasStarted = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__byte_out = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__tx_data = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__ena_tx = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__ier = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__lcr = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__lsr = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__dll = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__dlm = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__rx_rdy = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__tx_busy = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte = 0x3ffU;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_data_reg = 0xffU;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run = 0U;
    vlSelfRef.top__DOT__counter1mhz__DOT__subCounter = 0U;
    vlSelfRef.top__DOT__counter50mhz__DOT__subCounter = 0U;
}

VL_ATTR_COLD void Vtop___024root___eval_initial__TOP(Vtop___024root* vlSelf);

VL_ATTR_COLD void Vtop___024root___eval_initial(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_initial\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtop___024root___eval_initial__TOP(vlSelf);
    Vtop___024root____Vm_traceActivitySetAll(vlSelf);
    vlSelfRef.__Vtrigprevexpr___TOP__clk__0 = vlSelfRef.clk;
    vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__reset__0 
        = vlSelfRef.top__DOT__reset;
    vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__xcursor__0 
        = vlSelfRef.top__DOT__xcursor;
    vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__ycursor__0 
        = vlSelfRef.top__DOT__ycursor;
}

VL_ATTR_COLD void Vtop___024root___eval_initial__TOP(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_initial__TOP\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlWide<7>/*223:0*/ __Vtemp_2;
    VlWide<7>/*223:0*/ __Vtemp_4;
    VlWide<5>/*159:0*/ __Vtemp_6;
    // Body
    vlSelfRef.top__DOT__mem__DOT__i = 0U;
    while (VL_GTS_III(32, 0x2002U, vlSelfRef.top__DOT__mem__DOT__i)) {
        vlSelfRef.top__DOT__mem__DOT____Vlvbound_h03e4b710__0 = 0U;
        if (VL_LIKELY(((0x2001U >= (0x3fffU & vlSelfRef.top__DOT__mem__DOT__i))))) {
            vlSelfRef.top__DOT__mem__DOT__data_mem[(0x3fffU 
                                                    & vlSelfRef.top__DOT__mem__DOT__i)] 
                = vlSelfRef.top__DOT__mem__DOT____Vlvbound_h03e4b710__0;
        }
        vlSelfRef.top__DOT__mem__DOT__i = ((IData)(1U) 
                                           + vlSelfRef.top__DOT__mem__DOT__i);
    }
    __Vtemp_2[0U] = 0x2e686578U;
    __Vtemp_2[1U] = 0x61646572U;
    __Vtemp_2[2U] = 0x6f746c6fU;
    __Vtemp_2[3U] = 0x732f626fU;
    __Vtemp_2[4U] = 0x6c756465U;
    __Vtemp_2[5U] = 0x2f696e63U;
    __Vtemp_2[6U] = 0x2e2eU;
    VL_READMEM_N(true, 32, 8194, 0, VL_CVT_PACK_STR_NW(7, __Vtemp_2)
                 ,  &(vlSelfRef.top__DOT__mem__DOT__data_mem)
                 , 0, ~0ULL);
    vlSelfRef.top__DOT__SecondStageRAM__DOT__i = 0U;
    while (VL_GTS_III(32, 0x40000U, vlSelfRef.top__DOT__SecondStageRAM__DOT__i)) {
        vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem[(0x3ffffU 
                                                           & vlSelfRef.top__DOT__SecondStageRAM__DOT__i)] = 0U;
        vlSelfRef.top__DOT__SecondStageRAM__DOT__i 
            = ((IData)(1U) + vlSelfRef.top__DOT__SecondStageRAM__DOT__i);
    }
    __Vtemp_4[0U] = 0x2e686578U;
    __Vtemp_4[1U] = 0x74616765U;
    __Vtemp_4[2U] = 0x6f6e6453U;
    __Vtemp_4[3U] = 0x2f736563U;
    __Vtemp_4[4U] = 0x75646573U;
    __Vtemp_4[5U] = 0x696e636cU;
    __Vtemp_4[6U] = 0x2e2e2fU;
    VL_READMEM_N(true, 32, 262144, 0, VL_CVT_PACK_STR_NW(7, __Vtemp_4)
                 ,  &(vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem)
                 , 0, ~0ULL);
    vlSelfRef.top__DOT__RAM__DOT__i = 0U;
    while (VL_GTS_III(32, 0x40000U, vlSelfRef.top__DOT__RAM__DOT__i)) {
        vlSelfRef.top__DOT__RAM__DOT__data_mem[(0x3ffffU 
                                                & vlSelfRef.top__DOT__RAM__DOT__i)] = 0U;
        vlSelfRef.top__DOT__RAM__DOT__i = ((IData)(1U) 
                                           + vlSelfRef.top__DOT__RAM__DOT__i);
    }
    __Vtemp_6[0U] = 0x2e686578U;
    __Vtemp_6[1U] = 0x2f52414dU;
    __Vtemp_6[2U] = 0x75646573U;
    __Vtemp_6[3U] = 0x696e636cU;
    __Vtemp_6[4U] = 0x2e2e2fU;
    VL_READMEM_N(true, 32, 262144, 0, VL_CVT_PACK_STR_NW(5, __Vtemp_6)
                 ,  &(vlSelfRef.top__DOT__RAM__DOT__data_mem)
                 , 0, ~0ULL);
}

VL_ATTR_COLD void Vtop___024root___eval_final(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_final\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__stl(Vtop___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vtop___024root___eval_phase__stl(Vtop___024root* vlSelf);

VL_ATTR_COLD void Vtop___024root___eval_settle(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_settle\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY(((0x64U < __VstlIterCount)))) {
#ifdef VL_DEBUG
            Vtop___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("../include/../soc.v", 9, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vtop___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__stl(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___dump_triggers__stl\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtop___024root___stl_sequent__TOP__0(Vtop___024root* vlSelf);

VL_ATTR_COLD void Vtop___024root___eval_stl(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_stl\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Vtop___024root___stl_sequent__TOP__0(vlSelf);
        Vtop___024root____Vm_traceActivitySetAll(vlSelf);
    }
}

extern const VlUnpacked<CData/*1:0*/, 128> Vtop__ConstPool__TABLE_h971cda5c_0;
extern const VlUnpacked<CData/*0:0*/, 128> Vtop__ConstPool__TABLE_hcf56b5d7_0;
extern const VlUnpacked<CData/*0:0*/, 128> Vtop__ConstPool__TABLE_h6d51447d_0;
extern const VlUnpacked<CData/*0:0*/, 128> Vtop__ConstPool__TABLE_h675ff796_0;
extern const VlUnpacked<CData/*0:0*/, 128> Vtop__ConstPool__TABLE_hbfa03eed_0;
extern const VlUnpacked<CData/*0:0*/, 128> Vtop__ConstPool__TABLE_hff6fb0c7_0;
extern const VlUnpacked<CData/*0:0*/, 128> Vtop__ConstPool__TABLE_h37edc241_0;
extern const VlUnpacked<CData/*0:0*/, 128> Vtop__ConstPool__TABLE_ha12b071a_0;
extern const VlUnpacked<CData/*0:0*/, 128> Vtop__ConstPool__TABLE_h06b9cf07_0;
extern const VlUnpacked<CData/*2:0*/, 128> Vtop__ConstPool__TABLE_h324b8fe8_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtop__ConstPool__TABLE_h8aed268e_0;
extern const VlWide<10>/*319:0*/ Vtop__ConstPool__CONST_h1a3ca879_0;
extern const VlWide<10>/*319:0*/ Vtop__ConstPool__CONST_h3d870c60_0;

VL_ATTR_COLD void Vtop___024root___stl_sequent__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___stl_sequent__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*6:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    CData/*5:0*/ __Vtableidx2;
    __Vtableidx2 = 0;
    // Body
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__bubble_memwb = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__write_idex = 1U;
    vlSelfRef.top__DOT__cpu_1__DOT__write_exmem = 1U;
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__memStalled = 0U;
    vlSelfRef.LCD_CLK = vlSelfRef.clk;
    vlSelfRef.LCD_HYNC = (0x398U <= (IData)(vlSelfRef.top__DOT__xcursor));
    vlSelfRef.LCD_SYNC = (0x1e9U <= (IData)(vlSelfRef.top__DOT__ycursor));
    vlSelfRef.top__DOT__uart_controller__DOT__dlab 
        = (1U & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__lcr) 
                 >> 7U));
    vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string = 0x44454641554c54ULL;
    vlSelfRef.top__DOT__uart_controller__DOT__lsr = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__lsr = 
        ((0xfeU & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__lsr)) 
         | (IData)(vlSelfRef.top__DOT__uart_controller__DOT__rx_rdy));
    vlSelfRef.top__DOT__uart_controller__DOT__lsr = 
        ((0x9fU & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__lsr)) 
         | ((0x40U & ((~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__tx_busy)) 
                      << 6U)) | (0x20U & ((~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__tx_busy)) 
                                          << 5U))));
    vlSelfRef.top__DOT__ppu_inst__DOT____Vcellinp__attributes_Buffer__addr_b 
        = ((0x7c0U & ((IData)(vlSelfRef.top__DOT__ycursor) 
                      << 1U)) | (0x3fU & (((IData)(1U) 
                                           + (IData)(vlSelfRef.top__DOT__xcursor)) 
                                          >> 4U)));
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_trigger 
        = ((~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rxd_reg)) 
           & ((~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy)) 
              & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__last_rxd)));
    vlSelfRef.top__DOT__instr = ((0x1000U >= vlSelfRef.top__DOT__cpu_1__DOT__PC)
                                  ? vlSelfRef.top__DOT__boot_instr
                                  : (((0x800000U <= vlSelfRef.top__DOT__cpu_1__DOT__PC) 
                                      & (0x8fffffU 
                                         > vlSelfRef.top__DOT__cpu_1__DOT__PC))
                                      ? vlSelfRef.top__DOT__second_stage_instr
                                      : (((0x80000000U 
                                           <= vlSelfRef.top__DOT__cpu_1__DOT__PC) 
                                          & (0x808fffffU 
                                             > vlSelfRef.top__DOT__cpu_1__DOT__PC))
                                          ? vlSelfRef.top__DOT__program_instr
                                          : 0U)));
    if ((0U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3))) {
        vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector 
            = (0xfU & ((IData)(1U) << (3U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)));
        vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
            = ((2U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)
                ? ((1U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)
                    ? VL_SHIFTL_III(32,32,32, vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData, 0x18U)
                    : VL_SHIFTL_III(32,32,32, vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData, 0x10U))
                : ((1U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)
                    ? VL_SHIFTL_III(32,32,32, vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData, 8U)
                    : vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData));
    } else if ((1U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3))) {
        vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector 
            = (0xfU & ((2U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)
                        ? 0xcU : 3U));
        vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
            = ((0U == (3U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut))
                ? vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData
                : ((2U == (3U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut))
                    ? VL_SHIFTL_III(32,32,32, vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData, 0x10U)
                    : 0U));
    } else {
        vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector 
            = (0xfU & 0xfU);
        vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
            = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData;
    }
    vlSelfRef.top__DOT__mtimer_irq = (vlSelfRef.top__DOT__clint_inst__DOT__mtime 
                                      >= vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp);
    vlSelfRef.LCD_DEN = ((0x320U >= (IData)(vlSelfRef.top__DOT__xcursor)) 
                         & (0x1e0U >= (IData)(vlSelfRef.top__DOT__ycursor)));
    vlSelfRef.top__DOT__cpu_1__DOT__imm_i = (((- (IData)(
                                                         (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                          >> 0x1fU))) 
                                              << 0xcU) 
                                             | (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                >> 0x14U));
    vlSelfRef.top__DOT__cpu_1__DOT__syscall = ((~ ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Jump) 
                                                   | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR))) 
                                               & (IData)(
                                                         (0x73U 
                                                          == 
                                                          (0x707fU 
                                                           & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr))));
    vlSelfRef.top__DOT__cpu_1__DOT__csr_immidiate = 0U;
    if ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl))) {
        if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl))) {
            if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl))) {
                if ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))) {
                    if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))) {
                        if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))) {
                            vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string = 0x435352524349ULL;
                            vlSelfRef.top__DOT__cpu_1__DOT__ALUOp = 0xeU;
                        } else {
                            vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string = 0x435352525349ULL;
                            vlSelfRef.top__DOT__cpu_1__DOT__ALUOp = 3U;
                        }
                    } else {
                        vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string 
                            = ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                ? 0x435352525749ULL
                                : 0x44454641554c54ULL);
                        vlSelfRef.top__DOT__cpu_1__DOT__ALUOp = 0xfU;
                    }
                } else if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))) {
                    if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))) {
                        vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string = 0x4353525243ULL;
                        vlSelfRef.top__DOT__cpu_1__DOT__ALUOp = 0xeU;
                    } else {
                        vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string = 0x4353525253ULL;
                        vlSelfRef.top__DOT__cpu_1__DOT__ALUOp = 3U;
                    }
                } else {
                    vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string 
                        = ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                            ? 0x4353525257ULL : 0x44454641554c54ULL);
                    vlSelfRef.top__DOT__cpu_1__DOT__ALUOp = 0xfU;
                }
                vlSelfRef.top__DOT__cpu_1__DOT__csr_immidiate 
                    = ((1U & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3) 
                              >> 2U)) && ((1U & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3) 
                                                 >> 1U)) 
                                          || (1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))));
            } else {
                vlSelfRef.top__DOT__cpu_1__DOT__ALUOp = 0U;
            }
        } else {
            vlSelfRef.top__DOT__cpu_1__DOT__ALUOp = 
                ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl))
                  ? ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                      ? ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                          ? ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                              ? 4U : 3U) : ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                             ? ((0U 
                                                 == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct7))
                                                 ? 6U
                                                 : 7U)
                                             : 2U))
                      : ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                          ? ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                              ? 9U : 8U) : ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                             ? 5U : 0U)))
                  : 0xcU);
        }
    } else {
        vlSelfRef.top__DOT__cpu_1__DOT__ALUOp = ((2U 
                                                  & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl))
                                                  ? 
                                                 ((1U 
                                                   & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl))
                                                   ? 0xbU
                                                   : 
                                                  ((4U 
                                                    & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                                    ? 
                                                   ((2U 
                                                     & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                                     ? 0xaU
                                                     : 1U)
                                                    : 1U))
                                                  : 
                                                 ((1U 
                                                   & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl))
                                                   ? 0U
                                                   : 
                                                  ((4U 
                                                    & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                                    ? 
                                                   ((2U 
                                                     & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                                     ? 
                                                    ((1U 
                                                      & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                                      ? 4U
                                                      : 3U)
                                                     : 
                                                    ((1U 
                                                      & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                                      ? 
                                                     ((0U 
                                                       == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct7))
                                                       ? 6U
                                                       : 7U)
                                                      : 2U))
                                                    : 
                                                   ((2U 
                                                     & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                                     ? 
                                                    ((1U 
                                                      & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                                      ? 9U
                                                      : 8U)
                                                     : 
                                                    ((1U 
                                                      & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3))
                                                      ? 5U
                                                      : 
                                                     ((0U 
                                                       == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct7))
                                                       ? 0U
                                                       : 1U))))));
    }
    vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassA 
        = ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWrite) 
             & (0U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr))) 
            & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr) 
               == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs1)))
            ? 2U : ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
                      & (0U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr))) 
                     & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr) 
                        == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs1)))
                     ? 1U : 0U));
    vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassB 
        = ((0U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type))
            ? (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWrite) 
                & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr) 
                   == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2)))
                ? 2U : (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
                         & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr) 
                            == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2)))
                         ? 1U : 0U)) : ((1U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type))
                                         ? ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWrite) 
                                              & (0U 
                                                 != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr))) 
                                             & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_addr) 
                                                == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr)))
                                             ? 2U : 
                                            ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
                                               & (0U 
                                                  != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr))) 
                                              & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr) 
                                                 == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr)))
                                              ? 1U : 0U))
                                         : 0U));
    __Vtableidx1 = (0x7fU & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr);
    vlSelfRef.top__DOT__cpu_1__DOT__reg_type = Vtop__ConstPool__TABLE_h971cda5c_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__RegDst = Vtop__ConstPool__TABLE_hcf56b5d7_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__MemRead = Vtop__ConstPool__TABLE_h6d51447d_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__MemWrite = Vtop__ConstPool__TABLE_h675ff796_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__MemToReg = Vtop__ConstPool__TABLE_h6d51447d_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__ALUSrc = Vtop__ConstPool__TABLE_hbfa03eed_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__RegWrite = Vtop__ConstPool__TABLE_hcf56b5d7_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__Branch = Vtop__ConstPool__TABLE_hff6fb0c7_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__Jump = Vtop__ConstPool__TABLE_h37edc241_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__JumpJALR = Vtop__ConstPool__TABLE_ha12b071a_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__inA_is_PC = Vtop__ConstPool__TABLE_h06b9cf07_0
        [__Vtableidx1];
    vlSelfRef.top__DOT__cpu_1__DOT__ALUcntrl = Vtop__ConstPool__TABLE_h324b8fe8_0
        [__Vtableidx1];
    __Vtableidx2 = ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Zero) 
                      << 5U) | (0x10U & (vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut 
                                         >> 0x1bU))) 
                    | (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3) 
                        << 1U) | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch)));
    vlSelfRef.top__DOT__cpu_1__DOT__branch_taken = 
        Vtop__ConstPool__TABLE_h8aed268e_0[__Vtableidx2];
    vlSelfRef.top__DOT__cpu_1__DOT__write_memwb = 1U;
    if ((1U & (~ (IData)(vlSelfRef.top__DOT__memReady)))) {
        vlSelfRef.top__DOT__cpu_1__DOT__write_idex = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_exmem = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__memStalled = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_memwb = 0U;
    }
    vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__byte_sel 
        = (0xffU & ((0U == (3U & vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut))
                     ? vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut
                     : ((1U == (3U & vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut))
                         ? (vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut 
                            >> 8U) : ((2U == (3U & vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut))
                                       ? (vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut 
                                          >> 0x10U)
                                       : (vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut 
                                          >> 0x18U)))));
    vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__half 
        = (0xffffU & ((2U & vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut)
                       ? (vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut 
                          >> 0x10U) : vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut));
    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mip 
        = (((IData)(vlSelfRef.top__DOT__mtimer_irq) 
            << 7U) | ((IData)(vlSelfRef.top__DOT__clint_inst__DOT__msip) 
                      << 3U));
    vlSelfRef.top__DOT__ppu_inst__DOT__data_in_half 
        = (0xffffU & ((3U == (3U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector)))
                       ? vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData
                       : (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                          >> 0x10U)));
    vlSelfRef.LCD_R = ((1U == (IData)(vlSelfRef.top__DOT____Vcellout__cpu_1__debug_error))
                        ? 0x1fU : ((IData)(vlSelfRef.LCD_DEN)
                                    ? (IData)(vlSelfRef.top__DOT__R_tmp)
                                    : 0U));
    vlSelfRef.LCD_G = ((2U == (IData)(vlSelfRef.top__DOT____Vcellout__cpu_1__debug_error))
                        ? 0x3fU : ((IData)(vlSelfRef.LCD_DEN)
                                    ? (IData)(vlSelfRef.top__DOT__G_tmp)
                                    : 0U));
    vlSelfRef.LCD_B = ((3U == (IData)(vlSelfRef.top__DOT____Vcellout__cpu_1__debug_error))
                        ? 0x1fU : ((IData)(vlSelfRef.LCD_DEN)
                                    ? (IData)(vlSelfRef.top__DOT__B_tmp)
                                    : 0U));
    vlSelfRef.top__DOT__cpu_1__DOT__signExtend = ((0x40U 
                                                   & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                   ? 
                                                  ((0x20U 
                                                    & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                    ? 
                                                   ((0x10U 
                                                     & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                     ? 
                                                    ((8U 
                                                      & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                      ? 0U
                                                      : 
                                                     ((4U 
                                                       & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                       ? 0U
                                                       : 
                                                      ((2U 
                                                        & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                        ? 
                                                       ((1U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         ? 
                                                        (0x1fU 
                                                         & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                            >> 0x16U))
                                                         : 0U)
                                                        : 0U)))
                                                     : 
                                                    ((8U 
                                                      & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                      ? 
                                                     ((4U 
                                                       & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                       ? 
                                                      ((2U 
                                                        & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                        ? 
                                                       ((1U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         ? 
                                                        (((- (IData)(
                                                                     (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                      >> 0x1fU))) 
                                                          << 0x14U) 
                                                         | (((0xff000U 
                                                              & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr) 
                                                             | (0x800U 
                                                                & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                   >> 9U))) 
                                                            | (0x7feU 
                                                               & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                  >> 0x14U))))
                                                         : 0U)
                                                        : 0U)
                                                       : 0U)
                                                      : 
                                                     ((4U 
                                                       & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                       ? 
                                                      ((2U 
                                                        & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                        ? 
                                                       ((1U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         ? vlSelfRef.top__DOT__cpu_1__DOT__imm_i
                                                         : 0U)
                                                        : 0U)
                                                       : 
                                                      ((2U 
                                                        & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                        ? 
                                                       ((1U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         ? 
                                                        (((- (IData)(
                                                                     (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                      >> 0x1fU))) 
                                                          << 0xcU) 
                                                         | ((0x800U 
                                                             & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                << 4U)) 
                                                            | ((0x7e0U 
                                                                & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                   >> 0x14U)) 
                                                               | (0x1eU 
                                                                  & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                     >> 7U)))))
                                                         : 0U)
                                                        : 0U))))
                                                    : 0U)
                                                   : 
                                                  ((0x20U 
                                                    & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                    ? 
                                                   ((0x10U 
                                                     & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                     ? 
                                                    ((8U 
                                                      & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                      ? 0U
                                                      : 
                                                     ((4U 
                                                       & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                       ? 
                                                      ((2U 
                                                        & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                        ? 
                                                       ((1U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         ? 
                                                        (0xfffff000U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         : 0U)
                                                        : 0U)
                                                       : 0U))
                                                     : 
                                                    ((8U 
                                                      & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                      ? 0U
                                                      : 
                                                     ((4U 
                                                       & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                       ? 0U
                                                       : 
                                                      ((2U 
                                                        & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                        ? 
                                                       ((1U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         ? 
                                                        (((- (IData)(
                                                                     (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                      >> 0x1fU))) 
                                                          << 0xcU) 
                                                         | ((0xfe0U 
                                                             & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                >> 0x14U)) 
                                                            | (0x1fU 
                                                               & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                                  >> 7U))))
                                                         : 0U)
                                                        : 0U))))
                                                    : 
                                                   ((0x10U 
                                                     & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                     ? 
                                                    ((8U 
                                                      & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                      ? 0U
                                                      : 
                                                     ((4U 
                                                       & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                       ? 
                                                      ((2U 
                                                        & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                        ? 
                                                       ((1U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         ? 
                                                        (0xfffff000U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         : 0U)
                                                        : 0U)
                                                       : 
                                                      ((2U 
                                                        & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                        ? 
                                                       ((1U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         ? vlSelfRef.top__DOT__cpu_1__DOT__imm_i
                                                         : 0U)
                                                        : 0U)))
                                                     : 
                                                    ((8U 
                                                      & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                      ? 0U
                                                      : 
                                                     ((4U 
                                                       & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                       ? 0U
                                                       : 
                                                      ((2U 
                                                        & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                        ? 
                                                       ((1U 
                                                         & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)
                                                         ? vlSelfRef.top__DOT__cpu_1__DOT__imm_i
                                                         : 0U)
                                                        : 0U))))));
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__suppressTrap = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 1U;
    vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = vlSelfRef.top__DOT__cpu_1__DOT__syscall;
    vlSelfRef.top__DOT__cpu_1__DOT__PCSrc = ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_JumpJALR) 
                                             | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__branch_taken));
    vlSelfRef.top__DOT__ren = ((~ (IData)(vlSelfRef.top__DOT__cpu_1__DOT__branch_taken)) 
                               & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead));
    vlSelfRef.top__DOT__cpu_1__DOT__MemOut = ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3))
                                               ? ((2U 
                                                   & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3))
                                                   ? vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut
                                                   : 
                                                  ((1U 
                                                    & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3))
                                                    ? (IData)(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__half)
                                                    : (IData)(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__byte_sel)))
                                               : ((2U 
                                                   & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3))
                                                   ? vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut
                                                   : 
                                                  ((1U 
                                                    & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3))
                                                    ? 
                                                   (((- (IData)(
                                                                (1U 
                                                                 & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__half) 
                                                                    >> 0xfU)))) 
                                                     << 0x10U) 
                                                    | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__half))
                                                    : 
                                                   (((- (IData)(
                                                                (1U 
                                                                 & ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__byte_sel) 
                                                                    >> 7U)))) 
                                                     << 8U) 
                                                    | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__byte_sel)))));
    vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__write_pc = 1U;
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 0U;
    if (vlSelfRef.top__DOT__memReady) {
        if ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch) 
              | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch)) 
             & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__syscall))) {
            vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__suppressTrap = 1U;
            vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex = 1U;
            vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 2U;
        } else if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MemRead) 
                    & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite))) {
            vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex = 1U;
            vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 3U;
        } else if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead) 
                    & (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd) 
                        == (0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                     >> 0xfU))) | ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd) 
                                                   == 
                                                   (0x1fU 
                                                    & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                       >> 0x14U)))))) {
            vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex = 1U;
            vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 4U;
        } else if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__Jump) 
                    | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__trap_in_ID))) {
            vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 5U;
        }
        if ((1U & (~ (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch) 
                       | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch)) 
                      & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__syscall))))) {
            if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MemRead) 
                 & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite))) {
                vlSelfRef.top__DOT__cpu_1__DOT__write_pc = 0U;
            } else if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead) 
                        & (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd) 
                            == (0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                         >> 0xfU))) 
                           | ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd) 
                              == (0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                           >> 0x14U)))))) {
                vlSelfRef.top__DOT__cpu_1__DOT__write_pc = 0U;
            }
        }
    } else {
        vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_pc = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 1U;
    }
    if (vlSelfRef.top__DOT__cpu_1__DOT__int_taken) {
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__bubble_memwb = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_pc = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 6U;
    } else if (vlSelfRef.top__DOT__cpu_1__DOT__PCSrc) {
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_pc = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 7U;
    }
    vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid = 0U;
    if (vlSelfRef.top__DOT__memReady) {
        if ((1U & (~ (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch) 
                       | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch)) 
                      & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__syscall))))) {
            if ((1U & (~ ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MemRead) 
                          & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite))))) {
                if ((1U & (~ ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead) 
                              & (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd) 
                                  == (0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                               >> 0xfU))) 
                                 | ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd) 
                                    == (0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                 >> 0x14U)))))))) {
                    if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__Jump) 
                         | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__trap_in_ID))) {
                        vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid = 1U;
                    }
                }
            }
        }
    }
    if (vlSelfRef.top__DOT__cpu_1__DOT__int_taken) {
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid = 1U;
    } else if (vlSelfRef.top__DOT__cpu_1__DOT__PCSrc) {
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid = 1U;
    }
    if (vlSelfRef.top__DOT__cpu_1__DOT__flushPipeline) {
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 8U;
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid = 1U;
    }
    vlSelfRef.top__DOT__cpu_1__DOT__wRegData = ((0U 
                                                 == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_reg_type))
                                                 ? 
                                                ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_MemToReg)
                                                  ? vlSelfRef.top__DOT__cpu_1__DOT__MemOut
                                                  : vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut)
                                                 : vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_data);
    vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data = ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__write_memwb)
                                                    ? 
                                                   ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_MemToReg)
                                                     ? vlSelfRef.top__DOT__cpu_1__DOT__MemOut
                                                     : vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut)
                                                    : 0U);
    if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed) 
         & (0x341U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr)))) {
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[0U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[0U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[1U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[1U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[2U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[2U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[3U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[3U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[4U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[4U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[5U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[5U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[6U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[6U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[7U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[7U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[8U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[8U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[9U] 
            = Vtop__ConstPool__CONST_h1a3ca879_0[9U];
        vlSelfRef.top__DOT__cpu_1__DOT__trap_vector 
            = vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data;
    } else {
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[0U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[0U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[1U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[1U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[2U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[2U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[3U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[3U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[4U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[4U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[5U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[5U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[6U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[6U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[7U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[7U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[8U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[8U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2[9U] 
            = Vtop__ConstPool__CONST_h3d870c60_0[9U];
        vlSelfRef.top__DOT__cpu_1__DOT__trap_vector 
            = vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg;
    }
    if ((0U != vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr)) {
        if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed) 
             | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid))) {
            vlSelfRef.top__DOT__cpu_1__DOT__debug_str[0U] = 0x4c452121U;
            vlSelfRef.top__DOT__cpu_1__DOT__debug_str[1U] = 0x425542U;
        } else {
            vlSelfRef.top__DOT__cpu_1__DOT__debug_str[0U] = 0x726d616cU;
            vlSelfRef.top__DOT__cpu_1__DOT__debug_str[1U] = 0x4e6fU;
        }
        vlSelfRef.top__DOT__cpu_1__DOT__debug_str[2U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__debug_str[3U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__debug_str[4U] = 0U;
    }
    vlSelfRef.top__DOT__cpu_1__DOT__bypassOutA = ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__csr_immidiate)
                                                   ? (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs1)
                                                   : 
                                                  ((0U 
                                                    == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassA))
                                                    ? vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdA
                                                    : 
                                                   ((1U 
                                                     == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassA))
                                                     ? 
                                                    ((1U 
                                                      == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type))
                                                      ? vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data
                                                      : vlSelfRef.top__DOT__cpu_1__DOT__wRegData)
                                                     : vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)));
    vlSelfRef.top__DOT__cpu_1__DOT__bypassOutB = ((0U 
                                                   == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassB))
                                                   ? 
                                                  ((1U 
                                                    == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type))
                                                    ? vlSelfRef.top__DOT__cpu_1__DOT__csr_data
                                                    : vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdB)
                                                   : 
                                                  ((1U 
                                                    == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassB))
                                                    ? 
                                                   ((1U 
                                                     == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type))
                                                     ? vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data
                                                     : vlSelfRef.top__DOT__cpu_1__DOT__wRegData)
                                                    : vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut));
    vlSelfRef.top__DOT__cpu_1__DOT__PC_new = (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__int_taken) 
                                               | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__trap_in_ID))
                                               ? vlSelfRef.top__DOT__cpu_1__DOT__trap_vector
                                               : ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__PCSrc)
                                                   ? vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_BranchALUOut
                                                   : 
                                                  ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__Jump)
                                                    ? 
                                                   (vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC 
                                                    + vlSelfRef.top__DOT__cpu_1__DOT__signExtend)
                                                    : 
                                                   (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                                    + 
                                                    ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__flushPipeline)
                                                      ? 0U
                                                      : 4U)))));
    vlSelfRef.top__DOT__cpu_1__DOT__ALUInA = ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_inA_is_PC)
                                               ? vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC
                                               : vlSelfRef.top__DOT__cpu_1__DOT__bypassOutA);
    vlSelfRef.top__DOT__cpu_1__DOT__ALUInB = (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Jump) 
                                               | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR))
                                               ? 4U
                                               : ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUSrc)
                                                   ? vlSelfRef.top__DOT__cpu_1__DOT__IDEX_signExtend
                                                   : vlSelfRef.top__DOT__cpu_1__DOT__bypassOutB));
    if ((8U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
        if ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
            if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
                if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
                    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x50415353ULL;
                    vlSelfRef.top__DOT__overflow = 
                        (1U & (IData)((1ULL & (VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA) 
                                               >> 0x20U))));
                    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                        = (IData)((0x1ffffffffULL & 
                                   VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA)));
                } else {
                    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x434c454152ULL;
                    vlSelfRef.top__DOT__overflow = 
                        (1U & (IData)(((QData)((IData)(
                                                       (1U 
                                                        & ((~ (IData)(
                                                                      (0U 
                                                                       != vlSelfRef.top__DOT__cpu_1__DOT__ALUInA))) 
                                                           & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)))) 
                                       >> 0x20U)));
                    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                        = (1U & ((~ (IData)((0U != vlSelfRef.top__DOT__cpu_1__DOT__ALUInA))) 
                                 & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB));
                }
            } else {
                if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
                    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x44454641554c54ULL;
                    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val = 0U;
                } else {
                    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x4155495043ULL;
                    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                        = (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                           + (0xfffff000U & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB));
                }
                vlSelfRef.top__DOT__overflow = (1U 
                                                & ((1U 
                                                    & (~ (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) 
                                                   && (1U 
                                                       & (IData)(
                                                                 (1ULL 
                                                                  & (((QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUInA)) 
                                                                      + (QData)((IData)(
                                                                                (0xfffff000U 
                                                                                & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)))) 
                                                                     >> 0x20U))))));
            }
        } else if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
            if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
                vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x4c5549ULL;
                vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                    = (0xfffff000U & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB);
            } else {
                vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x53554255ULL;
                vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                    = (IData)((0xffffffffULL & (((QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUInA)) 
                                                 - (QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))) 
                                                >> 1U)));
            }
            vlSelfRef.top__DOT__overflow = (1U & 0U);
        } else if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x534c5455ULL;
            vlSelfRef.top__DOT__overflow = (1U & (IData)(
                                                         ((QData)((IData)(
                                                                          ((vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                                                                            < vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)
                                                                            ? 1U
                                                                            : 0U))) 
                                                          >> 0x20U)));
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                = ((vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                    < vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)
                    ? 1U : 0U);
        } else {
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x534c54ULL;
            vlSelfRef.top__DOT__overflow = (1U & (IData)(
                                                         ((QData)((IData)(
                                                                          (VL_LTS_III(32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA, vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)
                                                                            ? 1U
                                                                            : 0U))) 
                                                          >> 0x20U)));
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                = (VL_LTS_III(32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA, vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)
                    ? 1U : 0U);
        }
    } else if ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
        if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
            if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
                vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x535241ULL;
                vlSelfRef.top__DOT__overflow = (1U 
                                                & (IData)(
                                                          ((QData)((IData)(
                                                                           VL_SHIFTRS_III(32,32,5, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA, 
                                                                                (0x1fU 
                                                                                & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)))) 
                                                           >> 0x20U)));
                vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                    = VL_SHIFTRS_III(32,32,5, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA, 
                                     (0x1fU & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB));
            } else {
                vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x53524cULL;
                vlSelfRef.top__DOT__overflow = (1U 
                                                & (IData)(
                                                          ((QData)((IData)(
                                                                           (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                                                                            >> 
                                                                            (0x1fU 
                                                                             & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)))) 
                                                           >> 0x20U)));
                vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                    = (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                       >> (0x1fU & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB));
            }
        } else if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x534c4cULL;
            vlSelfRef.top__DOT__overflow = (1U & (IData)(
                                                         ((QData)((IData)(
                                                                          (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                                                                           << 
                                                                           (0x1fU 
                                                                            & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)))) 
                                                          >> 0x20U)));
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                = (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                   << (0x1fU & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB));
        } else {
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x414e44ULL;
            vlSelfRef.top__DOT__overflow = (1U & (IData)(
                                                         ((QData)((IData)(
                                                                          (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                                                                           & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))) 
                                                          >> 0x20U)));
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                = (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                   & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB);
        }
    } else if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
        if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x4f52ULL;
            vlSelfRef.top__DOT__overflow = (1U & (IData)(
                                                         ((QData)((IData)(
                                                                          (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                                                                           | vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))) 
                                                          >> 0x20U)));
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                = (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                   | vlSelfRef.top__DOT__cpu_1__DOT__ALUInB);
        } else {
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x584f52ULL;
            vlSelfRef.top__DOT__overflow = (1U & (IData)(
                                                         ((QData)((IData)(
                                                                          (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                                                                           ^ vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))) 
                                                          >> 0x20U)));
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                = (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                   ^ vlSelfRef.top__DOT__cpu_1__DOT__ALUInB);
        }
    } else if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x535542ULL;
        vlSelfRef.top__DOT__overflow = (1U & (IData)(
                                                     (1ULL 
                                                      & ((VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA) 
                                                          - 
                                                          VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)) 
                                                         >> 0x20U))));
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
            = ((IData)((0x1ffffffffULL & VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA))) 
               - (IData)((0x1ffffffffULL & VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))));
    } else {
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = 0x414444ULL;
        vlSelfRef.top__DOT__overflow = (1U & (IData)(
                                                     (1ULL 
                                                      & ((VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA) 
                                                          + 
                                                          VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)) 
                                                         >> 0x20U))));
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
            = ((IData)((0x1ffffffffULL & VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA))) 
               + (IData)((0x1ffffffffULL & VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))));
    }
    vlSelfRef.top__DOT__data_addr = ((IData)(vlSelfRef.top__DOT__ren)
                                      ? vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val
                                      : vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut);
    vlSelfRef.top__DOT__flash_ren = 0U;
    vlSelfRef.top__DOT__second_stage_mem_ren = 0U;
    vlSelfRef.top__DOT__second_stage_mem_wen = 0U;
    vlSelfRef.top__DOT__program_mem_wen = 0U;
    vlSelfRef.top__DOT__mem_ren = 0U;
    vlSelfRef.top__DOT__mem_wen = 0U;
    vlSelfRef.top__DOT__screen_wen = 0U;
    if (((0x88000000U <= vlSelfRef.top__DOT__data_addr) 
         & (0x88100000U > vlSelfRef.top__DOT__data_addr))) {
        vlSelfRef.top__DOT__screen_wen = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite;
        vlSelfRef.top__DOT__data_read = vlSelfRef.top__DOT__boot_data_out;
    } else {
        vlSelfRef.top__DOT__data_read = (((0x89000000U 
                                           <= vlSelfRef.top__DOT__data_addr) 
                                          & (0x89000010U 
                                             > vlSelfRef.top__DOT__data_addr))
                                          ? ((IData)(vlSelfRef.top__DOT__btn_out)
                                              ? 0U : 0x1010101U)
                                          : ((0x8a000000U 
                                              == vlSelfRef.top__DOT__data_addr)
                                              ? vlSelfRef.top__DOT__counter1M
                                              : ((0x8a000004U 
                                                  == vlSelfRef.top__DOT__data_addr)
                                                  ? (IData)(vlSelfRef.top__DOT__counter27M)
                                                  : 
                                                 (((0x8b000000U 
                                                    <= vlSelfRef.top__DOT__data_addr) 
                                                   & (0x8b000f00U 
                                                      > vlSelfRef.top__DOT__data_addr))
                                                   ? vlSelfRef.top__DOT__flash_data_out
                                                   : 
                                                  (((0x800000U 
                                                     <= vlSelfRef.top__DOT__data_addr) 
                                                    & (0x8fffffU 
                                                       > vlSelfRef.top__DOT__data_addr))
                                                    ? vlSelfRef.top__DOT__second_stage_mem_out
                                                    : 
                                                   (((0x80000000U 
                                                      <= vlSelfRef.top__DOT__data_addr) 
                                                     & (0x808fffffU 
                                                        > vlSelfRef.top__DOT__data_addr))
                                                     ? vlSelfRef.top__DOT__program_mem_out
                                                     : 
                                                    (((0x10000000U 
                                                       <= vlSelfRef.top__DOT__data_addr) 
                                                      & (0x1000000fU 
                                                         > vlSelfRef.top__DOT__data_addr))
                                                      ? 
                                                     (((IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out) 
                                                       << 0x18U) 
                                                      | (((IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out) 
                                                          << 0x10U) 
                                                         | (((IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out) 
                                                             << 8U) 
                                                            | (IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out))))
                                                      : 
                                                     (((0x8c000000U 
                                                        <= vlSelfRef.top__DOT__data_addr) 
                                                       & (0x8c000016U 
                                                          > vlSelfRef.top__DOT__data_addr))
                                                       ? vlSelfRef.top__DOT__bu__DOT__usb_out
                                                       : 
                                                      (((0x2000000U 
                                                         <= vlSelfRef.top__DOT__data_addr) 
                                                        & (0x2f00000U 
                                                           > vlSelfRef.top__DOT__data_addr))
                                                        ? vlSelfRef.top__DOT__clint_data_out
                                                        : vlSelfRef.top__DOT__boot_data_out)))))))));
    }
    vlSelfRef.top__DOT__flash_wen = 0U;
    vlSelfRef.top__DOT__btn_ren = 0U;
    vlSelfRef.top__DOT__uart_ren = 0U;
    vlSelfRef.top__DOT__uart_wen = 0U;
    vlSelfRef.top__DOT__bu__DOT__usb_ren = 0U;
    vlSelfRef.top__DOT__program_mem_ren = 0U;
    vlSelfRef.top__DOT__clint_ren = 0U;
    vlSelfRef.top__DOT__clint_wen = 0U;
    if ((1U & (~ ((0x88000000U <= vlSelfRef.top__DOT__data_addr) 
                  & (0x88100000U > vlSelfRef.top__DOT__data_addr))))) {
        if ((1U & (~ ((0x89000000U <= vlSelfRef.top__DOT__data_addr) 
                      & (0x89000010U > vlSelfRef.top__DOT__data_addr))))) {
            if ((0x8a000000U != vlSelfRef.top__DOT__data_addr)) {
                if ((0x8a000004U != vlSelfRef.top__DOT__data_addr)) {
                    if (((0x8b000000U <= vlSelfRef.top__DOT__data_addr) 
                         & (0x8b000f00U > vlSelfRef.top__DOT__data_addr))) {
                        vlSelfRef.top__DOT__flash_ren 
                            = vlSelfRef.top__DOT__ren;
                        vlSelfRef.top__DOT__flash_wen 
                            = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite;
                    }
                    if ((1U & (~ ((0x8b000000U <= vlSelfRef.top__DOT__data_addr) 
                                  & (0x8b000f00U > vlSelfRef.top__DOT__data_addr))))) {
                        if (((0x800000U <= vlSelfRef.top__DOT__data_addr) 
                             & (0x8fffffU > vlSelfRef.top__DOT__data_addr))) {
                            vlSelfRef.top__DOT__second_stage_mem_ren 
                                = vlSelfRef.top__DOT__ren;
                            vlSelfRef.top__DOT__second_stage_mem_wen 
                                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite;
                        }
                        if ((1U & (~ ((0x800000U <= vlSelfRef.top__DOT__data_addr) 
                                      & (0x8fffffU 
                                         > vlSelfRef.top__DOT__data_addr))))) {
                            if (((0x80000000U <= vlSelfRef.top__DOT__data_addr) 
                                 & (0x808fffffU > vlSelfRef.top__DOT__data_addr))) {
                                vlSelfRef.top__DOT__program_mem_wen 
                                    = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite;
                                vlSelfRef.top__DOT__program_mem_ren 
                                    = vlSelfRef.top__DOT__ren;
                            }
                            if ((1U & (~ ((0x80000000U 
                                           <= vlSelfRef.top__DOT__data_addr) 
                                          & (0x808fffffU 
                                             > vlSelfRef.top__DOT__data_addr))))) {
                                if ((1U & (~ ((0x10000000U 
                                               <= vlSelfRef.top__DOT__data_addr) 
                                              & (0x1000000fU 
                                                 > vlSelfRef.top__DOT__data_addr))))) {
                                    if ((1U & (~ ((0x8c000000U 
                                                   <= vlSelfRef.top__DOT__data_addr) 
                                                  & (0x8c000016U 
                                                     > vlSelfRef.top__DOT__data_addr))))) {
                                        if ((1U & (~ 
                                                   ((0x2000000U 
                                                     <= vlSelfRef.top__DOT__data_addr) 
                                                    & (0x2f00000U 
                                                       > vlSelfRef.top__DOT__data_addr))))) {
                                            vlSelfRef.top__DOT__mem_ren 
                                                = vlSelfRef.top__DOT__ren;
                                            vlSelfRef.top__DOT__mem_wen 
                                                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite;
                                        }
                                        if (((0x2000000U 
                                              <= vlSelfRef.top__DOT__data_addr) 
                                             & (0x2f00000U 
                                                > vlSelfRef.top__DOT__data_addr))) {
                                            vlSelfRef.top__DOT__clint_ren 
                                                = vlSelfRef.top__DOT__ren;
                                            vlSelfRef.top__DOT__clint_wen 
                                                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite;
                                        }
                                    }
                                    if (((0x8c000000U 
                                          <= vlSelfRef.top__DOT__data_addr) 
                                         & (0x8c000016U 
                                            > vlSelfRef.top__DOT__data_addr))) {
                                        vlSelfRef.top__DOT__bu__DOT__usb_ren 
                                            = vlSelfRef.top__DOT__ren;
                                    }
                                }
                                if (((0x10000000U <= vlSelfRef.top__DOT__data_addr) 
                                     & (0x1000000fU 
                                        > vlSelfRef.top__DOT__data_addr))) {
                                    vlSelfRef.top__DOT__uart_ren 
                                        = vlSelfRef.top__DOT__ren;
                                    vlSelfRef.top__DOT__uart_wen 
                                        = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (((0x89000000U <= vlSelfRef.top__DOT__data_addr) 
             & (0x89000010U > vlSelfRef.top__DOT__data_addr))) {
            vlSelfRef.top__DOT__btn_ren = vlSelfRef.top__DOT__ren;
        }
    }
    if ((0U == (3U & vlSelfRef.top__DOT__data_addr))) {
        vlSelfRef.top__DOT__uart_controller__DOT__data_in 
            = (0xffU & vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData);
    } else if ((1U == (3U & vlSelfRef.top__DOT__data_addr))) {
        vlSelfRef.top__DOT__uart_controller__DOT__data_in 
            = (0xffU & (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                        >> 8U));
    } else if ((2U == (3U & vlSelfRef.top__DOT__data_addr))) {
        vlSelfRef.top__DOT__uart_controller__DOT__data_in 
            = (0xffU & (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                        >> 0x10U));
    } else if ((3U == (3U & vlSelfRef.top__DOT__data_addr))) {
        vlSelfRef.top__DOT__uart_controller__DOT__data_in 
            = (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
               >> 0x18U);
    }
}

VL_ATTR_COLD void Vtop___024root___eval_triggers__stl(Vtop___024root* vlSelf);

VL_ATTR_COLD bool Vtop___024root___eval_phase__stl(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__stl\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vtop___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        Vtop___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__ico(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___dump_triggers__ico\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VicoTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___dump_triggers__act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge clk)\n");
    }
    if ((2ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @(negedge top.reset)\n");
    }
    if ((4ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 2 is active: @( top.xcursor)\n");
    }
    if ((8ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 3 is active: @( top.ycursor)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__nba(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___dump_triggers__nba\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
    if ((2ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @(negedge top.reset)\n");
    }
    if ((4ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 2 is active: @( top.xcursor)\n");
    }
    if ((8ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 3 is active: @( top.ycursor)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtop___024root____Vm_traceActivitySetAll(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root____Vm_traceActivitySetAll\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vm_traceActivity[0U] = 1U;
    vlSelfRef.__Vm_traceActivity[1U] = 1U;
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
    vlSelfRef.__Vm_traceActivity[4U] = 1U;
    vlSelfRef.__Vm_traceActivity[5U] = 1U;
    vlSelfRef.__Vm_traceActivity[6U] = 1U;
    vlSelfRef.__Vm_traceActivity[7U] = 1U;
}

VL_ATTR_COLD void Vtop___024root___ctor_var_reset(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___ctor_var_reset\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->LCD_CLK = VL_RAND_RESET_I(1);
    vlSelf->LCD_HYNC = VL_RAND_RESET_I(1);
    vlSelf->LCD_SYNC = VL_RAND_RESET_I(1);
    vlSelf->LCD_DEN = VL_RAND_RESET_I(1);
    vlSelf->LCD_R = VL_RAND_RESET_I(5);
    vlSelf->LCD_G = VL_RAND_RESET_I(6);
    vlSelf->LCD_B = VL_RAND_RESET_I(5);
    vlSelf->flashMiso = VL_RAND_RESET_I(1);
    vlSelf->flashClk = VL_RAND_RESET_I(1);
    vlSelf->flashMosi = VL_RAND_RESET_I(1);
    vlSelf->flashCs = VL_RAND_RESET_I(1);
    vlSelf->uart_rx = VL_RAND_RESET_I(1);
    vlSelf->uart_tx = VL_RAND_RESET_I(1);
    vlSelf->btnDownL = VL_RAND_RESET_I(1);
    vlSelf->btnUpL = VL_RAND_RESET_I(1);
    vlSelf->btnLeftL = VL_RAND_RESET_I(1);
    vlSelf->btnRightL = VL_RAND_RESET_I(1);
    vlSelf->btnDownR = VL_RAND_RESET_I(1);
    vlSelf->btnUpR = VL_RAND_RESET_I(1);
    vlSelf->btnLeftR = VL_RAND_RESET_I(1);
    vlSelf->btnRightR = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__led = VL_RAND_RESET_I(6);
    vlSelf->top__DOT__cpuclk = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__overflow = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__reset = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__instr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__data_addr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__data_read = VL_RAND_RESET_I(32);
    vlSelf->top__DOT____Vcellout__cpu_1__debug_error = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__mem_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__mem_wen = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__screen_wen = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__boot_data_out = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__boot_instr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__memReady = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__debug = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__second_stage_instr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__second_stage_mem_out = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__second_stage_mem_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__second_stage_mem_wen = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__program_instr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__program_mem_out = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__program_mem_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__program_mem_wen = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_wen = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__usb_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__usb_data_out = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__clint_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__clint_wen = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__clint_data_out = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__mtimer_irq = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__btn_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__btn_out = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__flash_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__flash_wen = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__flash_data_out = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__pixelAddress = VL_RAND_RESET_I(10);
    vlSelf->top__DOT__pixelData = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__error = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__R_tmp = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__G_tmp = VL_RAND_RESET_I(6);
    vlSelf->top__DOT__B_tmp = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__xcursor = VL_RAND_RESET_I(14);
    vlSelf->top__DOT__ycursor = VL_RAND_RESET_I(14);
    vlSelf->top__DOT__counter1M = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__counter50M = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__state = VL_RAND_RESET_I(3);
    vlSelf->top__DOT__txCounter = VL_RAND_RESET_I(23);
    vlSelf->top__DOT__counter = VL_RAND_RESET_I(24);
    vlSelf->top__DOT__counter27M = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IFID_instr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__PC_IF2 = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__PC = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__PC_OLD = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__IFID_PC = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_PC = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_PC = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_PC = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__PCplus4 = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__PC_new = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_instr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_instr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_instr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__delayed_instr = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__inA_is_PC = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__branch_taken = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_signExtend = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__signExtend = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_rdA = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_rdB = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_funct3 = VL_RAND_RESET_I(3);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_funct7 = VL_RAND_RESET_I(7);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_instr_rs2 = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_instr_rs1 = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_instr_rd = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_RegDst = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_ALUSrc = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_inA_is_PC = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_Jump = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_JumpJALR = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_reg_type = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_ALUcntrl = VL_RAND_RESET_I(3);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_MemRead = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_MemWrite = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_MemToReg = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_RegWrite = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_funct3 = VL_RAND_RESET_I(3);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_funct3 = VL_RAND_RESET_I(3);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_ALUOut = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_BranchALUOut = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_reg_type = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_Zero = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_JumpJALR = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__byte_select_vector = VL_RAND_RESET_I(4);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_MemWriteData = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__MemWriteData = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_MemRead = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_MemWrite = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_RegWrite = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_MemToReg = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_DMemOut = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_ALUOut = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_MemToReg = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_RegWrite = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_reg_type = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__cpu_1__DOT__ALUInA = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__ALUInB = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__bypassOutA = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__bypassOutB = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__MemOut = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__wRegData = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__WB_csr_data = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__RegDst = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__MemRead = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__MemWrite = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__MemToReg = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__ALUSrc = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__PCSrc = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__RegWrite = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__Jump = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__JumpJALR = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__reg_type = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__cpu_1__DOT__Branch = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_Branch = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_Branch = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__bubble_ifid = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__bubble_idex = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__bubble_exmem = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__bubble_memwb = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__write_ifid = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__write_idex = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__write_exmem = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__write_memwb = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__write_pc = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__ALUcntrl = VL_RAND_RESET_I(3);
    vlSelf->top__DOT__cpu_1__DOT__csr_data = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_csr_data = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_csr_data = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_csr_addr = VL_RAND_RESET_I(12);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_csr_addr = VL_RAND_RESET_I(12);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_csr_addr = VL_RAND_RESET_I(12);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_csr_write_allowed = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_csr_write_allowed = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__csr_immidiate = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__IDEX_csr_immidiate = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__EXMEM_csr_immidiate = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__MEMWB_csr_immidiate = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__ALUOp = VL_RAND_RESET_I(4);
    vlSelf->top__DOT__cpu_1__DOT__bypassA = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__cpu_1__DOT__bypassB = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__cpu_1__DOT__imm_i = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__keepDelayInstr = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__int_taken = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__trap_vector = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__syscall = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__trap_waiting = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__trap_in_ID = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(160, vlSelf->top__DOT__cpu_1__DOT__debug_str);
    vlSelf->top__DOT__cpu_1__DOT__write_pc_delayed = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__bubble_ifid_delayed = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__PCPrevious = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__newmepc = VL_RAND_RESET_I(32);
    VL_RAND_RESET_W(2040, vlSelf->top__DOT__cpu_1__DOT__pc_string);
    vlSelf->top__DOT__cpu_1__DOT__pc_jumped = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__mepc_state = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__flushPipeline = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__cpu_regs__DOT__i = VL_RAND_RESET_I(32);
    for (int __Vi0 = 0; __Vi0 < 32; ++__Vi0) {
        vlSelf->top__DOT__cpu_1__DOT__cpu_regs__DOT__data[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__mstatus = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__mstatush = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__misa = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__mie = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__mtvec = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__mscratch = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__mepc = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__mcause = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__mtval = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__mip = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts = VL_RAND_RESET_I(3);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count = VL_RAND_RESET_I(4);
    VL_RAND_RESET_W(320, vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__debug);
    VL_RAND_RESET_W(320, vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__debug2);
    vlSelf->top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__control_stall_id__DOT__bubble_memwb = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__control_stall_id__DOT__memStalled = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__control_stall_id__DOT__suppressTrap = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__cpu_1__DOT__control_stall_id__DOT__state = VL_RAND_RESET_I(4);
    vlSelf->top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string = VL_RAND_RESET_Q(64);
    vlSelf->top__DOT__cpu_1__DOT__control_alu__DOT__debug_string = VL_RAND_RESET_Q(64);
    vlSelf->top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassA = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassB = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__cpu_1__DOT__mem_read_selector__DOT__byte_sel = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__cpu_1__DOT__mem_read_selector__DOT__half = VL_RAND_RESET_I(16);
    vlSelf->top__DOT__bu__DOT__usb_out = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__bu__DOT__usb_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__clint_inst__DOT__msip = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__clint_inst__DOT__mtime = VL_RAND_RESET_Q(64);
    vlSelf->top__DOT__clint_inst__DOT__mtimecmp = VL_RAND_RESET_Q(64);
    for (int __Vi0 = 0; __Vi0 < 8194; ++__Vi0) {
        vlSelf->top__DOT__mem__DOT__data_mem[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->top__DOT__mem__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__mem__DOT__state = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__mem__DOT__cnt = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__mem__DOT__saved_data_addr = VL_RAND_RESET_I(20);
    vlSelf->top__DOT__mem__DOT__debug_reg = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__mem__DOT____Vlvbound_h03e4b710__0 = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__mem__DOT____Vlvbound_h32cf64f4__0 = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__mem__DOT____Vlvbound_h32cddf14__0 = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__mem__DOT____Vlvbound_h32d26f01__0 = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__mem__DOT____Vlvbound_h32d0f0f5__0 = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__bm__DOT__stableDownL = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__stableUpL = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__stableLeftL = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__stableRightL = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__stableDownR = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__stableUpR = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__stableLeftR = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__stableRightR = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownL__DOT__counter = VL_RAND_RESET_I(22);
    vlSelf->top__DOT__bm__DOT__debounceDownL__DOT__state = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__bm__DOT__debounceDownL__DOT__btn_last = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownL__DOT__newChange = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownL__DOT__dff1 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownL__DOT__dff2 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownL__DOT__dff3 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpL__DOT__counter = VL_RAND_RESET_I(22);
    vlSelf->top__DOT__bm__DOT__debounceUpL__DOT__state = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__bm__DOT__debounceUpL__DOT__btn_last = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpL__DOT__newChange = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpL__DOT__dff1 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpL__DOT__dff2 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpL__DOT__dff3 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftL__DOT__counter = VL_RAND_RESET_I(22);
    vlSelf->top__DOT__bm__DOT__debounceLeftL__DOT__state = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__bm__DOT__debounceLeftL__DOT__btn_last = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftL__DOT__newChange = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftL__DOT__dff1 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftL__DOT__dff2 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftL__DOT__dff3 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightL__DOT__counter = VL_RAND_RESET_I(22);
    vlSelf->top__DOT__bm__DOT__debounceRightL__DOT__state = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__bm__DOT__debounceRightL__DOT__btn_last = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightL__DOT__newChange = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightL__DOT__dff1 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightL__DOT__dff2 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightL__DOT__dff3 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownR__DOT__counter = VL_RAND_RESET_I(22);
    vlSelf->top__DOT__bm__DOT__debounceDownR__DOT__state = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__bm__DOT__debounceDownR__DOT__btn_last = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownR__DOT__newChange = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownR__DOT__dff1 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownR__DOT__dff2 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceDownR__DOT__dff3 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpR__DOT__counter = VL_RAND_RESET_I(22);
    vlSelf->top__DOT__bm__DOT__debounceUpR__DOT__state = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__bm__DOT__debounceUpR__DOT__btn_last = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpR__DOT__newChange = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpR__DOT__dff1 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpR__DOT__dff2 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceUpR__DOT__dff3 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftR__DOT__counter = VL_RAND_RESET_I(22);
    vlSelf->top__DOT__bm__DOT__debounceLeftR__DOT__state = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__bm__DOT__debounceLeftR__DOT__btn_last = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftR__DOT__newChange = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftR__DOT__dff1 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftR__DOT__dff2 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceLeftR__DOT__dff3 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightR__DOT__counter = VL_RAND_RESET_I(22);
    vlSelf->top__DOT__bm__DOT__debounceRightR__DOT__state = VL_RAND_RESET_I(2);
    vlSelf->top__DOT__bm__DOT__debounceRightR__DOT__btn_last = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightR__DOT__newChange = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightR__DOT__dff1 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightR__DOT__dff2 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__bm__DOT__debounceRightR__DOT__dff3 = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__flashController__DOT__flash_enable = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__flashController__DOT__flash_wen = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__flashController__DOT__flash_ren = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__flashController__DOT__flash_ready = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__flashController__DOT__flash_address = VL_RAND_RESET_I(24);
    vlSelf->top__DOT__flashController__DOT__flash_data_in = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__flashController__DOT__flash_data_out = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__flashController__DOT__stateDebug = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__currentByteOut = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__currentByteNum = VL_RAND_RESET_I(8);
    VL_RAND_RESET_W(256, vlSelf->top__DOT__flashController__DOT__navigator__DOT__dataIn);
    VL_RAND_RESET_W(256, vlSelf->top__DOT__flashController__DOT__navigator__DOT__dataInBuffer);
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__enabling_done = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__dataToSend = VL_RAND_RESET_I(24);
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__bitsToSend = VL_RAND_RESET_I(9);
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__counter = VL_RAND_RESET_Q(33);
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__state = VL_RAND_RESET_I(4);
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__returnState = VL_RAND_RESET_I(4);
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__dataReady = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 4; ++__Vi0) {
        vlSelf->top__DOT__flashController__DOT__navigator__DOT__stored_characters[__Vi0] = VL_RAND_RESET_I(8);
    }
    vlSelf->top__DOT__flashController__DOT__navigator__DOT__write_progress = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 262144; ++__Vi0) {
        vlSelf->top__DOT__SecondStageRAM__DOT__data_mem[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->top__DOT__SecondStageRAM__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__SecondStageRAM__DOT__debug_reg = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 262144; ++__Vi0) {
        vlSelf->top__DOT__RAM__DOT__data_mem[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->top__DOT__RAM__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__RAM__DOT__debug_reg = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__ppu_inst__DOT__textEn = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__ppu_inst__DOT__spritesEn = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__ppu_inst__DOT__writeAttr = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__writeText = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__writeSprite = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__dataOutTxt = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__dataOutAttr = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__dataOutSprite = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__spritePointer = VL_RAND_RESET_I(15);
    for (int __Vi0 = 0; __Vi0 < 20; ++__Vi0) {
        vlSelf->top__DOT__ppu_inst__DOT__objectAttributes[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->top__DOT__ppu_inst__DOT__spriteID = VL_RAND_RESET_I(7);
    for (int __Vi0 = 0; __Vi0 < 20; ++__Vi0) {
        vlSelf->top__DOT__ppu_inst__DOT__lineBuffer[__Vi0] = VL_RAND_RESET_I(16);
    }
    vlSelf->top__DOT__ppu_inst__DOT__objectPointer = VL_RAND_RESET_I(10);
    vlSelf->top__DOT__ppu_inst__DOT__hblank = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__ppu_inst__DOT__data_in_half = VL_RAND_RESET_I(16);
    vlSelf->top__DOT__ppu_inst__DOT__r = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__g = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__b = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT____Vcellinp__attributes_Buffer__addr_b = VL_RAND_RESET_I(11);
    vlSelf->top__DOT__ppu_inst__DOT__text_address = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__ppu_inst__DOT__cur_sprite_buf = VL_RAND_RESET_I(5);
    vlSelf->top__DOT__ppu_inst__DOT__buffer_counter = VL_RAND_RESET_I(9);
    vlSelf->top__DOT__ppu_inst__DOT__obj_line_buffer = VL_RAND_RESET_I(16);
    vlSelf->top__DOT__ppu_inst__DOT__hasStarted = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__ppu_inst__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__ppu_inst__DOT____Vlvbound_h4cbb62ca__0 = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__ppu_inst__DOT____Vlvbound_hef58082d__0 = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT____Vlvbound_hef58852e__0 = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__text_Buffer__DOT__din_b = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__text_Buffer__DOT__dout_a = VL_RAND_RESET_I(8);
    for (int __Vi0 = 0; __Vi0 < 2048; ++__Vi0) {
        vlSelf->top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem[__Vi0] = VL_RAND_RESET_I(8);
    }
    vlSelf->top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__din_b = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__dout_a = VL_RAND_RESET_I(8);
    for (int __Vi0 = 0; __Vi0 < 2048; ++__Vi0) {
        vlSelf->top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem[__Vi0] = VL_RAND_RESET_I(8);
    }
    vlSelf->top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__din_b = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__dout_a = VL_RAND_RESET_I(8);
    for (int __Vi0 = 0; __Vi0 < 16384; ++__Vi0) {
        vlSelf->top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem[__Vi0] = VL_RAND_RESET_I(8);
    }
    VL_RAND_RESET_W(128, vlSelf->top__DOT__VGA__DOT__charMem);
    vlSelf->top__DOT__VGA__DOT__currentPixel = VL_RAND_RESET_I(15);
    vlSelf->top__DOT__VGA__DOT__dataOutTxt = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__VGA__DOT__dataOutAttr = VL_RAND_RESET_I(8);
    for (int __Vi0 = 0; __Vi0 < 20; ++__Vi0) {
        VL_RAND_RESET_W(512, vlSelf->top__DOT__text__DOT__charMemory[__Vi0]);
    }
    vlSelf->top__DOT__text__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__text__DOT__j = VL_RAND_RESET_I(32);
    vlSelf->top__DOT__text__DOT____Vlvbound_h835a9cca__0 = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__text__DOT____Vlvbound_h5244a299__0 = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__data_in = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__byte_out = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__rx_rdy = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__tx_busy = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__rx_data = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__tx_data = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__ena_tx = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__ier = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__lcr = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__lsr = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__dll = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__dlm = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__dlab = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__rx_sample_pulse = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period = VL_RAND_RESET_I(16);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position = VL_RAND_RESET_I(4);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte = VL_RAND_RESET_I(10);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__rxd_reg = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__last_rxd = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period = VL_RAND_RESET_I(16);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position = VL_RAND_RESET_I(4);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte = VL_RAND_RESET_I(10);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__tx_data_reg = VL_RAND_RESET_I(8);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__uart_controller__DOT__uart_inst__DOT__rx_trigger = VL_RAND_RESET_I(1);
    vlSelf->top__DOT__counter1mhz__DOT__subCounter = VL_RAND_RESET_I(11);
    vlSelf->top__DOT__counter50mhz__DOT__subCounter = VL_RAND_RESET_I(11);
    vlSelf->__Vdly__top__DOT__state = VL_RAND_RESET_I(3);
    vlSelf->__Vdly__top__DOT__txCounter = VL_RAND_RESET_I(23);
    vlSelf->__Vdly__top__DOT__flashController__DOT__navigator__DOT__counter = VL_RAND_RESET_Q(33);
    vlSelf->__Vdly__top__DOT__flashController__DOT__flash_ready = VL_RAND_RESET_I(1);
    vlSelf->__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = VL_RAND_RESET_I(4);
    vlSelf->__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteNum = VL_RAND_RESET_I(8);
    vlSelf->__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteOut = VL_RAND_RESET_I(8);
    vlSelf->__Vdly__top__DOT__flashController__DOT__navigator__DOT__enabling_done = VL_RAND_RESET_I(1);
    vlSelf->__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend = VL_RAND_RESET_I(24);
    vlSelf->__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend = VL_RAND_RESET_I(9);
    vlSelf->__Vdly__top__DOT__flashController__DOT__navigator__DOT__returnState = VL_RAND_RESET_I(4);
    VL_RAND_RESET_W(256, vlSelf->__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn);
    vlSelf->__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period = VL_RAND_RESET_I(16);
    vlSelf->__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy = VL_RAND_RESET_I(1);
    vlSelf->__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position = VL_RAND_RESET_I(4);
    vlSelf->__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte = VL_RAND_RESET_I(10);
    vlSelf->__Vdly__top__DOT__ppu_inst__DOT__hblank = VL_RAND_RESET_I(1);
    vlSelf->__Vdly__top__DOT__ppu_inst__DOT__objectPointer = VL_RAND_RESET_I(10);
    vlSelf->__Vdly__top__DOT__ycursor = VL_RAND_RESET_I(14);
    vlSelf->__Vdly__top__DOT__xcursor = VL_RAND_RESET_I(14);
    vlSelf->__VdlyVal__top__DOT__ppu_inst__DOT__objectAttributes__v0 = VL_RAND_RESET_I(32);
    vlSelf->__VdlyDim0__top__DOT__ppu_inst__DOT__objectAttributes__v0 = VL_RAND_RESET_I(5);
    vlSelf->__VdlySet__top__DOT__ppu_inst__DOT__objectAttributes__v0 = 0;
    vlSelf->__VdlyVal__top__DOT__ppu_inst__DOT__lineBuffer__v0 = VL_RAND_RESET_I(8);
    vlSelf->__VdlyDim0__top__DOT__ppu_inst__DOT__lineBuffer__v0 = VL_RAND_RESET_I(5);
    vlSelf->__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v0 = 0;
    vlSelf->__VdlyVal__top__DOT__ppu_inst__DOT__lineBuffer__v1 = VL_RAND_RESET_I(8);
    vlSelf->__VdlyDim0__top__DOT__ppu_inst__DOT__lineBuffer__v1 = VL_RAND_RESET_I(5);
    vlSelf->__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v1 = 0;
    vlSelf->__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v2 = 0;
    vlSelf->__VdlyVal__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0 = VL_RAND_RESET_I(8);
    vlSelf->__VdlyDim0__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0 = VL_RAND_RESET_I(11);
    vlSelf->__VdlySet__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0 = 0;
    vlSelf->__VdlyVal__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0 = VL_RAND_RESET_I(8);
    vlSelf->__VdlyDim0__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0 = VL_RAND_RESET_I(11);
    vlSelf->__VdlySet__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0 = 0;
    vlSelf->__VdlyVal__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0 = VL_RAND_RESET_I(8);
    vlSelf->__VdlyDim0__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0 = VL_RAND_RESET_I(14);
    vlSelf->__VdlySet__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0 = 0;
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__top__DOT__reset__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__top__DOT__xcursor__0 = VL_RAND_RESET_I(14);
    vlSelf->__Vtrigprevexpr___TOP__top__DOT__ycursor__0 = VL_RAND_RESET_I(14);
    vlSelf->__VactDidInit = 0;
    for (int __Vi0 = 0; __Vi0 < 8; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}

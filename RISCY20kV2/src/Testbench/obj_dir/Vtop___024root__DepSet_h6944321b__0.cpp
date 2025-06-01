// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop___024root.h"

void Vtop___024root___ico_sequent__TOP__0(Vtop___024root* vlSelf);

void Vtop___024root___eval_ico(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_ico\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        Vtop___024root___ico_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vtop___024root___ico_sequent__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___ico_sequent__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.LCD_CLK = vlSelfRef.clk;
}

void Vtop___024root___eval_triggers__ico(Vtop___024root* vlSelf);

bool Vtop___024root___eval_phase__ico(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__ico\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vtop___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelfRef.__VicoTriggered.any();
    if (__VicoExecute) {
        Vtop___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vtop___024root___eval_act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vtop___024root___nba_sequent__TOP__0(Vtop___024root* vlSelf);
void Vtop___024root___nba_sequent__TOP__1(Vtop___024root* vlSelf);
void Vtop___024root___nba_sequent__TOP__2(Vtop___024root* vlSelf);
void Vtop___024root___nba_sequent__TOP__3(Vtop___024root* vlSelf);
void Vtop___024root___nba_comb__TOP__0(Vtop___024root* vlSelf);
void Vtop___024root___nba_sequent__TOP__4(Vtop___024root* vlSelf);
void Vtop___024root___nba_sequent__TOP__5(Vtop___024root* vlSelf);
void Vtop___024root___nba_comb__TOP__1(Vtop___024root* vlSelf);
void Vtop___024root___nba_comb__TOP__2(Vtop___024root* vlSelf);
void Vtop___024root___nba_sequent__TOP__6(Vtop___024root* vlSelf);

void Vtop___024root___eval_nba(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_nba\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[1U] = 1U;
    }
    if ((3ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__1(vlSelf);
        vlSelfRef.__Vm_traceActivity[2U] = 1U;
    }
    if ((0xcULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__2(vlSelf);
        vlSelfRef.__Vm_traceActivity[3U] = 1U;
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__3(vlSelf);
        vlSelfRef.__Vm_traceActivity[4U] = 1U;
    }
    if ((3ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_comb__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[5U] = 1U;
        Vtop___024root___nba_sequent__TOP__4(vlSelf);
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__5(vlSelf);
        vlSelfRef.__Vm_traceActivity[6U] = 1U;
    }
    if ((3ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_comb__TOP__1(vlSelf);
        vlSelfRef.__Vm_traceActivity[7U] = 1U;
    }
    if ((0xfULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_comb__TOP__2(vlSelf);
    }
    if ((3ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__6(vlSelf);
    }
}

extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h93e1b771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h9ce1b771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h92e2b771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h93e0b671_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h93e1b476_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hc6a1b771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h5d60f771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h9dd3d931_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h93e07670_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h6771b771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h0b900771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h4d5966c1_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h93f0a7d0_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h0a8db771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h1d004b71_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h601f4f45_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_ha93a61c2_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h04f8b771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h6760fa71_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hfb785ec6_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h9b237c8e_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h7e4d7771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h26805e31_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h265ab958_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hb8c9124a_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hfa444771_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h92ca10e1_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h1f268061_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hd8595685_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_he8399b71_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hf383335d_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hf0a16d64_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hea8ddc03_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h71483271_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h1ac87f0c_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h39784e77_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h288d9c73_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_he51479b1_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hc5fc14f1_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h70e51a9c_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hd7033914_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h963abec1_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h84b9a45e_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h9f6cc61b_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h97f09bff_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hece5513d_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h250fab18_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_he114e7a6_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h0d48c9e8_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_haf667354_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hcaf73c45_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h16ca6af0_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h7716c8fa_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h584de1ec_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h8d6132fe_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hebc2e2d1_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h10cd3eaa_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h61961d41_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hb40075c3_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hd0a50729_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h766e6cb5_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h74e18cff_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_h69fddf3d_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hd224d49b_0;
extern const VlWide<16>/*511:0*/ Vtop__ConstPool__CONST_hffd88623_0;

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*4:0*/ __Vdly__top__DOT__mem__DOT__cnt;
    __Vdly__top__DOT__mem__DOT__cnt = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__dff3 = 0;
    CData/*1:0*/ __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__state = 0;
    IData/*21:0*/ __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__counter = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__btn_last = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__dff3 = 0;
    CData/*1:0*/ __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__state = 0;
    IData/*21:0*/ __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__counter = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__btn_last = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__dff3 = 0;
    CData/*1:0*/ __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__state = 0;
    IData/*21:0*/ __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__counter = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__btn_last = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__dff3 = 0;
    CData/*1:0*/ __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__state = 0;
    IData/*21:0*/ __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__counter = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__btn_last = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__dff3 = 0;
    CData/*1:0*/ __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__state = 0;
    IData/*21:0*/ __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__counter = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__btn_last = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__dff3 = 0;
    CData/*1:0*/ __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__state = 0;
    IData/*21:0*/ __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__counter = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__btn_last = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__dff3 = 0;
    CData/*1:0*/ __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__state = 0;
    IData/*21:0*/ __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__counter = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__btn_last = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__dff3 = 0;
    CData/*1:0*/ __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__state = 0;
    IData/*21:0*/ __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__counter = 0;
    CData/*0:0*/ __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__btn_last = 0;
    CData/*0:0*/ __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy = 0;
    CData/*0:0*/ __Vdly__top__DOT__uart_controller__DOT__tx_busy;
    __Vdly__top__DOT__uart_controller__DOT__tx_busy = 0;
    CData/*0:0*/ __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run = 0;
    SData/*9:0*/ __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte = 0;
    SData/*15:0*/ __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period = 0;
    CData/*3:0*/ __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__mem__DOT__data_mem__v0;
    __VdlyVal__top__DOT__mem__DOT__data_mem__v0 = 0;
    SData/*13:0*/ __VdlyDim0__top__DOT__mem__DOT__data_mem__v0;
    __VdlyDim0__top__DOT__mem__DOT__data_mem__v0 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__mem__DOT__data_mem__v0;
    __VdlySet__top__DOT__mem__DOT__data_mem__v0 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__mem__DOT__data_mem__v1;
    __VdlyVal__top__DOT__mem__DOT__data_mem__v1 = 0;
    SData/*13:0*/ __VdlyDim0__top__DOT__mem__DOT__data_mem__v1;
    __VdlyDim0__top__DOT__mem__DOT__data_mem__v1 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__mem__DOT__data_mem__v1;
    __VdlySet__top__DOT__mem__DOT__data_mem__v1 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__mem__DOT__data_mem__v2;
    __VdlyVal__top__DOT__mem__DOT__data_mem__v2 = 0;
    SData/*13:0*/ __VdlyDim0__top__DOT__mem__DOT__data_mem__v2;
    __VdlyDim0__top__DOT__mem__DOT__data_mem__v2 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__mem__DOT__data_mem__v2;
    __VdlySet__top__DOT__mem__DOT__data_mem__v2 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__mem__DOT__data_mem__v3;
    __VdlyVal__top__DOT__mem__DOT__data_mem__v3 = 0;
    SData/*13:0*/ __VdlyDim0__top__DOT__mem__DOT__data_mem__v3;
    __VdlyDim0__top__DOT__mem__DOT__data_mem__v3 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__mem__DOT__data_mem__v3;
    __VdlySet__top__DOT__mem__DOT__data_mem__v3 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v0;
    __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v0 = 0;
    IData/*17:0*/ __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v0;
    __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v0 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v0;
    __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v0 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v1;
    __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v1 = 0;
    IData/*17:0*/ __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v1;
    __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v1 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v1;
    __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v1 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v2;
    __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v2 = 0;
    IData/*17:0*/ __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v2;
    __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v2 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v2;
    __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v2 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v3;
    __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v3 = 0;
    IData/*17:0*/ __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v3;
    __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v3 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v3;
    __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v3 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__RAM__DOT__data_mem__v0;
    __VdlyVal__top__DOT__RAM__DOT__data_mem__v0 = 0;
    IData/*17:0*/ __VdlyDim0__top__DOT__RAM__DOT__data_mem__v0;
    __VdlyDim0__top__DOT__RAM__DOT__data_mem__v0 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__RAM__DOT__data_mem__v0;
    __VdlySet__top__DOT__RAM__DOT__data_mem__v0 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__RAM__DOT__data_mem__v1;
    __VdlyVal__top__DOT__RAM__DOT__data_mem__v1 = 0;
    IData/*17:0*/ __VdlyDim0__top__DOT__RAM__DOT__data_mem__v1;
    __VdlyDim0__top__DOT__RAM__DOT__data_mem__v1 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__RAM__DOT__data_mem__v1;
    __VdlySet__top__DOT__RAM__DOT__data_mem__v1 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__RAM__DOT__data_mem__v2;
    __VdlyVal__top__DOT__RAM__DOT__data_mem__v2 = 0;
    IData/*17:0*/ __VdlyDim0__top__DOT__RAM__DOT__data_mem__v2;
    __VdlyDim0__top__DOT__RAM__DOT__data_mem__v2 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__RAM__DOT__data_mem__v2;
    __VdlySet__top__DOT__RAM__DOT__data_mem__v2 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__RAM__DOT__data_mem__v3;
    __VdlyVal__top__DOT__RAM__DOT__data_mem__v3 = 0;
    IData/*17:0*/ __VdlyDim0__top__DOT__RAM__DOT__data_mem__v3;
    __VdlyDim0__top__DOT__RAM__DOT__data_mem__v3 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__RAM__DOT__data_mem__v3;
    __VdlySet__top__DOT__RAM__DOT__data_mem__v3 = 0;
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v0;
    __VdlyVal__top__DOT__text__DOT__charMemory__v0 = 0;
    SData/*8:0*/ __VdlyLsb__top__DOT__text__DOT__charMemory__v0;
    __VdlyLsb__top__DOT__text__DOT__charMemory__v0 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v0;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v0 = 0;
    VlWide<16>/*511:0*/ __VdlyMask__top__DOT__text__DOT__charMemory__v0;
    VL_ZERO_W(512, __VdlyMask__top__DOT__text__DOT__charMemory__v0);
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v0;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v0);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v1;
    __VdlyVal__top__DOT__text__DOT__charMemory__v1 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v1;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v1 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v1;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v1);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v2;
    __VdlyVal__top__DOT__text__DOT__charMemory__v2 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v2;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v2 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v2;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v2);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v3;
    __VdlyVal__top__DOT__text__DOT__charMemory__v3 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v3;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v3 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v3;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v3);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v4;
    __VdlyVal__top__DOT__text__DOT__charMemory__v4 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v4;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v4 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v4;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v4);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v5;
    __VdlyVal__top__DOT__text__DOT__charMemory__v5 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v5;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v5 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v5;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v5);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v6;
    __VdlyVal__top__DOT__text__DOT__charMemory__v6 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v6;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v6 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v6;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v6);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v7;
    __VdlyVal__top__DOT__text__DOT__charMemory__v7 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v7;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v7 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v7;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v7);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v8;
    __VdlyVal__top__DOT__text__DOT__charMemory__v8 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v8;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v8 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v8;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v8);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v9;
    __VdlyVal__top__DOT__text__DOT__charMemory__v9 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v9;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v9 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v9;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v9);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v10;
    __VdlyVal__top__DOT__text__DOT__charMemory__v10 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v10;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v10 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v10;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v10);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v11;
    __VdlyVal__top__DOT__text__DOT__charMemory__v11 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v11;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v11 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v11;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v11);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v12;
    __VdlyVal__top__DOT__text__DOT__charMemory__v12 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v12;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v12 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v12;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v12);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v13;
    __VdlyVal__top__DOT__text__DOT__charMemory__v13 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v13;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v13 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v13;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v13);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v14;
    __VdlyVal__top__DOT__text__DOT__charMemory__v14 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v14;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v14 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v14;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v14);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v15;
    __VdlyVal__top__DOT__text__DOT__charMemory__v15 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v15;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v15 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v15;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v15);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v16;
    __VdlyVal__top__DOT__text__DOT__charMemory__v16 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v16;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v16 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v16;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v16);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v17;
    __VdlyVal__top__DOT__text__DOT__charMemory__v17 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v17;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v17 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v17;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v17);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v18;
    __VdlyVal__top__DOT__text__DOT__charMemory__v18 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v18;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v18 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v18;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v18);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v19;
    __VdlyVal__top__DOT__text__DOT__charMemory__v19 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v19;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v19 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v19;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v19);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v20;
    __VdlyVal__top__DOT__text__DOT__charMemory__v20 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v20;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v20 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v20;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v20);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v21;
    __VdlyVal__top__DOT__text__DOT__charMemory__v21 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v21;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v21 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v21;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v21);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v22;
    __VdlyVal__top__DOT__text__DOT__charMemory__v22 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v22;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v22 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v22;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v22);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v23;
    __VdlyVal__top__DOT__text__DOT__charMemory__v23 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v23;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v23 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v23;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v23);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v24;
    __VdlyVal__top__DOT__text__DOT__charMemory__v24 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v24;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v24 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v24;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v24);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v25;
    __VdlyVal__top__DOT__text__DOT__charMemory__v25 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v25;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v25 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v25;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v25);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v26;
    __VdlyVal__top__DOT__text__DOT__charMemory__v26 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v26;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v26 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v26;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v26);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v27;
    __VdlyVal__top__DOT__text__DOT__charMemory__v27 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v27;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v27 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v27;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v27);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v28;
    __VdlyVal__top__DOT__text__DOT__charMemory__v28 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v28;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v28 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v28;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v28);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v29;
    __VdlyVal__top__DOT__text__DOT__charMemory__v29 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v29;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v29 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v29;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v29);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v30;
    __VdlyVal__top__DOT__text__DOT__charMemory__v30 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v30;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v30 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v30;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v30);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v31;
    __VdlyVal__top__DOT__text__DOT__charMemory__v31 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v31;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v31 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v31;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v31);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v32;
    __VdlyVal__top__DOT__text__DOT__charMemory__v32 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v32;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v32 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v32;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v32);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v33;
    __VdlyVal__top__DOT__text__DOT__charMemory__v33 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v33;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v33 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v33;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v33);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v34;
    __VdlyVal__top__DOT__text__DOT__charMemory__v34 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v34;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v34 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v34;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v34);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v35;
    __VdlyVal__top__DOT__text__DOT__charMemory__v35 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v35;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v35 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v35;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v35);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v36;
    __VdlyVal__top__DOT__text__DOT__charMemory__v36 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v36;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v36 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v36;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v36);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v37;
    __VdlyVal__top__DOT__text__DOT__charMemory__v37 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v37;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v37 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v37;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v37);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v38;
    __VdlyVal__top__DOT__text__DOT__charMemory__v38 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v38;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v38 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v38;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v38);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v39;
    __VdlyVal__top__DOT__text__DOT__charMemory__v39 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v39;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v39 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v39;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v39);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v40;
    __VdlyVal__top__DOT__text__DOT__charMemory__v40 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v40;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v40 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v40;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v40);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v41;
    __VdlyVal__top__DOT__text__DOT__charMemory__v41 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v41;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v41 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v41;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v41);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v42;
    __VdlyVal__top__DOT__text__DOT__charMemory__v42 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v42;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v42 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v42;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v42);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v43;
    __VdlyVal__top__DOT__text__DOT__charMemory__v43 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v43;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v43 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v43;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v43);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v44;
    __VdlyVal__top__DOT__text__DOT__charMemory__v44 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v44;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v44 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v44;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v44);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v45;
    __VdlyVal__top__DOT__text__DOT__charMemory__v45 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v45;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v45 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v45;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v45);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v46;
    __VdlyVal__top__DOT__text__DOT__charMemory__v46 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v46;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v46 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v46;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v46);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v47;
    __VdlyVal__top__DOT__text__DOT__charMemory__v47 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v47;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v47 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v47;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v47);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v48;
    __VdlyVal__top__DOT__text__DOT__charMemory__v48 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v48;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v48 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v48;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v48);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v49;
    __VdlyVal__top__DOT__text__DOT__charMemory__v49 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v49;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v49 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v49;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v49);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v50;
    __VdlyVal__top__DOT__text__DOT__charMemory__v50 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v50;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v50 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v50;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v50);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v51;
    __VdlyVal__top__DOT__text__DOT__charMemory__v51 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v51;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v51 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v51;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v51);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v52;
    __VdlyVal__top__DOT__text__DOT__charMemory__v52 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v52;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v52 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v52;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v52);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v53;
    __VdlyVal__top__DOT__text__DOT__charMemory__v53 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v53;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v53 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v53;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v53);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v54;
    __VdlyVal__top__DOT__text__DOT__charMemory__v54 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v54;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v54 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v54;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v54);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v55;
    __VdlyVal__top__DOT__text__DOT__charMemory__v55 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v55;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v55 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v55;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v55);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v56;
    __VdlyVal__top__DOT__text__DOT__charMemory__v56 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v56;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v56 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v56;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v56);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v57;
    __VdlyVal__top__DOT__text__DOT__charMemory__v57 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v57;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v57 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v57;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v57);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v58;
    __VdlyVal__top__DOT__text__DOT__charMemory__v58 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v58;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v58 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v58;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v58);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v59;
    __VdlyVal__top__DOT__text__DOT__charMemory__v59 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v59;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v59 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v59;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v59);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v60;
    __VdlyVal__top__DOT__text__DOT__charMemory__v60 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v60;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v60 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v60;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v60);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v61;
    __VdlyVal__top__DOT__text__DOT__charMemory__v61 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v61;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v61 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v61;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v61);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v62;
    __VdlyVal__top__DOT__text__DOT__charMemory__v62 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v62;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v62 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v62;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v62);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v63;
    __VdlyVal__top__DOT__text__DOT__charMemory__v63 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v63;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v63 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v63;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v63);
    CData/*7:0*/ __VdlyVal__top__DOT__text__DOT__charMemory__v64;
    __VdlyVal__top__DOT__text__DOT__charMemory__v64 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__text__DOT__charMemory__v64;
    __VdlyDim0__top__DOT__text__DOT__charMemory__v64 = 0;
    VlWide<16>/*511:0*/ __VdlyElem__top__DOT__text__DOT__charMemory__v64;
    VL_ZERO_W(512, __VdlyElem__top__DOT__text__DOT__charMemory__v64);
    // Body
    vlSelfRef.__Vdly__top__DOT__state = vlSelfRef.top__DOT__state;
    vlSelfRef.__Vdly__top__DOT__txCounter = vlSelfRef.top__DOT__txCounter;
    __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__state 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__counter 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__btn_last 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__state 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__counter 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__btn_last 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__state 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__counter 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__btn_last 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__state 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__counter 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__btn_last 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__state 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__counter 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__btn_last 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__state 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__counter 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__btn_last 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__state 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__counter 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__btn_last 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__btn_last;
    __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff3;
    __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__state 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__state;
    __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__counter 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__counter;
    __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__btn_last 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__btn_last;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy;
    vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period;
    vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position;
    vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte;
    vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy;
    __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v0 = 0U;
    __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v1 = 0U;
    __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v2 = 0U;
    __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v3 = 0U;
    __VdlySet__top__DOT__RAM__DOT__data_mem__v0 = 0U;
    __VdlySet__top__DOT__RAM__DOT__data_mem__v1 = 0U;
    __VdlySet__top__DOT__RAM__DOT__data_mem__v2 = 0U;
    __VdlySet__top__DOT__RAM__DOT__data_mem__v3 = 0U;
    __Vdly__top__DOT__mem__DOT__cnt = vlSelfRef.top__DOT__mem__DOT__cnt;
    __VdlySet__top__DOT__mem__DOT__data_mem__v0 = 0U;
    __VdlySet__top__DOT__mem__DOT__data_mem__v1 = 0U;
    __VdlySet__top__DOT__mem__DOT__data_mem__v2 = 0U;
    __VdlySet__top__DOT__mem__DOT__data_mem__v3 = 0U;
    vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0 = 0U;
    vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0 = 0U;
    vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0 = 0U;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__counter 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__flash_ready 
        = vlSelfRef.top__DOT__flashController__DOT__flash_ready;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteNum 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteOut 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteOut;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__enabling_done 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__enabling_done;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataToSend;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__bitsToSend;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__returnState 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__returnState;
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[0U] 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[0U];
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[1U] 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[1U];
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[2U] 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[2U];
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[3U] 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[3U];
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[4U] 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[4U];
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[5U] 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[5U];
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[6U] 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[6U];
    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[7U] 
        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[7U];
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position;
    __Vdly__top__DOT__uart_controller__DOT__tx_busy 
        = vlSelfRef.top__DOT__uart_controller__DOT__tx_busy;
    if (vlSelfRef.top__DOT__btn_ren) {
        vlSelfRef.top__DOT__btn_out = ((1U & (vlSelfRef.top__DOT__data_addr 
                                              >> 3U)) 
                                       || ((4U & vlSelfRef.top__DOT__data_addr)
                                            ? ((2U 
                                                & vlSelfRef.top__DOT__data_addr)
                                                ? (
                                                   (1U 
                                                    & vlSelfRef.top__DOT__data_addr)
                                                    ? (IData)(vlSelfRef.top__DOT__bm__DOT__stableRightL)
                                                    : (IData)(vlSelfRef.top__DOT__bm__DOT__stableLeftL))
                                                : (
                                                   (1U 
                                                    & vlSelfRef.top__DOT__data_addr)
                                                    ? (IData)(vlSelfRef.top__DOT__bm__DOT__stableUpL)
                                                    : (IData)(vlSelfRef.top__DOT__bm__DOT__stableDownL)))
                                            : ((2U 
                                                & vlSelfRef.top__DOT__data_addr)
                                                ? (
                                                   (1U 
                                                    & vlSelfRef.top__DOT__data_addr)
                                                    ? (IData)(vlSelfRef.top__DOT__bm__DOT__stableRightR)
                                                    : (IData)(vlSelfRef.top__DOT__bm__DOT__stableLeftR))
                                                : (
                                                   (1U 
                                                    & vlSelfRef.top__DOT__data_addr)
                                                    ? (IData)(vlSelfRef.top__DOT__bm__DOT__stableUpR)
                                                    : (IData)(vlSelfRef.top__DOT__bm__DOT__stableDownR)))));
    }
    if (vlSelfRef.top__DOT__reset) {
        if (vlSelfRef.top__DOT__screen_wen) {
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h5244a299__0 
                = (0xffU & ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))
                             ? vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData
                             : ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))
                                 ? (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                    >> 8U) : ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))
                                               ? (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                                  >> 0x10U)
                                               : (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                                  >> 0x18U)))));
            if ((0x13U >= (0x1fU & (vlSelfRef.top__DOT__data_addr 
                                    >> 7U)))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v0 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h5244a299__0;
                __VdlyLsb__top__DOT__text__DOT__charMemory__v0 
                    = (0x1ffU & ((IData)(0x1f8U) - 
                                 (0x1f8U & VL_SHIFTL_III(9,32,32, 
                                                         (0x7fffU 
                                                          & (vlSelfRef.top__DOT__data_addr 
                                                             >> 1U)), 3U))));
                __VdlyDim0__top__DOT__text__DOT__charMemory__v0 
                    = (0x1fU & (vlSelfRef.top__DOT__data_addr 
                                >> 7U));
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyMask__top__DOT__text__DOT__charMemory__v0[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                VL_ASSIGNSEL_WI(512,8,(IData)(__VdlyLsb__top__DOT__text__DOT__charMemory__v0), __VdlyMask__top__DOT__text__DOT__charMemory__v0, 0xffU);
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v0[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                VL_ASSIGNSEL_WI(512,8,(IData)(__VdlyLsb__top__DOT__text__DOT__charMemory__v0), __VdlyElem__top__DOT__text__DOT__charMemory__v0, __VdlyVal__top__DOT__text__DOT__charMemory__v0);
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v0, __VdlyMask__top__DOT__text__DOT__charMemory__v0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v0));
            }
        }
    } else {
        vlSelfRef.top__DOT__text__DOT__i = 0U;
        while (VL_GTS_III(32, 0x14U, vlSelfRef.top__DOT__text__DOT__i)) {
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v1 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v1 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v1[0xfU] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v1[0xfU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v1) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v1, Vtop__ConstPool__CONST_h9ce1b771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v1));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v2 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v2 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v2[0xfU] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v2[0xfU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v2) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v2, Vtop__ConstPool__CONST_h92e2b771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v2));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v3 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v3 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v3[0xfU] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v3[0xfU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v3) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v3, Vtop__ConstPool__CONST_h93e0b671_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v3));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v4 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v4 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v4[0xfU] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v4[0xfU]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v4));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v4, Vtop__ConstPool__CONST_h93e1b476_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v4));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v5 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v5 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v5[0xeU] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v5[0xeU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v5) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v5, Vtop__ConstPool__CONST_hc6a1b771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v5));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v6 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v6 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v6[0xeU] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v6[0xeU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v6) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v6, Vtop__ConstPool__CONST_h5d60f771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v6));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v7 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v7 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v7[0xeU] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v7[0xeU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v7) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v7, Vtop__ConstPool__CONST_h9dd3d931_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v7));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v8 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v8 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v8[0xeU] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v8[0xeU]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v8));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v8, Vtop__ConstPool__CONST_h93e07670_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v8));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v9 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v9 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v9[0xdU] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v9[0xdU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v9) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v9, Vtop__ConstPool__CONST_h6771b771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v9));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v10 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v10 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v10[0xdU] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v10[0xdU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v10) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v10, Vtop__ConstPool__CONST_h0b900771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v10));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v11 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v11 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v11[0xdU] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v11[0xdU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v11) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v11, Vtop__ConstPool__CONST_h4d5966c1_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v11));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v12 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v12 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v12[0xdU] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v12[0xdU]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v12));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v12, Vtop__ConstPool__CONST_h93f0a7d0_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v12));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v13 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v13 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v13[0xcU] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v13[0xcU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v13) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v13, Vtop__ConstPool__CONST_h0a8db771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v13));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v14 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v14 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v14[0xcU] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v14[0xcU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v14) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v14, Vtop__ConstPool__CONST_h1d004b71_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v14));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v15 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v15 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v15[0xcU] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v15[0xcU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v15) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v15, Vtop__ConstPool__CONST_h601f4f45_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v15));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v16 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v16 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v16[0xcU] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v16[0xcU]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v16));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v16, Vtop__ConstPool__CONST_ha93a61c2_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v16));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v17 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v17 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v17[0xbU] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v17[0xbU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v17) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v17, Vtop__ConstPool__CONST_h04f8b771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v17));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v18 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v18 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v18[0xbU] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v18[0xbU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v18) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v18, Vtop__ConstPool__CONST_h6760fa71_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v18));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v19 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v19 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v19[0xbU] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v19[0xbU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v19) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v19, Vtop__ConstPool__CONST_hfb785ec6_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v19));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v20 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v20 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v20[0xbU] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v20[0xbU]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v20));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v20, Vtop__ConstPool__CONST_h9b237c8e_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v20));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v21 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v21 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v21[0xaU] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v21[0xaU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v21) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v21, Vtop__ConstPool__CONST_h7e4d7771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v21));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v22 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v22 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v22[0xaU] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v22[0xaU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v22) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v22, Vtop__ConstPool__CONST_h26805e31_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v22));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v23 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v23 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v23[0xaU] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v23[0xaU]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v23) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v23, Vtop__ConstPool__CONST_h265ab958_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v23));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v24 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v24 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v24[0xaU] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v24[0xaU]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v24));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v24, Vtop__ConstPool__CONST_hb8c9124a_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v24));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v25 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v25 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v25[9U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v25[9U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v25) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v25, Vtop__ConstPool__CONST_hfa444771_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v25));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v26 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v26 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v26[9U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v26[9U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v26) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v26, Vtop__ConstPool__CONST_h92ca10e1_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v26));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v27 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v27 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v27[9U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v27[9U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v27) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v27, Vtop__ConstPool__CONST_h1f268061_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v27));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v28 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v28 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v28[9U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v28[9U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v28));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v28, Vtop__ConstPool__CONST_hd8595685_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v28));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v29 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v29 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v29[8U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v29[8U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v29) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v29, Vtop__ConstPool__CONST_he8399b71_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v29));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v30 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v30 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v30[8U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v30[8U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v30) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v30, Vtop__ConstPool__CONST_hf383335d_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v30));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v31 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v31 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v31[8U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v31[8U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v31) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v31, Vtop__ConstPool__CONST_hf0a16d64_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v31));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v32 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v32 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v32[8U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v32[8U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v32));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v32, Vtop__ConstPool__CONST_hea8ddc03_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v32));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v33 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v33 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v33[7U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v33[7U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v33) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v33, Vtop__ConstPool__CONST_h71483271_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v33));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v34 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v34 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v34[7U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v34[7U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v34) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v34, Vtop__ConstPool__CONST_h1ac87f0c_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v34));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v35 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v35 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v35[7U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v35[7U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v35) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v35, Vtop__ConstPool__CONST_h39784e77_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v35));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v36 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v36 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v36[7U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v36[7U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v36));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v36, Vtop__ConstPool__CONST_h288d9c73_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v36));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v37 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v37 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v37[6U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v37[6U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v37) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v37, Vtop__ConstPool__CONST_he51479b1_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v37));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v38 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v38 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v38[6U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v38[6U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v38) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v38, Vtop__ConstPool__CONST_hc5fc14f1_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v38));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v39 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v39 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v39[6U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v39[6U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v39) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v39, Vtop__ConstPool__CONST_h70e51a9c_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v39));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v40 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v40 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v40[6U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v40[6U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v40));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v40, Vtop__ConstPool__CONST_hd7033914_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v40));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v41 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v41 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v41[5U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v41[5U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v41) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v41, Vtop__ConstPool__CONST_h963abec1_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v41));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v42 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v42 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v42[5U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v42[5U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v42) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v42, Vtop__ConstPool__CONST_h84b9a45e_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v42));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v43 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v43 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v43[5U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v43[5U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v43) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v43, Vtop__ConstPool__CONST_h9f6cc61b_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v43));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v44 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v44 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v44[5U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v44[5U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v44));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v44, Vtop__ConstPool__CONST_h97f09bff_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v44));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v45 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v45 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v45[4U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v45[4U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v45) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v45, Vtop__ConstPool__CONST_hece5513d_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v45));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v46 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v46 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v46[4U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v46[4U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v46) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v46, Vtop__ConstPool__CONST_h250fab18_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v46));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v47 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v47 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v47[4U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v47[4U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v47) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v47, Vtop__ConstPool__CONST_he114e7a6_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v47));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v48 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v48 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v48[4U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v48[4U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v48));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v48, Vtop__ConstPool__CONST_h0d48c9e8_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v48));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v49 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v49 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v49[3U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v49[3U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v49) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v49, Vtop__ConstPool__CONST_haf667354_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v49));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v50 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v50 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v50[3U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v50[3U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v50) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v50, Vtop__ConstPool__CONST_hcaf73c45_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v50));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v51 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v51 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v51[3U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v51[3U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v51) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v51, Vtop__ConstPool__CONST_h16ca6af0_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v51));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v52 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v52 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v52[3U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v52[3U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v52));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v52, Vtop__ConstPool__CONST_h7716c8fa_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v52));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v53 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v53 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v53[2U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v53[2U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v53) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v53, Vtop__ConstPool__CONST_h584de1ec_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v53));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v54 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v54 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v54[2U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v54[2U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v54) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v54, Vtop__ConstPool__CONST_h8d6132fe_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v54));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v55 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v55 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v55[2U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v55[2U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v55) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v55, Vtop__ConstPool__CONST_hebc2e2d1_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v55));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v56 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v56 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v56[2U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v56[2U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v56));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v56, Vtop__ConstPool__CONST_h10cd3eaa_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v56));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v57 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v57 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v57[1U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v57[1U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v57) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v57, Vtop__ConstPool__CONST_h61961d41_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v57));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v58 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v58 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v58[1U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v58[1U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v58) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v58, Vtop__ConstPool__CONST_hb40075c3_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v58));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v59 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v59 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v59[1U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v59[1U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v59) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v59, Vtop__ConstPool__CONST_hd0a50729_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v59));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v60 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v60 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v60[1U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v60[1U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v60));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v60, Vtop__ConstPool__CONST_h766e6cb5_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v60));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v61 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v61 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v61[0U] 
                    = ((0xffffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v61[0U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v61) 
                          << 0x18U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v61, Vtop__ConstPool__CONST_h74e18cff_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v61));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v62 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v62 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v62[0U] 
                    = ((0xff00ffffU & __VdlyElem__top__DOT__text__DOT__charMemory__v62[0U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v62) 
                          << 0x10U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v62, Vtop__ConstPool__CONST_h69fddf3d_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v62));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v63 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v63 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v63[0U] 
                    = ((0xffff00ffU & __VdlyElem__top__DOT__text__DOT__charMemory__v63[0U]) 
                       | ((IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v63) 
                          << 8U));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v63, Vtop__ConstPool__CONST_hd224d49b_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v63));
            }
            vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0 = 0x20U;
            if (VL_LIKELY(((0x13U >= (0x1fU & vlSelfRef.top__DOT__text__DOT__i))))) {
                __VdlyVal__top__DOT__text__DOT__charMemory__v64 
                    = vlSelfRef.top__DOT__text__DOT____Vlvbound_h835a9cca__0;
                __VdlyDim0__top__DOT__text__DOT__charMemory__v64 
                    = (0x1fU & vlSelfRef.top__DOT__text__DOT__i);
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[0U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[1U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[1U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[2U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[2U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[3U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[3U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[4U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[4U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[5U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[5U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[6U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[6U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[7U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[7U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[8U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[8U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[9U] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[9U];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[0xaU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xaU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[0xbU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xbU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[0xcU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xcU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[0xdU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xdU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[0xeU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xeU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[0xfU] 
                    = Vtop__ConstPool__CONST_h93e1b771_0[0xfU];
                __VdlyElem__top__DOT__text__DOT__charMemory__v64[0U] 
                    = ((0xffffff00U & __VdlyElem__top__DOT__text__DOT__charMemory__v64[0U]) 
                       | (IData)(__VdlyVal__top__DOT__text__DOT__charMemory__v64));
                vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.enqueue(__VdlyElem__top__DOT__text__DOT__charMemory__v64, Vtop__ConstPool__CONST_hffd88623_0, (IData)(__VdlyDim0__top__DOT__text__DOT__charMemory__v64));
            }
            vlSelfRef.top__DOT__text__DOT__j = 0x40U;
            vlSelfRef.top__DOT__text__DOT__i = ((IData)(1U) 
                                                + vlSelfRef.top__DOT__text__DOT__i);
        }
    }
    if (vlSelfRef.top__DOT__reset) {
        if ((1U & (~ (IData)(vlSelfRef.top__DOT__screen_wen)))) {
            vlSelfRef.top__DOT__error = vlSelfRef.top__DOT__screen_wen;
        }
    }
    vlSelfRef.top__DOT__counter = (0xffffffU & ((IData)(1U) 
                                                + vlSelfRef.top__DOT__counter));
    if ((1U & (~ ((IData)(vlSelfRef.top__DOT__second_stage_mem_wen) 
                  & (IData)(vlSelfRef.top__DOT__second_stage_mem_ren))))) {
        if (((IData)(vlSelfRef.top__DOT__second_stage_mem_wen) 
             & (~ (IData)(vlSelfRef.top__DOT__second_stage_mem_ren)))) {
            if ((8U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v0 
                    = (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                       >> 0x18U);
                __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v0 
                    = (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                   >> 2U));
                __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v0 = 1U;
            }
            if ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v1 
                    = (0xffU & (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                >> 0x10U));
                __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v1 
                    = (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                   >> 2U));
                __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v1 = 1U;
            }
            if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v2 
                    = (0xffU & (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                >> 8U));
                __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v2 
                    = (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                   >> 2U));
                __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v2 = 1U;
            }
            if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                __VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v3 
                    = (0xffU & vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData);
                __VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v3 
                    = (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                   >> 2U));
                __VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v3 = 1U;
            }
        }
    }
    if ((1U & (~ ((IData)(vlSelfRef.top__DOT__program_mem_wen) 
                  & (IData)(vlSelfRef.top__DOT__program_mem_ren))))) {
        if (((IData)(vlSelfRef.top__DOT__program_mem_wen) 
             & (~ (IData)(vlSelfRef.top__DOT__program_mem_ren)))) {
            if ((8U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                __VdlyVal__top__DOT__RAM__DOT__data_mem__v0 
                    = (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                       >> 0x18U);
                __VdlyDim0__top__DOT__RAM__DOT__data_mem__v0 
                    = (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                   >> 2U));
                __VdlySet__top__DOT__RAM__DOT__data_mem__v0 = 1U;
            }
            if ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                __VdlyVal__top__DOT__RAM__DOT__data_mem__v1 
                    = (0xffU & (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                >> 0x10U));
                __VdlyDim0__top__DOT__RAM__DOT__data_mem__v1 
                    = (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                   >> 2U));
                __VdlySet__top__DOT__RAM__DOT__data_mem__v1 = 1U;
            }
            if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                __VdlyVal__top__DOT__RAM__DOT__data_mem__v2 
                    = (0xffU & (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                >> 8U));
                __VdlyDim0__top__DOT__RAM__DOT__data_mem__v2 
                    = (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                   >> 2U));
                __VdlySet__top__DOT__RAM__DOT__data_mem__v2 = 1U;
            }
            if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                __VdlyVal__top__DOT__RAM__DOT__data_mem__v3 
                    = (0xffU & vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData);
                __VdlyDim0__top__DOT__RAM__DOT__data_mem__v3 
                    = (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                   >> 2U));
                __VdlySet__top__DOT__RAM__DOT__data_mem__v3 = 1U;
            }
        }
    }
    if (vlSelfRef.top__DOT__ppu_inst__DOT__spritesEn) {
        vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0 
            = vlSelfRef.top__DOT__ppu_inst__DOT__writeSprite;
        vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0 
            = (0x3fffU & ((vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                           >> 1U) - (IData)(0x800U)));
        vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0 = 1U;
    }
    if (vlSelfRef.top__DOT__ppu_inst__DOT__textEn) {
        vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0 
            = vlSelfRef.top__DOT__ppu_inst__DOT__writeText;
        vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0 
            = (0x7ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                         >> 1U));
        vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0 = 1U;
        vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0 
            = vlSelfRef.top__DOT__ppu_inst__DOT__writeAttr;
        vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0 
            = (0x7ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                         >> 1U));
        vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0 = 1U;
    }
    if (vlSelfRef.top__DOT__uart_controller__DOT__ena_tx) {
        __Vdly__top__DOT__uart_controller__DOT__tx_busy = 1U;
    }
    if ((0x74U == (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period))) {
        if ((1U == (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position))) {
            __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run = 0U;
            if (vlSelfRef.top__DOT__uart_controller__DOT__tx_busy) {
                __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte 
                    = (0x200U | ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_data_reg) 
                                 << 1U));
                __Vdly__top__DOT__uart_controller__DOT__tx_busy = 0U;
            }
        } else {
            __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte 
                = ((0x200U & (IData)(__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte)) 
                   | (0x1ffU & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte) 
                                >> 1U)));
            if ((0U == (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position))) {
                __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run 
                    = (1U & (~ (IData)(vlSelfRef.uart_tx)));
            }
            __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte 
                = (0x200U | (IData)(__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte));
        }
    }
    if (((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_trigger) 
         & (~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run)))) {
        __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period = 0xe7U;
        __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position = 0U;
        vlSelfRef.uart_tx = (1U & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte));
    } else if ((0U == (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period))) {
        __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position 
            = ((0U == (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position))
                ? 9U : (0xfU & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position) 
                                - (IData)(1U))));
        __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period = 0xe9U;
        vlSelfRef.uart_tx = (1U & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte));
    } else {
        __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period 
            = (0xffffU & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period) 
                          - (IData)(1U)));
    }
    vlSelfRef.top__DOT__led = (0x3fU & vlSelfRef.top__DOT__cpu_1__DOT__PC);
    vlSelfRef.top__DOT__mem__DOT__debug_reg = (0x2002U 
                                               <= (0x3fffffU 
                                                   & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                                      >> 2U)));
    vlSelfRef.top__DOT__SecondStageRAM__DOT__debug_reg 
        = (0x40000U <= (0x3fffffU & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                     >> 2U)));
    vlSelfRef.top__DOT__RAM__DOT__debug_reg = (0x40000U 
                                               <= (0x3fffffU 
                                                   & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                                      >> 2U)));
    if ((0x40000U > (0x3fffffU & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                  >> 2U)))) {
        vlSelfRef.top__DOT__second_stage_instr = vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem
            [(0x3ffffU & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                          >> 2U))];
        vlSelfRef.top__DOT__program_instr = vlSelfRef.top__DOT__RAM__DOT__data_mem
            [(0x3ffffU & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                          >> 2U))];
    }
    if (((IData)(vlSelfRef.top__DOT__second_stage_mem_wen) 
         & (IData)(vlSelfRef.top__DOT__second_stage_mem_ren))) {
        vlSelfRef.top__DOT__second_stage_mem_out = vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData;
    } else if ((1U & (~ ((IData)(vlSelfRef.top__DOT__second_stage_mem_wen) 
                         & (~ (IData)(vlSelfRef.top__DOT__second_stage_mem_ren)))))) {
        if (vlSelfRef.top__DOT__second_stage_mem_ren) {
            vlSelfRef.top__DOT__second_stage_mem_out 
                = vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem
                [(0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                              >> 2U))];
        }
    }
    if (((IData)(vlSelfRef.top__DOT__program_mem_wen) 
         & (IData)(vlSelfRef.top__DOT__program_mem_ren))) {
        vlSelfRef.top__DOT__program_mem_out = vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData;
    } else if ((1U & (~ ((IData)(vlSelfRef.top__DOT__program_mem_wen) 
                         & (~ (IData)(vlSelfRef.top__DOT__program_mem_ren)))))) {
        if (vlSelfRef.top__DOT__program_mem_ren) {
            vlSelfRef.top__DOT__program_mem_out = vlSelfRef.top__DOT__RAM__DOT__data_mem
                [(0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                              >> 2U))];
        }
    }
    if ((1U & (~ (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__spritesEn)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__dout_a 
            = vlSelfRef.top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem
            [(0x3fffU & ((vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                          >> 1U) - (IData)(0x800U)))];
    }
    if ((1U & (~ (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__textEn)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__text_Buffer__DOT__dout_a 
            = vlSelfRef.top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem
            [(0x7ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                        >> 1U))];
        vlSelfRef.top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__dout_a 
            = vlSelfRef.top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem
            [(0x7ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                        >> 1U))];
    }
    vlSelfRef.__VdlyCommitQueuetop__DOT__text__DOT__charMemory.commit(vlSelfRef.top__DOT__text__DOT__charMemory);
    if (vlSelfRef.top__DOT__uart_controller__DOT__ena_tx) {
        vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_data_reg 
            = vlSelfRef.top__DOT__uart_controller__DOT__tx_data;
    }
    vlSelfRef.top__DOT__memReady = 1U;
    vlSelfRef.top__DOT__memReady = 1U;
    if ((0x2002U > (0x3fffffU & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                 >> 2U)))) {
        vlSelfRef.top__DOT__boot_instr = ((0x2001U 
                                           >= (0x3fffU 
                                               & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                                  >> 2U)))
                                           ? vlSelfRef.top__DOT__mem__DOT__data_mem
                                          [(0x3fffU 
                                            & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                               >> 2U))]
                                           : 0U);
    }
    vlSelfRef.top__DOT__memReady = 1U;
    if ((1U & (~ ((IData)(vlSelfRef.top__DOT__mem__DOT__state) 
                  >> 1U)))) {
        if ((1U & (IData)(vlSelfRef.top__DOT__mem__DOT__state))) {
            __Vdly__top__DOT__mem__DOT__cnt = (0x1fU 
                                               & ((IData)(1U) 
                                                  + (IData)(vlSelfRef.top__DOT__mem__DOT__cnt)));
            if ((5U < (IData)(vlSelfRef.top__DOT__mem__DOT__cnt))) {
                vlSelfRef.top__DOT__memReady = 1U;
                vlSelfRef.top__DOT__mem__DOT__state = 0U;
                vlSelfRef.top__DOT__boot_data_out = 
                    ((0x2001U >= (0x3fffU & vlSelfRef.top__DOT__mem__DOT__saved_data_addr))
                      ? vlSelfRef.top__DOT__mem__DOT__data_mem
                     [(0x3fffU & vlSelfRef.top__DOT__mem__DOT__saved_data_addr)]
                      : 0U);
            } else {
                vlSelfRef.top__DOT__memReady = 0U;
                vlSelfRef.top__DOT__mem__DOT__state = 1U;
            }
        } else if ((0x2002U > (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                           >> 2U)))) {
            __Vdly__top__DOT__mem__DOT__cnt = 0U;
            vlSelfRef.top__DOT__mem__DOT__saved_data_addr 
                = (0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                               >> 2U));
            if (((IData)(vlSelfRef.top__DOT__mem_wen) 
                 & (IData)(vlSelfRef.top__DOT__mem_ren))) {
                vlSelfRef.top__DOT__boot_data_out = vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData;
            } else if (((IData)(vlSelfRef.top__DOT__mem_wen) 
                        & (~ (IData)(vlSelfRef.top__DOT__mem_ren)))) {
                if ((8U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                    vlSelfRef.top__DOT__mem__DOT____Vlvbound_h32cf64f4__0 
                        = (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                           >> 0x18U);
                    if ((0x2001U >= (0x3fffU & (vlSelfRef.top__DOT__data_addr 
                                                >> 2U)))) {
                        __VdlyVal__top__DOT__mem__DOT__data_mem__v0 
                            = vlSelfRef.top__DOT__mem__DOT____Vlvbound_h32cf64f4__0;
                        __VdlyDim0__top__DOT__mem__DOT__data_mem__v0 
                            = (0x3fffU & (vlSelfRef.top__DOT__data_addr 
                                          >> 2U));
                        __VdlySet__top__DOT__mem__DOT__data_mem__v0 = 1U;
                    }
                }
                if ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                    vlSelfRef.top__DOT__mem__DOT____Vlvbound_h32cddf14__0 
                        = (0xffU & (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                    >> 0x10U));
                    if ((0x2001U >= (0x3fffU & (vlSelfRef.top__DOT__data_addr 
                                                >> 2U)))) {
                        __VdlyVal__top__DOT__mem__DOT__data_mem__v1 
                            = vlSelfRef.top__DOT__mem__DOT____Vlvbound_h32cddf14__0;
                        __VdlyDim0__top__DOT__mem__DOT__data_mem__v1 
                            = (0x3fffU & (vlSelfRef.top__DOT__data_addr 
                                          >> 2U));
                        __VdlySet__top__DOT__mem__DOT__data_mem__v1 = 1U;
                    }
                }
                if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                    vlSelfRef.top__DOT__mem__DOT____Vlvbound_h32d26f01__0 
                        = (0xffU & (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                    >> 8U));
                    if ((0x2001U >= (0x3fffU & (vlSelfRef.top__DOT__data_addr 
                                                >> 2U)))) {
                        __VdlyVal__top__DOT__mem__DOT__data_mem__v2 
                            = vlSelfRef.top__DOT__mem__DOT____Vlvbound_h32d26f01__0;
                        __VdlyDim0__top__DOT__mem__DOT__data_mem__v2 
                            = (0x3fffU & (vlSelfRef.top__DOT__data_addr 
                                          >> 2U));
                        __VdlySet__top__DOT__mem__DOT__data_mem__v2 = 1U;
                    }
                }
                if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))) {
                    vlSelfRef.top__DOT__mem__DOT____Vlvbound_h32d0f0f5__0 
                        = (0xffU & vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData);
                    if ((0x2001U >= (0x3fffU & (vlSelfRef.top__DOT__data_addr 
                                                >> 2U)))) {
                        __VdlyVal__top__DOT__mem__DOT__data_mem__v3 
                            = vlSelfRef.top__DOT__mem__DOT____Vlvbound_h32d0f0f5__0;
                        __VdlyDim0__top__DOT__mem__DOT__data_mem__v3 
                            = (0x3fffU & (vlSelfRef.top__DOT__data_addr 
                                          >> 2U));
                        __VdlySet__top__DOT__mem__DOT__data_mem__v3 = 1U;
                    }
                }
            } else if (((IData)(vlSelfRef.top__DOT__mem_ren) 
                        & (~ (IData)(vlSelfRef.top__DOT__mem_wen)))) {
                vlSelfRef.top__DOT__memReady = 0U;
                vlSelfRef.top__DOT__mem__DOT__state = 1U;
            } else {
                vlSelfRef.top__DOT__boot_data_out = 0U;
            }
        } else {
            vlSelfRef.top__DOT__boot_data_out = 0U;
        }
    }
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run 
        = __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte 
        = __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period 
        = __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position 
        = __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position;
    vlSelfRef.top__DOT__uart_controller__DOT__tx_busy 
        = __Vdly__top__DOT__uart_controller__DOT__tx_busy;
    if (__VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v0) {
        vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem[__VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v0] 
            = ((0xffffffU & vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem
                [__VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v0]) 
               | ((IData)(__VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v0) 
                  << 0x18U));
    }
    if (__VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v1) {
        vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem[__VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v1] 
            = ((0xff00ffffU & vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem
                [__VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v1]) 
               | ((IData)(__VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v1) 
                  << 0x10U));
    }
    if (__VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v2) {
        vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem[__VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v2] 
            = ((0xffff00ffU & vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem
                [__VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v2]) 
               | ((IData)(__VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v2) 
                  << 8U));
    }
    if (__VdlySet__top__DOT__SecondStageRAM__DOT__data_mem__v3) {
        vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem[__VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v3] 
            = ((0xffffff00U & vlSelfRef.top__DOT__SecondStageRAM__DOT__data_mem
                [__VdlyDim0__top__DOT__SecondStageRAM__DOT__data_mem__v3]) 
               | (IData)(__VdlyVal__top__DOT__SecondStageRAM__DOT__data_mem__v3));
    }
    if (__VdlySet__top__DOT__RAM__DOT__data_mem__v0) {
        vlSelfRef.top__DOT__RAM__DOT__data_mem[__VdlyDim0__top__DOT__RAM__DOT__data_mem__v0] 
            = ((0xffffffU & vlSelfRef.top__DOT__RAM__DOT__data_mem
                [__VdlyDim0__top__DOT__RAM__DOT__data_mem__v0]) 
               | ((IData)(__VdlyVal__top__DOT__RAM__DOT__data_mem__v0) 
                  << 0x18U));
    }
    if (__VdlySet__top__DOT__RAM__DOT__data_mem__v1) {
        vlSelfRef.top__DOT__RAM__DOT__data_mem[__VdlyDim0__top__DOT__RAM__DOT__data_mem__v1] 
            = ((0xff00ffffU & vlSelfRef.top__DOT__RAM__DOT__data_mem
                [__VdlyDim0__top__DOT__RAM__DOT__data_mem__v1]) 
               | ((IData)(__VdlyVal__top__DOT__RAM__DOT__data_mem__v1) 
                  << 0x10U));
    }
    if (__VdlySet__top__DOT__RAM__DOT__data_mem__v2) {
        vlSelfRef.top__DOT__RAM__DOT__data_mem[__VdlyDim0__top__DOT__RAM__DOT__data_mem__v2] 
            = ((0xffff00ffU & vlSelfRef.top__DOT__RAM__DOT__data_mem
                [__VdlyDim0__top__DOT__RAM__DOT__data_mem__v2]) 
               | ((IData)(__VdlyVal__top__DOT__RAM__DOT__data_mem__v2) 
                  << 8U));
    }
    if (__VdlySet__top__DOT__RAM__DOT__data_mem__v3) {
        vlSelfRef.top__DOT__RAM__DOT__data_mem[__VdlyDim0__top__DOT__RAM__DOT__data_mem__v3] 
            = ((0xffffff00U & vlSelfRef.top__DOT__RAM__DOT__data_mem
                [__VdlyDim0__top__DOT__RAM__DOT__data_mem__v3]) 
               | (IData)(__VdlyVal__top__DOT__RAM__DOT__data_mem__v3));
    }
    __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff2;
    if ((0U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableRightL = vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__btn_last;
        if ((((IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff1) 
              == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff2)) 
             & ((IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff2) 
                == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff3)))) {
            if (((IData)(vlSelfRef.btnRightL) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__btn_last))) {
                vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__newChange 
                    = vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff3;
                __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__state = 1U;
                __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__counter = 0U;
            }
        }
    } else if ((1U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__state))) {
        __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__counter 
            = (0x3fffffU & ((IData)(1U) + vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__counter));
        if (((IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff3) 
             != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__newChange))) {
            __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__btn_last = 1U;
            __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__state = 0U;
        }
        if ((0xf423fU == vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__counter)) {
            __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__state = 2U;
            __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__btn_last 
                = vlSelfRef.btnRightL;
        }
    } else if ((2U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableRightL = vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__btn_last;
        if (((IData)(vlSelfRef.btnRightL) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__btn_last))) {
            __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__state = 1U;
            __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__counter = 0U;
        }
    }
    vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff2 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff1;
    __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff2;
    if ((0U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableLeftL = vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__btn_last;
        if ((((IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff1) 
              == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff2)) 
             & ((IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff2) 
                == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff3)))) {
            if (((IData)(vlSelfRef.btnLeftL) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__btn_last))) {
                vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__newChange 
                    = vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff3;
                __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__state = 1U;
                __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__counter = 0U;
            }
        }
    } else if ((1U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__state))) {
        __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__counter 
            = (0x3fffffU & ((IData)(1U) + vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__counter));
        if (((IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff3) 
             != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__newChange))) {
            __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__btn_last = 1U;
            __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__state = 0U;
        }
        if ((0xf423fU == vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__counter)) {
            __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__state = 2U;
            __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__btn_last 
                = vlSelfRef.btnLeftL;
        }
    } else if ((2U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableLeftL = vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__btn_last;
        if (((IData)(vlSelfRef.btnLeftL) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__btn_last))) {
            __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__state = 1U;
            __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__counter = 0U;
        }
    }
    vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff2 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff1;
    __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff2;
    if ((0U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableUpL = vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__btn_last;
        if ((((IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff1) 
              == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff2)) 
             & ((IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff2) 
                == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff3)))) {
            if (((IData)(vlSelfRef.btnUpL) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__btn_last))) {
                vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__newChange 
                    = vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff3;
                __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__state = 1U;
                __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__counter = 0U;
            }
        }
    } else if ((1U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__state))) {
        __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__counter 
            = (0x3fffffU & ((IData)(1U) + vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__counter));
        if (((IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff3) 
             != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__newChange))) {
            __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__btn_last = 1U;
            __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__state = 0U;
        }
        if ((0xf423fU == vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__counter)) {
            __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__state = 2U;
            __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__btn_last 
                = vlSelfRef.btnUpL;
        }
    } else if ((2U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableUpL = vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__btn_last;
        if (((IData)(vlSelfRef.btnUpL) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__btn_last))) {
            __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__state = 1U;
            __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__counter = 0U;
        }
    }
    vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff2 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff1;
    __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff2;
    if ((0U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableDownL = vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__btn_last;
        if ((((IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff1) 
              == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff2)) 
             & ((IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff2) 
                == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff3)))) {
            if (((IData)(vlSelfRef.btnDownL) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__btn_last))) {
                vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__newChange 
                    = vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff3;
                __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__state = 1U;
                __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__counter = 0U;
            }
        }
    } else if ((1U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__state))) {
        __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__counter 
            = (0x3fffffU & ((IData)(1U) + vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__counter));
        if (((IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff3) 
             != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__newChange))) {
            __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__btn_last = 1U;
            __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__state = 0U;
        }
        if ((0xf423fU == vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__counter)) {
            __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__state = 2U;
            __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__btn_last 
                = vlSelfRef.btnDownL;
        }
    } else if ((2U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableDownL = vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__btn_last;
        if (((IData)(vlSelfRef.btnDownL) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__btn_last))) {
            __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__state = 1U;
            __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__counter = 0U;
        }
    }
    vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff2 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff1;
    __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff2;
    if ((0U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableRightR = vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__btn_last;
        if ((((IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff1) 
              == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff2)) 
             & ((IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff2) 
                == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff3)))) {
            if (((IData)(vlSelfRef.btnRightR) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__btn_last))) {
                vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__newChange 
                    = vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff3;
                __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__state = 1U;
                __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__counter = 0U;
            }
        }
    } else if ((1U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__state))) {
        __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__counter 
            = (0x3fffffU & ((IData)(1U) + vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__counter));
        if (((IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff3) 
             != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__newChange))) {
            __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__btn_last = 1U;
            __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__state = 0U;
        }
        if ((0xf423fU == vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__counter)) {
            __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__state = 2U;
            __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__btn_last 
                = vlSelfRef.btnRightR;
        }
    } else if ((2U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableRightR = vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__btn_last;
        if (((IData)(vlSelfRef.btnRightR) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__btn_last))) {
            __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__state = 1U;
            __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__counter = 0U;
        }
    }
    vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff2 
        = vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff1;
    __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff2;
    if ((0U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableLeftR = vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__btn_last;
        if ((((IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff1) 
              == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff2)) 
             & ((IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff2) 
                == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff3)))) {
            if (((IData)(vlSelfRef.btnLeftR) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__btn_last))) {
                vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__newChange 
                    = vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff3;
                __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__state = 1U;
                __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__counter = 0U;
            }
        }
    } else if ((1U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__state))) {
        __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__counter 
            = (0x3fffffU & ((IData)(1U) + vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__counter));
        if (((IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff3) 
             != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__newChange))) {
            __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__btn_last = 1U;
            __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__state = 0U;
        }
        if ((0xf423fU == vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__counter)) {
            __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__state = 2U;
            __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__btn_last 
                = vlSelfRef.btnLeftR;
        }
    } else if ((2U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableLeftR = vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__btn_last;
        if (((IData)(vlSelfRef.btnLeftR) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__btn_last))) {
            __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__state = 1U;
            __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__counter = 0U;
        }
    }
    vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff2 
        = vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff1;
    __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff2;
    if ((0U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableUpR = vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__btn_last;
        if ((((IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff1) 
              == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff2)) 
             & ((IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff2) 
                == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff3)))) {
            if (((IData)(vlSelfRef.btnUpR) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__btn_last))) {
                vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__newChange 
                    = vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff3;
                __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__state = 1U;
                __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__counter = 0U;
            }
        }
    } else if ((1U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__state))) {
        __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__counter 
            = (0x3fffffU & ((IData)(1U) + vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__counter));
        if (((IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff3) 
             != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__newChange))) {
            __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__btn_last = 1U;
            __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__state = 0U;
        }
        if ((0xf423fU == vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__counter)) {
            __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__state = 2U;
            __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__btn_last 
                = vlSelfRef.btnUpR;
        }
    } else if ((2U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableUpR = vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__btn_last;
        if (((IData)(vlSelfRef.btnUpR) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__btn_last))) {
            __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__state = 1U;
            __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__counter = 0U;
        }
    }
    vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff2 
        = vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff1;
    __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__dff3 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff2;
    if ((0U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableDownR = vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__btn_last;
        if ((((IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff1) 
              == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff2)) 
             & ((IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff2) 
                == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff3)))) {
            if (((IData)(vlSelfRef.btnDownR) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__btn_last))) {
                vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__newChange 
                    = vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff3;
                __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__state = 1U;
                __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__counter = 0U;
            }
        }
    } else if ((1U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__state))) {
        __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__counter 
            = (0x3fffffU & ((IData)(1U) + vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__counter));
        if (((IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff3) 
             != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__newChange))) {
            __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__btn_last = 1U;
            __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__state = 0U;
        }
        if ((0xf423fU == vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__counter)) {
            __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__state = 2U;
            __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__btn_last 
                = vlSelfRef.btnDownR;
        }
    } else if ((2U == (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__state))) {
        vlSelfRef.top__DOT__bm__DOT__stableDownR = vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__btn_last;
        if (((IData)(vlSelfRef.btnDownR) != (IData)(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__btn_last))) {
            __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__state = 1U;
            __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__counter = 0U;
        }
    }
    vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff2 
        = vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff1;
    vlSelfRef.top__DOT__mem__DOT__cnt = __Vdly__top__DOT__mem__DOT__cnt;
    if (__VdlySet__top__DOT__mem__DOT__data_mem__v0) {
        vlSelfRef.top__DOT__mem__DOT__data_mem[__VdlyDim0__top__DOT__mem__DOT__data_mem__v0] 
            = ((0xffffffU & vlSelfRef.top__DOT__mem__DOT__data_mem
                [__VdlyDim0__top__DOT__mem__DOT__data_mem__v0]) 
               | ((IData)(__VdlyVal__top__DOT__mem__DOT__data_mem__v0) 
                  << 0x18U));
    }
    if (__VdlySet__top__DOT__mem__DOT__data_mem__v1) {
        vlSelfRef.top__DOT__mem__DOT__data_mem[__VdlyDim0__top__DOT__mem__DOT__data_mem__v1] 
            = ((0xff00ffffU & vlSelfRef.top__DOT__mem__DOT__data_mem
                [__VdlyDim0__top__DOT__mem__DOT__data_mem__v1]) 
               | ((IData)(__VdlyVal__top__DOT__mem__DOT__data_mem__v1) 
                  << 0x10U));
    }
    if (__VdlySet__top__DOT__mem__DOT__data_mem__v2) {
        vlSelfRef.top__DOT__mem__DOT__data_mem[__VdlyDim0__top__DOT__mem__DOT__data_mem__v2] 
            = ((0xffff00ffU & vlSelfRef.top__DOT__mem__DOT__data_mem
                [__VdlyDim0__top__DOT__mem__DOT__data_mem__v2]) 
               | ((IData)(__VdlyVal__top__DOT__mem__DOT__data_mem__v2) 
                  << 8U));
    }
    if (__VdlySet__top__DOT__mem__DOT__data_mem__v3) {
        vlSelfRef.top__DOT__mem__DOT__data_mem[__VdlyDim0__top__DOT__mem__DOT__data_mem__v3] 
            = ((0xffffff00U & vlSelfRef.top__DOT__mem__DOT__data_mem
                [__VdlyDim0__top__DOT__mem__DOT__data_mem__v3]) 
               | (IData)(__VdlyVal__top__DOT__mem__DOT__data_mem__v3));
    }
    vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff3 
        = __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__dff3;
    vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__state 
        = __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__state;
    vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__counter 
        = __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__counter;
    vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__btn_last 
        = __Vdly__top__DOT__bm__DOT__debounceRightL__DOT__btn_last;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff3 
        = __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__dff3;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__state 
        = __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__state;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__counter 
        = __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__counter;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__btn_last 
        = __Vdly__top__DOT__bm__DOT__debounceLeftL__DOT__btn_last;
    vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff3 
        = __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__dff3;
    vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__state 
        = __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__state;
    vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__counter 
        = __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__counter;
    vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__btn_last 
        = __Vdly__top__DOT__bm__DOT__debounceUpL__DOT__btn_last;
    vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff3 
        = __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__dff3;
    vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__state 
        = __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__state;
    vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__counter 
        = __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__counter;
    vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__btn_last 
        = __Vdly__top__DOT__bm__DOT__debounceDownL__DOT__btn_last;
    vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff3 
        = __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__dff3;
    vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__state 
        = __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__state;
    vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__counter 
        = __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__counter;
    vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__btn_last 
        = __Vdly__top__DOT__bm__DOT__debounceRightR__DOT__btn_last;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff3 
        = __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__dff3;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__state 
        = __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__state;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__counter 
        = __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__counter;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__btn_last 
        = __Vdly__top__DOT__bm__DOT__debounceLeftR__DOT__btn_last;
    vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff3 
        = __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__dff3;
    vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__state 
        = __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__state;
    vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__counter 
        = __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__counter;
    vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__btn_last 
        = __Vdly__top__DOT__bm__DOT__debounceUpR__DOT__btn_last;
    vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff3 
        = __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__dff3;
    vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__state 
        = __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__state;
    vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__counter 
        = __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__counter;
    vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__btn_last 
        = __Vdly__top__DOT__bm__DOT__debounceDownR__DOT__btn_last;
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__memStalled = 0U;
    if ((1U & (~ (IData)(vlSelfRef.top__DOT__memReady)))) {
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__memStalled = 1U;
    }
    vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff1 
        = vlSelfRef.btnRightL;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff1 
        = vlSelfRef.btnLeftL;
    vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff1 
        = vlSelfRef.btnUpL;
    vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff1 
        = vlSelfRef.btnDownL;
    vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff1 
        = vlSelfRef.btnRightR;
    vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff1 
        = vlSelfRef.btnLeftR;
    vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff1 
        = vlSelfRef.btnUpR;
    vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff1 
        = vlSelfRef.btnDownR;
}

extern const VlWide<10>/*319:0*/ Vtop__ConstPool__CONST_h68960f39_0;
extern const VlWide<10>/*319:0*/ Vtop__ConstPool__CONST_hc1d7f72a_0;
extern const VlWide<10>/*319:0*/ Vtop__ConstPool__CONST_h56e18f0c_0;
extern const VlWide<10>/*319:0*/ Vtop__ConstPool__CONST_h3d2046f2_0;
extern const VlWide<64>/*2047:0*/ Vtop__ConstPool__CONST_he872f00a_0;
extern const VlWide<64>/*2047:0*/ Vtop__ConstPool__CONST_h80087dc0_0;
extern const VlWide<64>/*2047:0*/ Vtop__ConstPool__CONST_h8b6e27ad_0;
extern const VlWide<64>/*2047:0*/ Vtop__ConstPool__CONST_h3a44c8b9_0;
extern const VlWide<64>/*2047:0*/ Vtop__ConstPool__CONST_h2fa82585_0;
extern const VlWide<64>/*2047:0*/ Vtop__ConstPool__CONST_h926170cf_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtop__ConstPool__TABLE_h8aed268e_0;
extern const VlWide<10>/*319:0*/ Vtop__ConstPool__CONST_h1a3ca879_0;
extern const VlWide<10>/*319:0*/ Vtop__ConstPool__CONST_h3d870c60_0;
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

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__1(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__1\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*6:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    CData/*5:0*/ __Vtableidx2;
    __Vtableidx2 = 0;
    CData/*0:0*/ __Vdly__top__DOT__cpu_1__DOT__keepDelayInstr;
    __Vdly__top__DOT__cpu_1__DOT__keepDelayInstr = 0;
    IData/*31:0*/ __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus = 0;
    IData/*31:0*/ __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mepc;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mepc = 0;
    IData/*31:0*/ __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause = 0;
    CData/*2:0*/ __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts = 0;
    CData/*3:0*/ __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count = 0;
    CData/*0:0*/ __Vdly__top__DOT__cpu_1__DOT__flushPipeline;
    __Vdly__top__DOT__cpu_1__DOT__flushPipeline = 0;
    QData/*63:0*/ __Vdly__top__DOT__clint_inst__DOT__mtime;
    __Vdly__top__DOT__clint_inst__DOT__mtime = 0;
    SData/*10:0*/ __Vdly__top__DOT__counter1mhz__DOT__subCounter;
    __Vdly__top__DOT__counter1mhz__DOT__subCounter = 0;
    SData/*10:0*/ __Vdly__top__DOT__counter50mhz__DOT__subCounter;
    __Vdly__top__DOT__counter50mhz__DOT__subCounter = 0;
    CData/*0:0*/ __Vdly__top__DOT__ppu_inst__DOT__hasStarted;
    __Vdly__top__DOT__ppu_inst__DOT__hasStarted = 0;
    CData/*4:0*/ __Vdly__top__DOT__ppu_inst__DOT__cur_sprite_buf;
    __Vdly__top__DOT__ppu_inst__DOT__cur_sprite_buf = 0;
    SData/*8:0*/ __Vdly__top__DOT__ppu_inst__DOT__buffer_counter;
    __Vdly__top__DOT__ppu_inst__DOT__buffer_counter = 0;
    IData/*31:0*/ __VdlyVal__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0;
    __VdlyVal__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0 = 0;
    CData/*4:0*/ __VdlyDim0__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0;
    __VdlyDim0__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0;
    __VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0 = 0;
    CData/*0:0*/ __VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v1;
    __VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v1 = 0;
    // Body
    __Vdly__top__DOT__counter50mhz__DOT__subCounter 
        = vlSelfRef.top__DOT__counter50mhz__DOT__subCounter;
    __Vdly__top__DOT__clint_inst__DOT__mtime = vlSelfRef.top__DOT__clint_inst__DOT__mtime;
    __Vdly__top__DOT__counter1mhz__DOT__subCounter 
        = vlSelfRef.top__DOT__counter1mhz__DOT__subCounter;
    __Vdly__top__DOT__cpu_1__DOT__keepDelayInstr = vlSelfRef.top__DOT__cpu_1__DOT__keepDelayInstr;
    vlSelfRef.__Vdly__top__DOT__ycursor = vlSelfRef.top__DOT__ycursor;
    vlSelfRef.__Vdly__top__DOT__xcursor = vlSelfRef.top__DOT__xcursor;
    vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__objectAttributes__v0 = 0U;
    __Vdly__top__DOT__ppu_inst__DOT__hasStarted = vlSelfRef.top__DOT__ppu_inst__DOT__hasStarted;
    vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__hblank 
        = vlSelfRef.top__DOT__ppu_inst__DOT__hblank;
    __Vdly__top__DOT__ppu_inst__DOT__cur_sprite_buf 
        = vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf;
    __Vdly__top__DOT__ppu_inst__DOT__buffer_counter 
        = vlSelfRef.top__DOT__ppu_inst__DOT__buffer_counter;
    vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__objectPointer 
        = vlSelfRef.top__DOT__ppu_inst__DOT__objectPointer;
    vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v0 = 0U;
    vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v1 = 0U;
    vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v2 = 0U;
    __VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0 = 0U;
    __VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v1 = 0U;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
        = vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mepc 
        = vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mepc;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause 
        = vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mcause;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts 
        = vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts;
    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count 
        = vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count;
    __Vdly__top__DOT__cpu_1__DOT__flushPipeline = vlSelfRef.top__DOT__cpu_1__DOT__flushPipeline;
    if (vlSelfRef.top__DOT__reset) {
        __Vdly__top__DOT__counter50mhz__DOT__subCounter 
            = (0x7ffU & ((IData)(1U) + (IData)(vlSelfRef.top__DOT__counter50mhz__DOT__subCounter)));
        if ((0U == (IData)(vlSelfRef.top__DOT__counter50mhz__DOT__subCounter))) {
            vlSelfRef.top__DOT__counter50M = ((IData)(1U) 
                                              + vlSelfRef.top__DOT__counter50M);
            __Vdly__top__DOT__counter50mhz__DOT__subCounter = 0U;
        }
        __Vdly__top__DOT__clint_inst__DOT__mtime = 
            (1ULL + vlSelfRef.top__DOT__clint_inst__DOT__mtime);
        __Vdly__top__DOT__counter1mhz__DOT__subCounter 
            = (0x7ffU & ((IData)(1U) + (IData)(vlSelfRef.top__DOT__counter1mhz__DOT__subCounter)));
        if ((0x31U == (IData)(vlSelfRef.top__DOT__counter1mhz__DOT__subCounter))) {
            vlSelfRef.top__DOT__counter1M = ((IData)(1U) 
                                             + vlSelfRef.top__DOT__counter1M);
            __Vdly__top__DOT__counter1mhz__DOT__subCounter = 0U;
        }
        if ((0x3e0U == (IData)(vlSelfRef.top__DOT__xcursor))) {
            vlSelfRef.__Vdly__top__DOT__ycursor = (0x3fffU 
                                                   & ((IData)(1U) 
                                                      + (IData)(vlSelfRef.top__DOT__ycursor)));
            vlSelfRef.__Vdly__top__DOT__xcursor = 0U;
        } else if ((0x1f0U == (IData)(vlSelfRef.top__DOT__ycursor))) {
            vlSelfRef.__Vdly__top__DOT__ycursor = 0U;
            vlSelfRef.__Vdly__top__DOT__xcursor = 0U;
        } else {
            vlSelfRef.__Vdly__top__DOT__xcursor = (0x3fffU 
                                                   & ((IData)(1U) 
                                                      + (IData)(vlSelfRef.top__DOT__xcursor)));
        }
        if ((0x320U > (IData)(vlSelfRef.top__DOT__xcursor))) {
            __Vdly__top__DOT__ppu_inst__DOT__hasStarted = 0U;
        }
        if ((((0x320U <= (IData)(vlSelfRef.top__DOT__xcursor)) 
              & (~ (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__hblank))) 
             & (~ (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__hasStarted)))) {
            __Vdly__top__DOT__ppu_inst__DOT__hasStarted = 1U;
            vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__hblank = 1U;
            __Vdly__top__DOT__ppu_inst__DOT__cur_sprite_buf = 0U;
            __Vdly__top__DOT__ppu_inst__DOT__buffer_counter = 0U;
            vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__objectPointer 
                = (0x3ffU & (VL_SHIFTL_III(10,32,32, 
                                           (0x7fU & 
                                            (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                             [0U] >> 9U)), 5U) 
                             + VL_SHIFTL_III(10,32,32, 
                                             ((0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                  >> 1U)) 
                                              - (0x1ffU 
                                                 & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                 [0U])), 1U)));
        }
        if (vlSelfRef.top__DOT__ppu_inst__DOT__hblank) {
            if ((1U & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__buffer_counter))) {
                if ((1U & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__buffer_counter))) {
                    vlSelfRef.top__DOT__ppu_inst__DOT____Vlvbound_hef58852e__0 
                        = vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite;
                    if ((0x13U >= (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf))) {
                        vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__lineBuffer__v0 
                            = vlSelfRef.top__DOT__ppu_inst__DOT____Vlvbound_hef58852e__0;
                        vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__lineBuffer__v0 
                            = vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf;
                        vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v0 = 1U;
                    }
                    __Vdly__top__DOT__ppu_inst__DOT__cur_sprite_buf 
                        = (0x1fU & ((IData)(1U) + (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf)));
                    vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__objectPointer 
                        = (0x3ffU & (VL_SHIFTL_III(10,32,32, 
                                                   (0x7fU 
                                                    & (((0x13U 
                                                         >= 
                                                         (0x1fU 
                                                          & ((IData)(1U) 
                                                             + (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf))))
                                                         ? 
                                                        vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                        [
                                                        (0x1fU 
                                                         & ((IData)(1U) 
                                                            + (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf)))]
                                                         : 0U) 
                                                       >> 9U)), 5U) 
                                     + VL_SHIFTL_III(10,32,32, 
                                                     ((0x1fffU 
                                                       & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                          >> 1U)) 
                                                      - 
                                                      ((0x13U 
                                                        >= 
                                                        (0x1fU 
                                                         & ((IData)(1U) 
                                                            + (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf))))
                                                        ? 
                                                       (0x1ffU 
                                                        & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                        [
                                                        (0x1fU 
                                                         & ((IData)(1U) 
                                                            + (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf)))])
                                                        : 0U)), 1U)));
                }
            } else {
                vlSelfRef.top__DOT__ppu_inst__DOT____Vlvbound_hef58082d__0 
                    = vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite;
                vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__objectPointer 
                    = (0x3ffU & ((IData)(1U) + (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__objectPointer)));
                if ((0x13U >= (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf))) {
                    vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__lineBuffer__v1 
                        = vlSelfRef.top__DOT__ppu_inst__DOT____Vlvbound_hef58082d__0;
                    vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__lineBuffer__v1 
                        = vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf;
                    vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v1 = 1U;
                }
            }
            __Vdly__top__DOT__ppu_inst__DOT__buffer_counter 
                = (0x1ffU & ((IData)(1U) + (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__buffer_counter)));
            if ((0x14U == (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf))) {
                vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__hblank = 0U;
            }
        }
        if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
             & (0U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr)))) {
            __VdlyVal__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0 
                = vlSelfRef.top__DOT__cpu_1__DOT__wRegData;
            __VdlyDim0__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0 
                = vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr;
            __VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0 = 1U;
        }
        vlSelfRef.top__DOT__ppu_inst__DOT__spriteID 
            = (0x7fU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0U] >> 9U));
        if (((IData)(vlSelfRef.top__DOT__flash_wen) 
             | (IData)(vlSelfRef.top__DOT__flash_ren))) {
            if ((0U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                vlSelfRef.top__DOT__flashController__DOT__stateDebug = 9U;
                if (vlSelfRef.top__DOT__flash_ren) {
                    vlSelfRef.top__DOT__flash_data_out 
                        = ((IData)(vlSelfRef.top__DOT__flashController__DOT__flash_ready)
                            ? 0xffffffffU : 0U);
                }
            } else if ((1U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                vlSelfRef.top__DOT__flashController__DOT__stateDebug = 1U;
                if ((1U & (~ (IData)(vlSelfRef.top__DOT__flash_wen)))) {
                    if (vlSelfRef.top__DOT__flash_ren) {
                        vlSelfRef.top__DOT__flash_data_out 
                            = ((IData)(vlSelfRef.top__DOT__flashController__DOT__flash_ren)
                                ? 0xffffffffU : 0U);
                    }
                }
            } else if ((2U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                vlSelfRef.top__DOT__flashController__DOT__stateDebug = 2U;
                if ((1U & (~ (IData)(vlSelfRef.top__DOT__flash_wen)))) {
                    if (vlSelfRef.top__DOT__flash_ren) {
                        vlSelfRef.top__DOT__flash_data_out 
                            = ((IData)(vlSelfRef.top__DOT__flashController__DOT__flash_wen)
                                ? 0xffffffffU : 0U);
                    }
                }
            } else if ((4U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                vlSelfRef.top__DOT__flashController__DOT__stateDebug = 3U;
                if ((1U & (~ (IData)(vlSelfRef.top__DOT__flash_wen)))) {
                    if (vlSelfRef.top__DOT__flash_ren) {
                        vlSelfRef.top__DOT__flash_data_out 
                            = vlSelfRef.top__DOT__flashController__DOT__flash_address;
                    }
                }
            } else if ((8U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                vlSelfRef.top__DOT__flashController__DOT__stateDebug = 4U;
                if ((1U & (~ (IData)(vlSelfRef.top__DOT__flash_wen)))) {
                    if (vlSelfRef.top__DOT__flash_ren) {
                        vlSelfRef.top__DOT__flash_data_out 
                            = vlSelfRef.top__DOT__flashController__DOT__flash_data_in;
                    }
                }
            } else if ((0xcU == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                vlSelfRef.top__DOT__flashController__DOT__stateDebug = 5U;
                if (vlSelfRef.top__DOT__flash_ren) {
                    vlSelfRef.top__DOT__flash_data_out 
                        = vlSelfRef.top__DOT__flashController__DOT__flash_data_out;
                }
                if (vlSelfRef.top__DOT__flash_wen) {
                    vlSelfRef.top__DOT__flash_data_out = 0xdeadbeafU;
                }
            } else {
                vlSelfRef.top__DOT__flashController__DOT__stateDebug = 0xbU;
                vlSelfRef.top__DOT__flash_data_out 
                    = (vlSelfRef.top__DOT__data_addr 
                       << 0x18U);
            }
        }
        if ((IData)((0U != (3U & vlSelfRef.top__DOT__cpu_1__DOT__PC)))) {
            vlSelfRef.top__DOT____Vcellout__cpu_1__debug_error = 1U;
        }
        vlSelfRef.top__DOT__clint_data_out = ((0x2000000U 
                                               == vlSelfRef.top__DOT__data_addr)
                                               ? (IData)(vlSelfRef.top__DOT__clint_inst__DOT__msip)
                                               : ((0x200bff8U 
                                                   == vlSelfRef.top__DOT__data_addr)
                                                   ? (IData)(vlSelfRef.top__DOT__clint_inst__DOT__mtime)
                                                   : 
                                                  ((0x200bffcU 
                                                    == vlSelfRef.top__DOT__data_addr)
                                                    ? (IData)(
                                                              (vlSelfRef.top__DOT__clint_inst__DOT__mtime 
                                                               >> 0x20U))
                                                    : 
                                                   ((0x2004000U 
                                                     == vlSelfRef.top__DOT__data_addr)
                                                     ? (IData)(vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp)
                                                     : 
                                                    ((0x2004004U 
                                                      == vlSelfRef.top__DOT__data_addr)
                                                      ? (IData)(
                                                                (vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp 
                                                                 >> 0x20U))
                                                      : 0U)))));
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_memwb) {
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_MemToReg = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_reg_type = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_PC = 0xffffffffU;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_instr = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3 = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_data = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_memwb) {
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_MemToReg 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemToReg;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_reg_type 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_reg_type;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_PC 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_PC;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut 
                = vlSelfRef.top__DOT__data_read;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_instr 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_instr;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_data 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_data;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_inA_is_PC = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUSrc = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Jump = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct7 = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs1 = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdA = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdB = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_inA_is_PC 
                = vlSelfRef.top__DOT__cpu_1__DOT__inA_is_PC;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUSrc 
                = vlSelfRef.top__DOT__cpu_1__DOT__ALUSrc;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Jump 
                = vlSelfRef.top__DOT__cpu_1__DOT__Jump;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl 
                = vlSelfRef.top__DOT__cpu_1__DOT__ALUcntrl;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct7 
                = (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                   >> 0x19U);
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs1 
                = (0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                            >> 0xfU));
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdA 
                = (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
                    & (((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                  >> 0xfU)) == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr)) 
                       & (0U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr))))
                    ? vlSelfRef.top__DOT__cpu_1__DOT__wRegData
                    : vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data
                   [(0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                              >> 0xfU))]);
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdB 
                = (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
                    & (((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                  >> 0x14U)) == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr)) 
                       & (0U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr))))
                    ? vlSelfRef.top__DOT__cpu_1__DOT__wRegData
                    : vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data
                   [(0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                              >> 0x14U))]);
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Zero = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData 
                = vlSelfRef.top__DOT__cpu_1__DOT__bypassOutB;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Zero 
                = (0U == vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val);
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite 
                = vlSelfRef.top__DOT__cpu_1__DOT__MemWrite;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemRead = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemRead 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead 
                = vlSelfRef.top__DOT__cpu_1__DOT__MemRead;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch 
                = vlSelfRef.top__DOT__cpu_1__DOT__Branch;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_BranchALUOut = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_BranchALUOut 
                = (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR)
                     ? vlSelfRef.top__DOT__cpu_1__DOT__bypassOutA
                     : vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC) 
                   + vlSelfRef.top__DOT__cpu_1__DOT__IDEX_signExtend);
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_signExtend = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_signExtend 
                = vlSelfRef.top__DOT__cpu_1__DOT__signExtend;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemToReg = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemToReg 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemToReg;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemToReg = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemToReg 
                = vlSelfRef.top__DOT__cpu_1__DOT__MemToReg;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_reg_type = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_reg_type 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type 
                = vlSelfRef.top__DOT__cpu_1__DOT__reg_type;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_PC = 0xffffffffU;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_PC 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC = 0xffffffffU;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC 
                = vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_instr = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_instr 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr 
                = vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3 = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut 
                = vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3 = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3 
                = (7U & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                         >> 0xcU));
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_memwb) {
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_memwb) {
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWrite;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_data = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWrite = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_data 
                = vlSelfRef.top__DOT__cpu_1__DOT__csr_data;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWrite 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegWrite;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr 
                = ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegDst)
                    ? (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd)
                    : (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2));
        }
        if (vlSelfRef.top__DOT__uart_ren) {
            vlSelfRef.top__DOT__uart_controller__DOT__byte_out 
                = ((0x80U & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__lcr))
                    ? ((0U == (7U & vlSelfRef.top__DOT__data_addr))
                        ? (IData)(vlSelfRef.top__DOT__uart_controller__DOT__dll)
                        : ((1U == (7U & vlSelfRef.top__DOT__data_addr))
                            ? (IData)(vlSelfRef.top__DOT__uart_controller__DOT__dlm)
                            : 0U)) : ((0U == (7U & vlSelfRef.top__DOT__data_addr))
                                       ? (IData)(vlSelfRef.top__DOT__uart_controller__DOT__rx_data)
                                       : ((1U == (7U 
                                                  & vlSelfRef.top__DOT__data_addr))
                                           ? (IData)(vlSelfRef.top__DOT__uart_controller__DOT__ier)
                                           : ((5U == 
                                               (7U 
                                                & vlSelfRef.top__DOT__data_addr))
                                               ? (IData)(vlSelfRef.top__DOT__uart_controller__DOT__lsr)
                                               : 0U))));
        }
        vlSelfRef.top__DOT__ppu_inst__DOT__writeSprite = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__writeText = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__writeAttr = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__spritesEn = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
            = (0xffffU & vlSelfRef.top__DOT__data_addr);
        vlSelfRef.top__DOT__ppu_inst__DOT__textEn = 0U;
        if (vlSelfRef.top__DOT__screen_wen) {
            if ((0xc00U <= (0xffffU & vlSelfRef.top__DOT__data_addr))) {
                if ((0x1fffU <= (0xffffU & vlSelfRef.top__DOT__data_addr))) {
                    vlSelfRef.top__DOT__ppu_inst__DOT____Vlvbound_h4cbb62ca__0 
                        = vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData;
                    if ((0x13U >= (0x1fU & ((vlSelfRef.top__DOT__data_addr 
                                             - (IData)(0x2000U)) 
                                            >> 2U)))) {
                        vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__objectAttributes__v0 
                            = vlSelfRef.top__DOT__ppu_inst__DOT____Vlvbound_h4cbb62ca__0;
                        vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__objectAttributes__v0 
                            = (0x1fU & ((vlSelfRef.top__DOT__data_addr 
                                         - (IData)(0x2000U)) 
                                        >> 2U));
                        vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__objectAttributes__v0 = 1U;
                    }
                }
                if ((0x1fffU > (0xffffU & vlSelfRef.top__DOT__data_addr))) {
                    vlSelfRef.top__DOT__ppu_inst__DOT__writeSprite 
                        = (0xffU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__data_in_half));
                    vlSelfRef.top__DOT__ppu_inst__DOT__spritesEn = 1U;
                }
            }
            if ((0xc00U > (0xffffU & vlSelfRef.top__DOT__data_addr))) {
                vlSelfRef.top__DOT__ppu_inst__DOT__writeText 
                    = (0xffU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__data_in_half));
                vlSelfRef.top__DOT__ppu_inst__DOT__writeAttr 
                    = (0xffU & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__data_in_half) 
                                >> 8U));
                vlSelfRef.top__DOT__ppu_inst__DOT__textEn = 1U;
            }
        }
        vlSelfRef.top__DOT__uart_controller__DOT__ena_tx = 0U;
        if (vlSelfRef.top__DOT__uart_wen) {
            if ((1U & (~ ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__lcr) 
                          >> 7U)))) {
                if ((0U == (7U & vlSelfRef.top__DOT__data_addr))) {
                    vlSelfRef.top__DOT__uart_controller__DOT__ena_tx = 1U;
                    vlSelfRef.top__DOT__uart_controller__DOT__tx_data 
                        = vlSelfRef.top__DOT__uart_controller__DOT__data_in;
                }
                if ((0U != (7U & vlSelfRef.top__DOT__data_addr))) {
                    if ((1U == (7U & vlSelfRef.top__DOT__data_addr))) {
                        vlSelfRef.top__DOT__uart_controller__DOT__ier 
                            = vlSelfRef.top__DOT__uart_controller__DOT__data_in;
                    }
                }
            }
            if ((0x80U & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__lcr))) {
                if ((0U == (7U & vlSelfRef.top__DOT__data_addr))) {
                    vlSelfRef.top__DOT__uart_controller__DOT__dll 
                        = vlSelfRef.top__DOT__uart_controller__DOT__data_in;
                }
                if ((0U != (7U & vlSelfRef.top__DOT__data_addr))) {
                    if ((1U == (7U & vlSelfRef.top__DOT__data_addr))) {
                        vlSelfRef.top__DOT__uart_controller__DOT__dlm 
                            = vlSelfRef.top__DOT__uart_controller__DOT__data_in;
                    }
                }
            }
            if ((1U & (~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__dlab)))) {
                if ((0U != (7U & vlSelfRef.top__DOT__data_addr))) {
                    if ((1U != (7U & vlSelfRef.top__DOT__data_addr))) {
                        if ((3U == (7U & vlSelfRef.top__DOT__data_addr))) {
                            vlSelfRef.top__DOT__uart_controller__DOT__lcr 
                                = vlSelfRef.top__DOT__uart_controller__DOT__data_in;
                        }
                    }
                }
            }
        }
        if (vlSelfRef.top__DOT__clint_wen) {
            if ((0x2000000U != vlSelfRef.top__DOT__data_addr)) {
                if ((0x2004000U == vlSelfRef.top__DOT__data_addr)) {
                    vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp 
                        = ((0xffffffff00000000ULL & vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp) 
                           | (IData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData)));
                } else if ((0x2004004U == vlSelfRef.top__DOT__data_addr)) {
                    vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp 
                        = ((0xffffffffULL & vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp) 
                           | ((QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData)) 
                              << 0x20U));
                }
            }
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed) {
            if (((((((((0x300U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr)) 
                       | (0x304U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                      | (0x305U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                     | (0x301U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                    | (0x340U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                   | (0x341U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                  | (0x342U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                 | (0x343U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr)))) {
                if ((0x300U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                        = vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data;
                } else if ((0x304U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                    if ((0x305U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                        if ((0x301U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                            if ((0x340U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                                if ((0x341U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mepc 
                                        = vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data;
                                } else if ((0x342U 
                                            == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause 
                                        = vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data;
                                }
                            }
                        }
                    }
                }
            }
        }
        vlSelfRef.top__DOT__cpu_1__DOT__csr_data = 
            (((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
               >> 0x14U) == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))
              ? vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data
              : (((((((((0x300U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                    >> 0x14U)) | (0x301U 
                                                  == 
                                                  (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                   >> 0x14U))) 
                       | (0x304U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                     >> 0x14U))) | 
                      (0x305U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                  >> 0x14U))) | (0x301U 
                                                 == 
                                                 (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                  >> 0x14U))) 
                    | (0x340U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                  >> 0x14U))) | (0x341U 
                                                 == 
                                                 (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                  >> 0x14U))) 
                  | (0x342U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                >> 0x14U))) ? ((0x300U 
                                                == 
                                                (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                 >> 0x14U))
                                                ? vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus
                                                : (
                                                   (0x301U 
                                                    == 
                                                    (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                     >> 0x14U))
                                                    ? vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__misa
                                                    : 
                                                   ((0x304U 
                                                     == 
                                                     (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                      >> 0x14U))
                                                     ? vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mie
                                                     : 
                                                    ((0x305U 
                                                      == 
                                                      (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                       >> 0x14U))
                                                      ? vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtvec
                                                      : 
                                                     ((0x301U 
                                                       == 
                                                       (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                        >> 0x14U))
                                                       ? vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatush
                                                       : 
                                                      ((0x340U 
                                                        == 
                                                        (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                         >> 0x14U))
                                                        ? vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mscratch
                                                        : 
                                                       ((0x341U 
                                                         == 
                                                         (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                          >> 0x14U))
                                                         ? vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mepc
                                                         : vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mcause)))))))
                  : ((0x343U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                 >> 0x14U)) ? vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtval
                      : ((0x344U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                     >> 0x14U)) ? vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mip
                          : 0U))));
        if ((6U >= (IData)(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts))) {
            __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts 
                = (7U & ((IData)(1U) + (IData)(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts)));
            if ((6U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts))) {
                __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                    = ((0xfffffff7U & __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus) 
                       | (8U & (vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                                >> 4U)));
            }
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__flushPipeline) {
            if (vlSelfRef.top__DOT__cpu_1__DOT__write_pc) {
                __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count 
                    = (0xfU & ((IData)(1U) + (IData)(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count)));
            }
            if ((0xdU == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count))) {
                __Vdly__top__DOT__cpu_1__DOT__flushPipeline = 0U;
                __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mepc 
                    = vlSelfRef.top__DOT__cpu_1__DOT__newmepc;
                vlSelfRef.top__DOT__cpu_1__DOT__int_taken = 1U;
            }
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_pc) {
            vlSelfRef.top__DOT__cpu_1__DOT__int_taken = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__trap_in_ID = 0U;
            if (vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting) {
                if ((0U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                            >> 0x14U))) {
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                        = ((0xffffff7fU & __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus) 
                           | (0x80U & (vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                                       << 4U)));
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mepc 
                        = vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC;
                    vlSelfRef.top__DOT__cpu_1__DOT__trap_in_ID = 1U;
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg 
                        = (0xfffffffcU & vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtvec);
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[0U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[0U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[1U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[1U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[2U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[2U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[3U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[3U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[4U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[4U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[5U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[5U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[6U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[6U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[7U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[7U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[8U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[8U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[9U] 
                        = Vtop__ConstPool__CONST_h68960f39_0[9U];
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause = 0xbU;
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                        = (0xfffffff7U & __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus);
                } else if ((1U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                   >> 0x14U))) {
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                        = ((0xffffff7fU & __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus) 
                           | (0x80U & (vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                                       << 4U)));
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[0U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[0U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[1U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[1U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[2U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[2U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[3U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[3U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[4U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[4U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[5U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[5U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[6U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[6U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[7U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[7U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[8U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[8U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[9U] 
                        = Vtop__ConstPool__CONST_hc1d7f72a_0[9U];
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mepc 
                        = vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC;
                    vlSelfRef.top__DOT__cpu_1__DOT__trap_in_ID = 1U;
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg 
                        = (0xfffffffcU & vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtvec);
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause = 3U;
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                        = (0xfffffff7U & __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus);
                } else if ((0x302U == (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                       >> 0x14U))) {
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[0U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[0U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[1U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[1U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[2U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[2U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[3U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[3U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[4U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[4U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[5U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[5U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[6U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[6U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[7U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[7U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[8U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[8U];
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[9U] 
                        = Vtop__ConstPool__CONST_h56e18f0c_0[9U];
                    vlSelfRef.top__DOT__cpu_1__DOT__trap_in_ID = 1U;
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg 
                        = vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mepc;
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts = 0U;
                }
            } else if ((8U & vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus)) {
                if ((((IData)(vlSelfRef.top__DOT__mtimer_irq) 
                      & (vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mie 
                         >> 7U)) & (vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mip 
                                    >> 7U))) {
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                        = ((0xffffff7fU & __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus) 
                           | (0x80U & (vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                                       << 4U)));
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg 
                        = (0xfffffffcU & vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtvec);
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause = 0x80000007U;
                    __Vdly__top__DOT__cpu_1__DOT__flushPipeline = 1U;
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count = 0U;
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                        = (0xfffffff7U & __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus);
                } else if ((((IData)(vlSelfRef.top__DOT__clint_inst__DOT__msip) 
                             & (vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mie 
                                >> 3U)) & (vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mip 
                                           >> 3U))) {
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                        = ((0xffffff7fU & __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus) 
                           | (0x80U & (vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                                       << 4U)));
                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg 
                        = (0xfffffffcU & vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtvec);
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause = 0x80000003U;
                    __Vdly__top__DOT__cpu_1__DOT__flushPipeline = 1U;
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count = 0U;
                    __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
                        = (0xfffffff7U & __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus);
                }
            }
        }
    } else {
        vlSelfRef.top__DOT__counter50M = 0U;
        __Vdly__top__DOT__counter50mhz__DOT__subCounter = 0U;
        __Vdly__top__DOT__clint_inst__DOT__mtime = 0ULL;
        vlSelfRef.top__DOT__counter1M = 0U;
        __Vdly__top__DOT__counter1mhz__DOT__subCounter = 0U;
        vlSelfRef.__Vdly__top__DOT__ycursor = 0U;
        vlSelfRef.__Vdly__top__DOT__xcursor = 0U;
        __Vdly__top__DOT__ppu_inst__DOT__cur_sprite_buf = 0U;
        __Vdly__top__DOT__ppu_inst__DOT__buffer_counter = 0U;
        __Vdly__top__DOT__ppu_inst__DOT__hasStarted = 0U;
        vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__hblank = 0U;
        vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v2 = 1U;
        __VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v1 = 1U;
        vlSelfRef.top__DOT__flashController__DOT__stateDebug = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData = 0U;
        vlSelfRef.top__DOT____Vcellout__cpu_1__debug_error = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_inA_is_PC = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUSrc = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Zero = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Jump = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemRead = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_MemToReg = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct7 = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_reg_type = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs1 = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_PC = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_instr = 0U;
        vlSelfRef.top__DOT__uart_controller__DOT__byte_out = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_BranchALUOut = 0U;
        vlSelfRef.top__DOT__flash_data_out = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3 = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdA = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdB = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_data = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__writeSprite = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__writeText = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__writeAttr = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__spritesEn = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__text_address = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__textEn = 0U;
        vlSelfRef.top__DOT__uart_controller__DOT__ena_tx = 0U;
        vlSelfRef.top__DOT__uart_controller__DOT__tx_data = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite = 0U;
        vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp = 0xffffffffffffffffULL;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemToReg = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_reg_type = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_PC = 0xffffffffU;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_instr = 0U;
        vlSelfRef.top__DOT__uart_controller__DOT__dll = 1U;
        vlSelfRef.top__DOT__uart_controller__DOT__dlm = 0U;
        vlSelfRef.top__DOT__uart_controller__DOT__ier = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_signExtend = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3 = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_data = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemToReg = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr = 0U;
        vlSelfRef.top__DOT__uart_controller__DOT__lcr = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3 = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWrite = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr = 0U;
        __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause = 0U;
        __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus = 0U;
        __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mepc = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__int_taken = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg = 0U;
        __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts = 7U;
        __Vdly__top__DOT__cpu_1__DOT__flushPipeline = 0U;
        __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count = 0xdU;
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[0U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[0U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[1U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[1U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[2U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[2U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[3U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[3U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[4U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[4U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[5U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[5U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[6U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[6U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[7U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[7U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[8U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[8U];
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug[9U] 
            = Vtop__ConstPool__CONST_h3d2046f2_0[9U];
    }
    if ((1U & (~ (IData)(vlSelfRef.top__DOT__reset)))) {
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__i = 0x20U;
        vlSelfRef.top__DOT__ppu_inst__DOT__i = 0x14U;
        vlSelfRef.top__DOT__cpu_1__DOT__pc_jumped = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__obj_line_buffer = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__misa = 0x40000100U;
    }
    if (vlSelfRef.top__DOT__reset) {
        if (vlSelfRef.top__DOT__clint_wen) {
            if ((0x2000000U == vlSelfRef.top__DOT__data_addr)) {
                vlSelfRef.top__DOT__clint_inst__DOT__msip 
                    = (1U & vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData);
            }
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__mepc_state) {
            if (vlSelfRef.top__DOT__cpu_1__DOT__mepc_state) {
                if ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__branch_taken) 
                      | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__Jump)) 
                     | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_JumpJALR))) {
                    IData/*31:0*/ __Vilp1;
                    __Vilp1 = 0U;
                    while ((__Vilp1 <= 0x3fU)) {
                        vlSelfRef.top__DOT__cpu_1__DOT__pc_string[__Vilp1] 
                            = Vtop__ConstPool__CONST_he872f00a_0[__Vilp1];
                        __Vilp1 = ((IData)(1U) + __Vilp1);
                    }
                    vlSelfRef.top__DOT__cpu_1__DOT__newmepc 
                        = vlSelfRef.top__DOT__cpu_1__DOT__PC_new;
                }
                if ((1U & (~ (IData)(vlSelfRef.top__DOT__cpu_1__DOT__flushPipeline)))) {
                    vlSelfRef.top__DOT__cpu_1__DOT__mepc_state = 0U;
                }
            }
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__flushPipeline) {
            if ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__branch_taken) 
                  | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__Jump)) 
                 | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_JumpJALR))) {
                IData/*31:0*/ __Vilp2;
                __Vilp2 = 0U;
                while ((__Vilp2 <= 0x3fU)) {
                    vlSelfRef.top__DOT__cpu_1__DOT__pc_string[__Vilp2] 
                        = Vtop__ConstPool__CONST_h80087dc0_0[__Vilp2];
                    __Vilp2 = ((IData)(1U) + __Vilp2);
                }
                vlSelfRef.top__DOT__cpu_1__DOT__newmepc 
                    = vlSelfRef.top__DOT__cpu_1__DOT__PC_new;
            } else if (((~ (IData)(vlSelfRef.top__DOT__cpu_1__DOT__write_pc)) 
                        & (0xffffffffU != vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC))) {
                IData/*31:0*/ __Vilp3;
                __Vilp3 = 0U;
                while ((__Vilp3 <= 0x3fU)) {
                    vlSelfRef.top__DOT__cpu_1__DOT__pc_string[__Vilp3] 
                        = Vtop__ConstPool__CONST_h8b6e27ad_0[__Vilp3];
                    __Vilp3 = ((IData)(1U) + __Vilp3);
                }
                vlSelfRef.top__DOT__cpu_1__DOT__newmepc 
                    = vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC;
            } else if ((0xffffffffU != vlSelfRef.top__DOT__cpu_1__DOT__PC_IF2)) {
                IData/*31:0*/ __Vilp4;
                __Vilp4 = 0U;
                while ((__Vilp4 <= 0x3fU)) {
                    vlSelfRef.top__DOT__cpu_1__DOT__pc_string[__Vilp4] 
                        = Vtop__ConstPool__CONST_h3a44c8b9_0[__Vilp4];
                    __Vilp4 = ((IData)(1U) + __Vilp4);
                }
                vlSelfRef.top__DOT__cpu_1__DOT__newmepc 
                    = vlSelfRef.top__DOT__cpu_1__DOT__PC_IF2;
            } else {
                IData/*31:0*/ __Vilp5;
                __Vilp5 = 0U;
                while ((__Vilp5 <= 0x3fU)) {
                    vlSelfRef.top__DOT__cpu_1__DOT__pc_string[__Vilp5] 
                        = Vtop__ConstPool__CONST_h2fa82585_0[__Vilp5];
                    __Vilp5 = ((IData)(1U) + __Vilp5);
                }
                vlSelfRef.top__DOT__cpu_1__DOT__newmepc 
                    = vlSelfRef.top__DOT__cpu_1__DOT__PC;
            }
            vlSelfRef.top__DOT__cpu_1__DOT__mepc_state = 1U;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed) {
            if (((((((((0x300U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr)) 
                       | (0x304U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                      | (0x305U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                     | (0x301U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                    | (0x340U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                   | (0x341U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                  | (0x342U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) 
                 | (0x343U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr)))) {
                if ((0x300U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                    if ((0x304U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mie 
                            = vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data;
                    }
                    if ((0x304U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                        if ((0x305U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                            vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtvec 
                                = (0xfffffffcU & vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data);
                        }
                        if ((0x305U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                            if ((0x301U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                                vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatush 
                                    = vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data;
                            }
                            if ((0x301U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                                if ((0x340U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                                    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mscratch 
                                        = vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data;
                                }
                                if ((0x340U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                                    if ((0x341U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                                        if ((0x342U 
                                             != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr))) {
                                            vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtval 
                                                = vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_JumpJALR = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_JumpJALR 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_memwb) {
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_memwb) {
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_write_allowed;
            vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr 
                = vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_addr;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_write_allowed = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_addr = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_exmem) {
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_write_allowed 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_write_allowed;
            vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_addr 
                = vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr;
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegWrite = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegDst = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2 = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_write_allowed = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_idex) {
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegWrite 
                = vlSelfRef.top__DOT__cpu_1__DOT__RegWrite;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegDst 
                = vlSelfRef.top__DOT__cpu_1__DOT__RegDst;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd 
                = (0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                            >> 7U));
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2 
                = (0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                            >> 0x14U));
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR 
                = vlSelfRef.top__DOT__cpu_1__DOT__JumpJALR;
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_write_allowed 
                = ((1U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__reg_type)) 
                   && ((0U != (3U & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                     >> 0xcU))) && 
                       ((1U == (3U & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                      >> 0xcU))) || 
                        (0U != (0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                         >> 0xfU))))));
            vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr 
                = (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                   >> 0x14U);
        }
        if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed) 
             | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid))) {
            vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC = 0xffffffffU;
            vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr = 0U;
        } else if (vlSelfRef.top__DOT__cpu_1__DOT__write_ifid) {
            vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC 
                = vlSelfRef.top__DOT__cpu_1__DOT__PC_IF2;
            vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                = ((0U == vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr)
                    ? vlSelfRef.top__DOT__instr : (
                                                   ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed) 
                                                    | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid))
                                                    ? 0U
                                                    : vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr));
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__write_ifid) {
            if (vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid) {
                vlSelfRef.top__DOT__cpu_1__DOT__PC_IF2 = 0xffffffffU;
                vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed = 1U;
            } else {
                vlSelfRef.top__DOT__cpu_1__DOT__PC_IF2 
                    = vlSelfRef.top__DOT__cpu_1__DOT__PC;
                vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed = 0U;
            }
            vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr = 0U;
            __Vdly__top__DOT__cpu_1__DOT__keepDelayInstr = 0U;
        } else {
            if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid) 
                 | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed))) {
                vlSelfRef.top__DOT__cpu_1__DOT__PC_IF2 = 0xffffffffU;
            }
            if ((1U & (~ (IData)(vlSelfRef.top__DOT__cpu_1__DOT__keepDelayInstr)))) {
                __Vdly__top__DOT__cpu_1__DOT__keepDelayInstr = 1U;
                vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr 
                    = ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__PCSrc)
                        ? 0xffffffffU : vlSelfRef.top__DOT__instr);
            }
        }
        if (vlSelfRef.top__DOT__cpu_1__DOT__write_pc) {
            vlSelfRef.top__DOT__cpu_1__DOT__PC = vlSelfRef.top__DOT__cpu_1__DOT__PC_new;
        }
    } else {
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegWrite = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegDst = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2 = 0U;
        vlSelfRef.top__DOT__clint_inst__DOT__msip = 0U;
        IData/*31:0*/ __Vilp6;
        __Vilp6 = 0U;
        while ((__Vilp6 <= 0x3fU)) {
            vlSelfRef.top__DOT__cpu_1__DOT__pc_string[__Vilp6] 
                = Vtop__ConstPool__CONST_h926170cf_0[__Vilp6];
            __Vilp6 = ((IData)(1U) + __Vilp6);
        }
        vlSelfRef.top__DOT__cpu_1__DOT__newmepc = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__mepc_state = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mie = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtvec = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatush = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mscratch = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtval = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_JumpJALR = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__PC_IF2 = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_write_allowed = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_addr = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__PC = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_write_allowed = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed = 0U;
    }
    vlSelfRef.top__DOT__cpu_1__DOT__write_pc_delayed 
        = ((IData)(vlSelfRef.top__DOT__reset) && (IData)(vlSelfRef.top__DOT__cpu_1__DOT__write_pc));
    vlSelfRef.top__DOT__counter50mhz__DOT__subCounter 
        = __Vdly__top__DOT__counter50mhz__DOT__subCounter;
    vlSelfRef.top__DOT__counter1mhz__DOT__subCounter 
        = __Vdly__top__DOT__counter1mhz__DOT__subCounter;
    vlSelfRef.top__DOT__ppu_inst__DOT__hasStarted = __Vdly__top__DOT__ppu_inst__DOT__hasStarted;
    vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf 
        = __Vdly__top__DOT__ppu_inst__DOT__cur_sprite_buf;
    vlSelfRef.top__DOT__ppu_inst__DOT__buffer_counter 
        = __Vdly__top__DOT__ppu_inst__DOT__buffer_counter;
    vlSelfRef.top__DOT__clint_inst__DOT__mtime = __Vdly__top__DOT__clint_inst__DOT__mtime;
    if (__VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0) {
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[__VdlyDim0__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0] 
            = __VdlyVal__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v0;
    }
    if (__VdlySet__top__DOT__cpu_1__DOT__cpu_regs__DOT__data__v1) {
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[1U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[2U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[3U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[4U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[5U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[6U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[7U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[8U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[9U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0xaU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0xbU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0xcU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0xdU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0xeU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0xfU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x10U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x11U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x12U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x13U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x14U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x15U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x16U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x17U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x18U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x19U] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x1aU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x1bU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x1cU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x1dU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x1eU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0x1fU] = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[2U] = 0x100U;
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
    vlSelfRef.top__DOT__cpu_1__DOT__wRegData = ((0U 
                                                 == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_reg_type))
                                                 ? 
                                                ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_MemToReg)
                                                  ? vlSelfRef.top__DOT__cpu_1__DOT__MemOut
                                                  : vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut)
                                                 : vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_data);
    vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector 
        = (0xfU & ((0U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3))
                    ? ((IData)(1U) << (3U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut))
                    : ((1U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3))
                        ? ((2U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)
                            ? 0xcU : 3U) : 0xfU)));
    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus 
        = __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mstatus;
    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mepc 
        = __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mepc;
    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mcause 
        = __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__mcause;
    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts 
        = __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts;
    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count 
        = __Vdly__top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count;
    vlSelfRef.top__DOT__mtimer_irq = (vlSelfRef.top__DOT__clint_inst__DOT__mtime 
                                      >= vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp);
    vlSelfRef.top__DOT__uart_controller__DOT__dlab 
        = (1U & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__lcr) 
                 >> 7U));
    vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string = 0x44454641554c54ULL;
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
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__bubble_memwb = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string 
        = ((8U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
            ? ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                ? ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                    ? ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                        ? 0x50415353ULL : 0x434c454152ULL)
                    : ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                        ? 0x44454641554c54ULL : 0x4155495043ULL))
                : ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                    ? ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                        ? 0x4c5549ULL : 0x53554255ULL)
                    : ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                        ? 0x534c5455ULL : 0x534c54ULL)))
            : ((4U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                ? ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                    ? ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                        ? 0x535241ULL : 0x53524cULL)
                    : ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                        ? 0x534c4cULL : 0x414e44ULL))
                : ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                    ? ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                        ? 0x4f52ULL : 0x584f52ULL) : 
                   ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                     ? 0x535542ULL : 0x414444ULL))));
    vlSelfRef.top__DOT__cpu_1__DOT__flushPipeline = __Vdly__top__DOT__cpu_1__DOT__flushPipeline;
    __Vtableidx2 = ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Zero) 
                      << 5U) | (0x10U & (vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut 
                                         >> 0x1bU))) 
                    | (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3) 
                        << 1U) | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch)));
    vlSelfRef.top__DOT__cpu_1__DOT__branch_taken = 
        Vtop__ConstPool__TABLE_h8aed268e_0[__Vtableidx2];
    vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mip 
        = (((IData)(vlSelfRef.top__DOT__mtimer_irq) 
            << 7U) | ((IData)(vlSelfRef.top__DOT__clint_inst__DOT__msip) 
                      << 3U));
    vlSelfRef.top__DOT__ren = ((~ (IData)(vlSelfRef.top__DOT__cpu_1__DOT__branch_taken)) 
                               & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead));
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
    }
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
    vlSelfRef.top__DOT__cpu_1__DOT__keepDelayInstr 
        = __Vdly__top__DOT__cpu_1__DOT__keepDelayInstr;
    vlSelfRef.top__DOT__cpu_1__DOT__PCSrc = ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_JumpJALR) 
                                             | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__branch_taken));
    vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem = 0U;
    if (vlSelfRef.top__DOT__cpu_1__DOT__int_taken) {
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__bubble_memwb = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem = 1U;
    } else if (vlSelfRef.top__DOT__cpu_1__DOT__PCSrc) {
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem = 1U;
    }
}

extern const VlWide<512>/*16383:0*/ Vtop__ConstPool__CONST_hd74c513e_0;

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__2(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__2\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.top__DOT__ppu_inst__DOT__i = 0x14U;
    vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
    if (((0x260U <= (IData)(vlSelfRef.top__DOT__ycursor)) 
         | (0x190U <= (IData)(vlSelfRef.top__DOT__xcursor)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = ((0x1b8U 
                                                 < (IData)(vlSelfRef.top__DOT__xcursor))
                                                 ? 
                                                ((1U 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                                     [0U] 
                                                     >> 
                                                     ((IData)(1U) 
                                                      + 
                                                      (0xfU 
                                                       & (IData)(vlSelfRef.top__DOT__xcursor)))))
                                                  ? 
                                                 ((1U 
                                                   & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                                      [0U] 
                                                      >> 
                                                      (0xfU 
                                                       & (IData)(vlSelfRef.top__DOT__xcursor))))
                                                   ? 0xffU
                                                   : 0x96U)
                                                  : 
                                                 ((1U 
                                                   & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                                      [0U] 
                                                      >> 
                                                      (0xfU 
                                                       & (IData)(vlSelfRef.top__DOT__xcursor))))
                                                   ? 0x40U
                                                   : 0U))
                                                 : 0U);
    }
    if ((0x80U <= (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = ((1U 
                                                 & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite) 
                                                    >> 
                                                    ((IData)(1U) 
                                                     + 
                                                     (7U 
                                                      & VL_SHIFTL_III(14,14,14, 
                                                                      (3U 
                                                                       & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                          >> 1U)), 1U)))))
                                                 ? 
                                                ((1U 
                                                  & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite) 
                                                     >> 
                                                     (7U 
                                                      & VL_SHIFTL_III(14,14,14, 
                                                                      (3U 
                                                                       & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                          >> 1U)), 1U))))
                                                  ? 0xffU
                                                  : 0x96U)
                                                 : 
                                                ((1U 
                                                  & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite) 
                                                     >> 
                                                     (7U 
                                                      & VL_SHIFTL_III(14,14,14, 
                                                                      (3U 
                                                                       & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                          >> 1U)), 1U))))
                                                  ? 0x40U
                                                  : 0U));
    } else if ((1U & (Vtop__ConstPool__CONST_hd74c513e_0[
                      (0x1ffU & ((((IData)(0x3f80U) 
                                   - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                  + (0x7fU & ((IData)(0x7fU) 
                                              - ((0x78U 
                                                  & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                     << 2U)) 
                                                 | (7U 
                                                    & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                       >> 1U)))))) 
                                 >> 5U))] >> (0x1fU 
                                              & (((IData)(0x3f80U) 
                                                  - 
                                                  VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                 + 
                                                 (0x7fU 
                                                  & ((IData)(0x7fU) 
                                                     - 
                                                     ((0x78U 
                                                       & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                          << 2U)) 
                                                      | (7U 
                                                         & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U)))))))))) {
        if ((0U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((1U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x7fU;
        } else if ((3U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x7fU;
        } else if ((4U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((5U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((6U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x7fU;
        } else if ((7U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x40U;
        } else if ((8U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x7fU;
        } else if ((9U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((0xaU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        } else if ((0xbU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        } else if ((0xcU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((0xdU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((0xeU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        } else if ((0xfU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    } else if ((0U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
    } else if ((1U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
    } else if ((2U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
    } else if ((3U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
    } else if ((4U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
    } else if ((5U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
    } else if ((6U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
    } else if ((7U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [0U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [0U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [0U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [0U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [0U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [1U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [1U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [1U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [1U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [1U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [1U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [1U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [1U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [1U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [1U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [1U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [2U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [2U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [2U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [2U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [2U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [2U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [2U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [2U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [2U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [2U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [2U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [3U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [3U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [3U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [3U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [3U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [3U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [3U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [3U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [3U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [3U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [3U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [4U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [4U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [4U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [4U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [4U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [4U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [4U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [4U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [4U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [4U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [4U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [5U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [5U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [5U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [5U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [5U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [5U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [5U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [5U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [5U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [5U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [5U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [6U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [6U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [6U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [6U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [6U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [6U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [6U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [6U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [6U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [6U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [6U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [7U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [7U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [7U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [7U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [7U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [7U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [7U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [7U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [7U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [7U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [7U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [8U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [8U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [8U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [8U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [8U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [8U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [8U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [8U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [8U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [8U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [8U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [9U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [9U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [9U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [9U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [9U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [9U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [9U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [9U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [9U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [9U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [9U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xaU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xaU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xaU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xaU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xaU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xaU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xaU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xaU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xaU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xaU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xaU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xbU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xbU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xbU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xbU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xbU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xbU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xbU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xbU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xbU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xbU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xbU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xcU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xcU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xcU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xcU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xcU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xcU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xcU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xcU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xcU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xcU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xcU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xdU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xdU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xdU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xdU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xdU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xdU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xdU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xdU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xdU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xdU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xdU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xeU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xeU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xeU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xeU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xeU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xeU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xeU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xeU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xeU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xeU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xeU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xfU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xfU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xfU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xfU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xfU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xfU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xfU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xfU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xfU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xfU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xfU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x10U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x10U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x10U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x10U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x10U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x10U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x10U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x10U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x10U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x10U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x10U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x11U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x11U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x11U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x11U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x11U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x11U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x11U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x11U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x11U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x11U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x11U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x12U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x12U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x12U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x12U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x12U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x12U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x12U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x12U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x12U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x12U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x12U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x13U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x13U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x13U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x13U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x13U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x13U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x13U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x13U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x13U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x13U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x13U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__g = 0xffU;
        }
    }
    if (vlSelfRef.top__DOT__ppu_inst__DOT__hblank) {
        vlSelfRef.top__DOT__ppu_inst__DOT__g = 0x9bU;
    }
    vlSelfRef.top__DOT__G_tmp = (0x3fU & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__g) 
                                          >> 2U));
    vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
    if (((0x260U <= (IData)(vlSelfRef.top__DOT__ycursor)) 
         | (0x190U <= (IData)(vlSelfRef.top__DOT__xcursor)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = ((0x1b8U 
                                                 < (IData)(vlSelfRef.top__DOT__xcursor))
                                                 ? 
                                                ((1U 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                                     [0U] 
                                                     >> 
                                                     ((IData)(1U) 
                                                      + 
                                                      (0xfU 
                                                       & (IData)(vlSelfRef.top__DOT__xcursor)))))
                                                  ? 
                                                 ((1U 
                                                   & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                                      [0U] 
                                                      >> 
                                                      (0xfU 
                                                       & (IData)(vlSelfRef.top__DOT__xcursor))))
                                                   ? 0xffU
                                                   : 0x96U)
                                                  : 
                                                 ((1U 
                                                   & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                                      [0U] 
                                                      >> 
                                                      (0xfU 
                                                       & (IData)(vlSelfRef.top__DOT__xcursor))))
                                                   ? 0x40U
                                                   : 0U))
                                                 : 0x32U);
    }
    if ((0x80U <= (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = ((1U 
                                                 & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite) 
                                                    >> 
                                                    ((IData)(1U) 
                                                     + 
                                                     (7U 
                                                      & VL_SHIFTL_III(14,14,14, 
                                                                      (3U 
                                                                       & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                          >> 1U)), 1U)))))
                                                 ? 
                                                ((1U 
                                                  & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite) 
                                                     >> 
                                                     (7U 
                                                      & VL_SHIFTL_III(14,14,14, 
                                                                      (3U 
                                                                       & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                          >> 1U)), 1U))))
                                                  ? 0xffU
                                                  : 0x96U)
                                                 : 
                                                ((1U 
                                                  & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite) 
                                                     >> 
                                                     (7U 
                                                      & VL_SHIFTL_III(14,14,14, 
                                                                      (3U 
                                                                       & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                          >> 1U)), 1U))))
                                                  ? 0x40U
                                                  : 0U));
    } else if ((1U & (Vtop__ConstPool__CONST_hd74c513e_0[
                      (0x1ffU & ((((IData)(0x3f80U) 
                                   - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                  + (0x7fU & ((IData)(0x7fU) 
                                              - ((0x78U 
                                                  & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                     << 2U)) 
                                                 | (7U 
                                                    & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                       >> 1U)))))) 
                                 >> 5U))] >> (0x1fU 
                                              & (((IData)(0x3f80U) 
                                                  - 
                                                  VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                 + 
                                                 (0x7fU 
                                                  & ((IData)(0x7fU) 
                                                     - 
                                                     ((0x78U 
                                                       & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                          << 2U)) 
                                                      | (7U 
                                                         & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U)))))))))) {
        if ((0U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((1U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x7fU;
        } else if ((2U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((3U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x7fU;
        } else if ((4U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((5U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x7fU;
        } else if ((6U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((7U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x40U;
        } else if ((8U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x7fU;
        } else if ((9U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        } else if ((0xaU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((0xbU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        } else if ((0xcU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((0xdU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        } else if ((0xeU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((0xfU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    } else if ((0U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
    } else if ((1U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
    } else if ((2U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
    } else if ((3U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
    } else if ((4U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
    } else if ((5U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
    } else if ((6U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
    } else if ((7U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [0U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [0U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [0U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [0U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [0U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [1U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [1U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [1U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [1U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [1U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [1U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [1U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [1U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [1U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [1U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [1U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [2U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [2U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [2U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [2U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [2U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [2U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [2U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [2U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [2U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [2U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [2U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [3U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [3U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [3U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [3U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [3U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [3U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [3U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [3U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [3U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [3U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [3U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [4U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [4U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [4U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [4U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [4U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [4U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [4U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [4U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [4U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [4U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [4U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [5U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [5U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [5U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [5U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [5U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [5U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [5U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [5U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [5U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [5U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [5U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [6U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [6U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [6U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [6U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [6U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [6U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [6U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [6U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [6U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [6U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [6U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [7U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [7U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [7U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [7U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [7U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [7U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [7U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [7U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [7U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [7U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [7U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [8U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [8U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [8U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [8U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [8U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [8U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [8U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [8U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [8U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [8U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [8U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [9U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [9U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [9U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [9U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [9U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [9U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [9U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [9U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [9U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [9U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [9U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xaU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xaU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xaU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xaU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xaU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xaU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xaU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xaU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xaU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xaU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xaU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xbU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xbU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xbU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xbU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xbU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xbU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xbU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xbU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xbU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xbU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xbU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xcU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xcU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xcU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xcU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xcU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xcU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xcU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xcU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xcU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xcU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xcU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xdU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xdU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xdU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xdU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xdU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xdU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xdU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xdU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xdU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xdU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xdU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xeU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xeU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xeU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xeU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xeU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xeU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xeU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xeU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xeU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xeU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xeU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xfU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xfU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xfU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xfU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xfU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xfU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xfU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xfU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xfU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xfU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xfU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x10U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x10U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x10U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x10U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x10U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x10U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x10U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x10U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x10U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x10U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x10U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x11U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x11U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x11U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x11U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x11U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x11U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x11U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x11U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x11U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x11U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x11U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x12U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x12U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x12U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x12U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x12U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x12U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x12U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x12U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x12U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x12U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x12U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x13U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x13U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x13U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x13U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x13U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x13U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x13U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x13U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x13U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x13U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x13U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__r = 0xffU;
        }
    }
    if (vlSelfRef.top__DOT__ppu_inst__DOT__hblank) {
        vlSelfRef.top__DOT__ppu_inst__DOT__r = 0U;
    }
    vlSelfRef.top__DOT__R_tmp = (0x1fU & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__r) 
                                          >> 3U));
    vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
    if (((0x260U <= (IData)(vlSelfRef.top__DOT__ycursor)) 
         | (0x190U <= (IData)(vlSelfRef.top__DOT__xcursor)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = ((0x1b8U 
                                                 < (IData)(vlSelfRef.top__DOT__xcursor))
                                                 ? 
                                                ((1U 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                                     [0U] 
                                                     >> 
                                                     ((IData)(1U) 
                                                      + 
                                                      (0xfU 
                                                       & (IData)(vlSelfRef.top__DOT__xcursor)))))
                                                  ? 
                                                 ((1U 
                                                   & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                                      [0U] 
                                                      >> 
                                                      (0xfU 
                                                       & (IData)(vlSelfRef.top__DOT__xcursor))))
                                                   ? 0xffU
                                                   : 0x96U)
                                                  : 
                                                 ((1U 
                                                   & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                                      [0U] 
                                                      >> 
                                                      (0xfU 
                                                       & (IData)(vlSelfRef.top__DOT__xcursor))))
                                                   ? 0x40U
                                                   : 0U))
                                                 : 0x32U);
    }
    if ((0x80U <= (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = ((1U 
                                                 & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite) 
                                                    >> 
                                                    ((IData)(1U) 
                                                     + 
                                                     (7U 
                                                      & VL_SHIFTL_III(14,14,14, 
                                                                      (3U 
                                                                       & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                          >> 1U)), 1U)))))
                                                 ? 
                                                ((1U 
                                                  & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite) 
                                                     >> 
                                                     (7U 
                                                      & VL_SHIFTL_III(14,14,14, 
                                                                      (3U 
                                                                       & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                          >> 1U)), 1U))))
                                                  ? 0xffU
                                                  : 0x96U)
                                                 : 
                                                ((1U 
                                                  & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite) 
                                                     >> 
                                                     (7U 
                                                      & VL_SHIFTL_III(14,14,14, 
                                                                      (3U 
                                                                       & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                          >> 1U)), 1U))))
                                                  ? 0x40U
                                                  : 0U));
    } else if ((1U & (Vtop__ConstPool__CONST_hd74c513e_0[
                      (0x1ffU & ((((IData)(0x3f80U) 
                                   - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                  + (0x7fU & ((IData)(0x7fU) 
                                              - ((0x78U 
                                                  & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                     << 2U)) 
                                                 | (7U 
                                                    & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                       >> 1U)))))) 
                                 >> 5U))] >> (0x1fU 
                                              & (((IData)(0x3f80U) 
                                                  - 
                                                  VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                 + 
                                                 (0x7fU 
                                                  & ((IData)(0x7fU) 
                                                     - 
                                                     ((0x78U 
                                                       & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                          << 2U)) 
                                                      | (7U 
                                                         & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U)))))))))) {
        if ((0U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((1U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((3U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((4U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x7fU;
        } else if ((5U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x7fU;
        } else if ((6U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x7fU;
        } else if ((7U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x40U;
        } else if ((8U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x7fU;
        } else if ((9U == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((0xaU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((0xbU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((0xcU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        } else if ((0xdU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        } else if ((0xeU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        } else if ((0xfU == (0xfU & (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr)))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    } else if ((0U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
    } else if ((1U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
    } else if ((2U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
    } else if ((3U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
    } else if ((4U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
    } else if ((5U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
    } else if ((6U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
    } else if ((7U == (7U & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr) 
                             >> 4U)))) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [0U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [0U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [0U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [0U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [0U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [1U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [1U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [1U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [1U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [1U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [1U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [1U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [1U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [1U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [1U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [1U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [2U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [2U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [2U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [2U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [2U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [2U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [2U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [2U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [2U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [2U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [2U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [3U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [3U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [3U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [3U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [3U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [3U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [3U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [3U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [3U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [3U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [3U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [4U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [4U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [4U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [4U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [4U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [4U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [4U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [4U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [4U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [4U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [4U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [5U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [5U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [5U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [5U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [5U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [5U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [5U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [5U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [5U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [5U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [5U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [6U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [6U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [6U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [6U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [6U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [6U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [6U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [6U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [6U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [6U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [6U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [7U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [7U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [7U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [7U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [7U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [7U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [7U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [7U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [7U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [7U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [7U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [8U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [8U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [8U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [8U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [8U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [8U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [8U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [8U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [8U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [8U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [8U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [9U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                [9U]) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__ycursor) 
                                           >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [9U])))) & 
          ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                      [9U] >> 0x10U)) <= (0x1fffU & 
                                          ((IData)(vlSelfRef.top__DOT__xcursor) 
                                           >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [9U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [9U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                        (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                          >> 1U) 
                                                         - 
                                                         (7U 
                                                          & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                             [9U] 
                                                             >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [9U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [9U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [9U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                               (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                                 >> 1U) 
                                                                - 
                                                                (7U 
                                                                 & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                    [9U] 
                                                                    >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xaU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xaU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xaU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xaU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xaU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xaU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xaU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xaU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xaU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xaU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xaU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xbU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xbU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xbU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xbU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xbU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xbU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xbU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xbU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xbU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xbU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xbU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xcU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xcU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xcU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xcU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xcU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xcU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xcU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xcU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xcU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xcU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xcU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xdU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xdU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xdU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xdU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xdU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xdU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xdU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xdU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xdU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xdU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xdU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xeU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xeU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xeU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xeU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xeU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xeU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xeU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xeU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xeU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xeU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xeU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0xfU] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0xfU]) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                 >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0xfU])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0xfU] >> 0x10U)) <= (0x1fffU 
                                              & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                 >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0xfU] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0xfU] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xfU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xfU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xfU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0xfU] >> (0xfU & 
                                            VL_SHIFTL_III(13,13,32, 
                                                          (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                            >> 1U) 
                                                           - 
                                                           (7U 
                                                            & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                               [0xfU] 
                                                               >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x10U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x10U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x10U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x10U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x10U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x10U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x10U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x10U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x10U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x10U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x10U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x11U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x11U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x11U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x11U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x11U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x11U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x11U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x11U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x11U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x11U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x11U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x12U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x12U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x12U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x12U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x12U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x12U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x12U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x12U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x12U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x12U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x12U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if ((((((vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
             [0x13U] >> 0x1fU) & ((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                   [0x13U]) <= (0x1fffU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)))) 
           & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                          >> 1U)) < ((IData)(0x10U) 
                                     + (0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                        [0x13U])))) 
          & ((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                        [0x13U] >> 0x10U)) <= (0x1fffU 
                                               & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                  >> 1U)))) 
         & ((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                        >> 1U)) < ((IData)(8U) + (0x1ffU 
                                                  & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                     [0x13U] 
                                                     >> 0x10U)))))) {
        if ((1U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                          [0x13U] >> (0xfU & VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x13U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
        } else if ((2U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x13U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x13U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0x96U;
        } else if ((3U == (3U & (vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                                 [0x13U] >> (0xfU & 
                                             VL_SHIFTL_III(13,13,32, 
                                                           (((IData)(vlSelfRef.top__DOT__xcursor) 
                                                             >> 1U) 
                                                            - 
                                                            (7U 
                                                             & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                                                [0x13U] 
                                                                >> 0x10U))), 1U)))))) {
            vlSelfRef.top__DOT__ppu_inst__DOT__b = 0xffU;
        }
    }
    if (vlSelfRef.top__DOT__ppu_inst__DOT__hblank) {
        vlSelfRef.top__DOT__ppu_inst__DOT__b = 0U;
    }
    vlSelfRef.top__DOT__B_tmp = (0x1fU & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__b) 
                                          >> 3U));
}

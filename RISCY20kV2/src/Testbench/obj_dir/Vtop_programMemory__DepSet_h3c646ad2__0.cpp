// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop__Syms.h"
#include "Vtop_programMemory.h"

VL_INLINE_OPT void Vtop_programMemory___nba_sequent__TOP__top__DOT__SecondStageRAM__0(Vtop_programMemory* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        Vtop_programMemory___nba_sequent__TOP__top__DOT__SecondStageRAM__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*7:0*/ __VdlyVal__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyVal__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    SData/*10:0*/ __VdlyDim0__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyDim0__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*0:0*/ __VdlySet__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlySet__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*7:0*/ __VdlyVal__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyVal__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    SData/*10:0*/ __VdlyDim0__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyDim0__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*0:0*/ __VdlySet__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlySet__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*7:0*/ __VdlyVal__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyVal__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    SData/*10:0*/ __VdlyDim0__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyDim0__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*0:0*/ __VdlySet__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlySet__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*7:0*/ __VdlyVal__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyVal__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    SData/*10:0*/ __VdlyDim0__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyDim0__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*0:0*/ __VdlySet__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlySet__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*7:0*/ __VdlyVal__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyVal__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    SData/*10:0*/ __VdlyDim0__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyDim0__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*0:0*/ __VdlySet__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlySet__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*7:0*/ __VdlyVal__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyVal__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    SData/*10:0*/ __VdlyDim0__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyDim0__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*0:0*/ __VdlySet__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlySet__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*7:0*/ __VdlyVal__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyVal__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    SData/*10:0*/ __VdlyDim0__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyDim0__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*0:0*/ __VdlySet__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlySet__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*7:0*/ __VdlyVal__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyVal__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    SData/*10:0*/ __VdlyDim0__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlyDim0__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    CData/*0:0*/ __VdlySet__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0;
    __VdlySet__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0 = 0;
    // Body
    __VdlySet__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0 = 0U;
    __VdlySet__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0 = 0U;
    __VdlySet__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0 = 0U;
    __VdlySet__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0 = 0U;
    __VdlySet__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0 = 0U;
    __VdlySet__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0 = 0U;
    __VdlySet__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0 = 0U;
    __VdlySet__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0 = 0U;
    if (vlSymsp->TOP.top__DOT__reset) {
        if (((0x800U > (0x7ffffU & (vlSymsp->TOP.top__DOT__data_addr 
                                    >> 2U))) & (IData)(vlSelfRef.__PVT__wen0))) {
            __VdlyVal__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0 
                = (0xffU & vlSymsp->TOP.top__DOT__cpu_1__DOT__MemWriteData);
            __VdlyDim0__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0 
                = (0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                             << 1U));
            __VdlySet__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0 = 1U;
        }
        if (((0x800U > (0x7ffffU & (vlSymsp->TOP.top__DOT__data_addr 
                                    >> 2U))) & (IData)(vlSelfRef.__PVT__wen1))) {
            __VdlyVal__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0 
                = (0xffU & (vlSymsp->TOP.top__DOT__cpu_1__DOT__MemWriteData 
                            >> 8U));
            __VdlyDim0__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0 
                = (0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                             << 1U));
            __VdlySet__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0 = 1U;
        }
        if (((0x800U > (0x7ffffU & (vlSymsp->TOP.top__DOT__data_addr 
                                    >> 2U))) & (IData)(vlSelfRef.__PVT__wen2))) {
            __VdlyVal__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0 
                = (0xffU & (vlSymsp->TOP.top__DOT__cpu_1__DOT__MemWriteData 
                            >> 0x10U));
            __VdlyDim0__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0 
                = (0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                             << 1U));
            __VdlySet__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0 = 1U;
        }
        if (((0x800U > (0x7ffffU & (vlSymsp->TOP.top__DOT__data_addr 
                                    >> 2U))) & (IData)(vlSelfRef.__PVT__wen3))) {
            __VdlyVal__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0 
                = (vlSymsp->TOP.top__DOT__cpu_1__DOT__MemWriteData 
                   >> 0x18U);
            __VdlyDim0__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0 
                = (0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                             << 1U));
            __VdlySet__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0 = 1U;
        }
        if (((0x800U <= (0x7ffffU & (vlSymsp->TOP.top__DOT__data_addr 
                                     >> 2U))) & (IData)(vlSelfRef.__PVT__wen0))) {
            __VdlyVal__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0 
                = (0xffU & vlSymsp->TOP.top__DOT__cpu_1__DOT__MemWriteData);
            __VdlyDim0__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0 
                = (0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                             << 1U));
            __VdlySet__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0 = 1U;
        }
        if (((0x800U <= (0x7ffffU & (vlSymsp->TOP.top__DOT__data_addr 
                                     >> 2U))) & (IData)(vlSelfRef.__PVT__wen1))) {
            __VdlyVal__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0 
                = (0xffU & (vlSymsp->TOP.top__DOT__cpu_1__DOT__MemWriteData 
                            >> 8U));
            __VdlyDim0__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0 
                = (0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                             << 1U));
            __VdlySet__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0 = 1U;
        }
        if (((0x800U <= (0x7ffffU & (vlSymsp->TOP.top__DOT__data_addr 
                                     >> 2U))) & (IData)(vlSelfRef.__PVT__wen2))) {
            __VdlyVal__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0 
                = (0xffU & (vlSymsp->TOP.top__DOT__cpu_1__DOT__MemWriteData 
                            >> 0x10U));
            __VdlyDim0__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0 
                = (0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                             << 1U));
            __VdlySet__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0 = 1U;
        }
        if (((0x800U <= (0x7ffffU & (vlSymsp->TOP.top__DOT__data_addr 
                                     >> 2U))) & (IData)(vlSelfRef.__PVT__wen3))) {
            __VdlyVal__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0 
                = (vlSymsp->TOP.top__DOT__cpu_1__DOT__MemWriteData 
                   >> 0x18U);
            __VdlyDim0__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0 
                = (0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                             << 1U));
            __VdlySet__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0 = 1U;
        }
        vlSelfRef.BRAM_0__DOT____Vcellout__dpb_inst_0__DOB 
            = vlSelfRef.__PVT__BRAM_0__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                        << 1U))];
        vlSelfRef.BRAM_1__DOT____Vcellout__dpb_inst_0__DOB 
            = vlSelfRef.__PVT__BRAM_1__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                        << 1U))];
        vlSelfRef.BRAM_2__DOT____Vcellout__dpb_inst_0__DOB 
            = vlSelfRef.__PVT__BRAM_2__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                        << 1U))];
        vlSelfRef.BRAM_3__DOT____Vcellout__dpb_inst_0__DOB 
            = vlSelfRef.__PVT__BRAM_3__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                        << 1U))];
        vlSelfRef.BRAM2_0__DOT____Vcellout__dpb_inst_0__DOB 
            = vlSelfRef.__PVT__BRAM2_0__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                        << 1U))];
        vlSelfRef.BRAM2_1__DOT____Vcellout__dpb_inst_0__DOB 
            = vlSelfRef.__PVT__BRAM2_1__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                        << 1U))];
        vlSelfRef.BRAM2_2__DOT____Vcellout__dpb_inst_0__DOB 
            = vlSelfRef.__PVT__BRAM2_2__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                        << 1U))];
        vlSelfRef.BRAM2_3__DOT____Vcellout__dpb_inst_0__DOB 
            = vlSelfRef.__PVT__BRAM2_3__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__data_addr 
                        << 1U))];
        vlSelfRef.BRAM_0__DOT____Vcellout__dpb_inst_0__DOA 
            = vlSelfRef.__PVT__BRAM_0__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__cpu_1__DOT__PC 
                        << 1U))];
        vlSelfRef.BRAM_1__DOT____Vcellout__dpb_inst_0__DOA 
            = vlSelfRef.__PVT__BRAM_1__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__cpu_1__DOT__PC 
                        << 1U))];
        vlSelfRef.BRAM_2__DOT____Vcellout__dpb_inst_0__DOA 
            = vlSelfRef.__PVT__BRAM_2__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__cpu_1__DOT__PC 
                        << 1U))];
        vlSelfRef.BRAM_3__DOT____Vcellout__dpb_inst_0__DOA 
            = vlSelfRef.__PVT__BRAM_3__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__cpu_1__DOT__PC 
                        << 1U))];
        vlSelfRef.BRAM2_0__DOT____Vcellout__dpb_inst_0__DOA 
            = vlSelfRef.__PVT__BRAM2_0__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__cpu_1__DOT__PC 
                        << 1U))];
        vlSelfRef.BRAM2_1__DOT____Vcellout__dpb_inst_0__DOA 
            = vlSelfRef.__PVT__BRAM2_1__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__cpu_1__DOT__PC 
                        << 1U))];
        vlSelfRef.BRAM2_2__DOT____Vcellout__dpb_inst_0__DOA 
            = vlSelfRef.__PVT__BRAM2_2__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__cpu_1__DOT__PC 
                        << 1U))];
        vlSelfRef.BRAM2_3__DOT____Vcellout__dpb_inst_0__DOA 
            = vlSelfRef.__PVT__BRAM2_3__DOT__dpb_inst_0__DOT__memory
            [(0x7f8U & (vlSymsp->TOP.top__DOT__cpu_1__DOT__PC 
                        << 1U))];
    } else {
        vlSelfRef.BRAM_0__DOT____Vcellout__dpb_inst_0__DOB = 0U;
        vlSelfRef.BRAM_1__DOT____Vcellout__dpb_inst_0__DOB = 0U;
        vlSelfRef.BRAM_2__DOT____Vcellout__dpb_inst_0__DOB = 0U;
        vlSelfRef.BRAM_3__DOT____Vcellout__dpb_inst_0__DOB = 0U;
        vlSelfRef.BRAM2_0__DOT____Vcellout__dpb_inst_0__DOB = 0U;
        vlSelfRef.BRAM2_1__DOT____Vcellout__dpb_inst_0__DOB = 0U;
        vlSelfRef.BRAM2_2__DOT____Vcellout__dpb_inst_0__DOB = 0U;
        vlSelfRef.BRAM2_3__DOT____Vcellout__dpb_inst_0__DOB = 0U;
        vlSelfRef.BRAM_0__DOT____Vcellout__dpb_inst_0__DOA = 0U;
        vlSelfRef.BRAM_1__DOT____Vcellout__dpb_inst_0__DOA = 0U;
        vlSelfRef.BRAM_2__DOT____Vcellout__dpb_inst_0__DOA = 0U;
        vlSelfRef.BRAM_3__DOT____Vcellout__dpb_inst_0__DOA = 0U;
        vlSelfRef.BRAM2_0__DOT____Vcellout__dpb_inst_0__DOA = 0U;
        vlSelfRef.BRAM2_1__DOT____Vcellout__dpb_inst_0__DOA = 0U;
        vlSelfRef.BRAM2_2__DOT____Vcellout__dpb_inst_0__DOA = 0U;
        vlSelfRef.BRAM2_3__DOT____Vcellout__dpb_inst_0__DOA = 0U;
    }
    if (__VdlySet__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0) {
        vlSelfRef.__PVT__BRAM_0__DOT__dpb_inst_0__DOT__memory[__VdlyDim0__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0] 
            = __VdlyVal__BRAM_0__DOT__dpb_inst_0__DOT__memory__v0;
    }
    if (__VdlySet__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0) {
        vlSelfRef.__PVT__BRAM_1__DOT__dpb_inst_0__DOT__memory[__VdlyDim0__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0] 
            = __VdlyVal__BRAM_1__DOT__dpb_inst_0__DOT__memory__v0;
    }
    if (__VdlySet__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0) {
        vlSelfRef.__PVT__BRAM_2__DOT__dpb_inst_0__DOT__memory[__VdlyDim0__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0] 
            = __VdlyVal__BRAM_2__DOT__dpb_inst_0__DOT__memory__v0;
    }
    if (__VdlySet__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0) {
        vlSelfRef.__PVT__BRAM_3__DOT__dpb_inst_0__DOT__memory[__VdlyDim0__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0] 
            = __VdlyVal__BRAM_3__DOT__dpb_inst_0__DOT__memory__v0;
    }
    if (__VdlySet__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0) {
        vlSelfRef.__PVT__BRAM2_0__DOT__dpb_inst_0__DOT__memory[__VdlyDim0__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0] 
            = __VdlyVal__BRAM2_0__DOT__dpb_inst_0__DOT__memory__v0;
    }
    if (__VdlySet__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0) {
        vlSelfRef.__PVT__BRAM2_1__DOT__dpb_inst_0__DOT__memory[__VdlyDim0__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0] 
            = __VdlyVal__BRAM2_1__DOT__dpb_inst_0__DOT__memory__v0;
    }
    if (__VdlySet__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0) {
        vlSelfRef.__PVT__BRAM2_2__DOT__dpb_inst_0__DOT__memory[__VdlyDim0__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0] 
            = __VdlyVal__BRAM2_2__DOT__dpb_inst_0__DOT__memory__v0;
    }
    if (__VdlySet__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0) {
        vlSelfRef.__PVT__BRAM2_3__DOT__dpb_inst_0__DOT__memory[__VdlyDim0__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0] 
            = __VdlyVal__BRAM2_3__DOT__dpb_inst_0__DOT__memory__v0;
    }
}

VL_INLINE_OPT void Vtop_programMemory___nba_comb__TOP__top__DOT__SecondStageRAM__0(Vtop_programMemory* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        Vtop_programMemory___nba_comb__TOP__top__DOT__SecondStageRAM__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__PVT__debug_wren = ((~ ((IData)(vlSymsp->TOP.top__DOT__second_stage_mem_ren) 
                                       & (IData)(vlSymsp->TOP.top__DOT__second_stage_mem_wen))) 
                                   & (IData)(vlSymsp->TOP.top__DOT__second_stage_mem_wen));
    vlSelfRef.__PVT__wen0 = ((IData)(vlSymsp->TOP.top__DOT__cpu_1__DOT__byte_select_vector) 
                             & (IData)(vlSelfRef.__PVT__debug_wren));
    vlSelfRef.__PVT__wen1 = (((IData)(vlSymsp->TOP.top__DOT__cpu_1__DOT__byte_select_vector) 
                              >> 1U) & (IData)(vlSelfRef.__PVT__debug_wren));
    vlSelfRef.__PVT__wen2 = (((IData)(vlSymsp->TOP.top__DOT__cpu_1__DOT__byte_select_vector) 
                              >> 2U) & (IData)(vlSelfRef.__PVT__debug_wren));
    vlSelfRef.__PVT__wen3 = (((IData)(vlSymsp->TOP.top__DOT__cpu_1__DOT__byte_select_vector) 
                              >> 3U) & (IData)(vlSelfRef.__PVT__debug_wren));
}

VL_INLINE_OPT void Vtop_programMemory___nba_comb__TOP__top__DOT__RAM__0(Vtop_programMemory* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        Vtop_programMemory___nba_comb__TOP__top__DOT__RAM__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__PVT__debug_wren = ((~ ((IData)(vlSymsp->TOP.top__DOT__program_mem_ren) 
                                       & (IData)(vlSymsp->TOP.top__DOT__program_mem_wen))) 
                                   & (IData)(vlSymsp->TOP.top__DOT__program_mem_wen));
    vlSelfRef.__PVT__wen0 = ((IData)(vlSymsp->TOP.top__DOT__cpu_1__DOT__byte_select_vector) 
                             & (IData)(vlSelfRef.__PVT__debug_wren));
    vlSelfRef.__PVT__wen1 = (((IData)(vlSymsp->TOP.top__DOT__cpu_1__DOT__byte_select_vector) 
                              >> 1U) & (IData)(vlSelfRef.__PVT__debug_wren));
    vlSelfRef.__PVT__wen2 = (((IData)(vlSymsp->TOP.top__DOT__cpu_1__DOT__byte_select_vector) 
                              >> 2U) & (IData)(vlSelfRef.__PVT__debug_wren));
    vlSelfRef.__PVT__wen3 = (((IData)(vlSymsp->TOP.top__DOT__cpu_1__DOT__byte_select_vector) 
                              >> 3U) & (IData)(vlSelfRef.__PVT__debug_wren));
}

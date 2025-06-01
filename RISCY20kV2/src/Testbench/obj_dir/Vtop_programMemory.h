// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtop.h for the primary calling header

#ifndef VERILATED_VTOP_PROGRAMMEMORY_H_
#define VERILATED_VTOP_PROGRAMMEMORY_H_  // guard

#include "verilated.h"


class Vtop__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtop_programMemory final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(ren,0,0);
    VL_IN8(wen,0,0);
    VL_IN8(byte_select_vector,3,0);
    CData/*0:0*/ __PVT__wen0;
    CData/*0:0*/ __PVT__wen1;
    CData/*0:0*/ __PVT__wen2;
    CData/*0:0*/ __PVT__wen3;
    CData/*0:0*/ __PVT__debug_wren;
    CData/*0:0*/ __PVT__dina;
    CData/*7:0*/ BRAM_0__DOT____Vcellout__dpb_inst_0__DOB;
    CData/*7:0*/ BRAM_0__DOT____Vcellout__dpb_inst_0__DOA;
    CData/*7:0*/ BRAM_1__DOT____Vcellout__dpb_inst_0__DOB;
    CData/*7:0*/ BRAM_1__DOT____Vcellout__dpb_inst_0__DOA;
    CData/*7:0*/ BRAM_2__DOT____Vcellout__dpb_inst_0__DOB;
    CData/*7:0*/ BRAM_2__DOT____Vcellout__dpb_inst_0__DOA;
    CData/*7:0*/ BRAM_3__DOT____Vcellout__dpb_inst_0__DOB;
    CData/*7:0*/ BRAM_3__DOT____Vcellout__dpb_inst_0__DOA;
    CData/*7:0*/ BRAM2_0__DOT____Vcellout__dpb_inst_0__DOB;
    CData/*7:0*/ BRAM2_0__DOT____Vcellout__dpb_inst_0__DOA;
    CData/*7:0*/ BRAM2_1__DOT____Vcellout__dpb_inst_0__DOB;
    CData/*7:0*/ BRAM2_1__DOT____Vcellout__dpb_inst_0__DOA;
    CData/*7:0*/ BRAM2_2__DOT____Vcellout__dpb_inst_0__DOB;
    CData/*7:0*/ BRAM2_2__DOT____Vcellout__dpb_inst_0__DOA;
    CData/*7:0*/ BRAM2_3__DOT____Vcellout__dpb_inst_0__DOB;
    CData/*7:0*/ BRAM2_3__DOT____Vcellout__dpb_inst_0__DOA;
    VL_IN(PC,31,2);
    VL_IN(address,31,2);
    VL_IN(data_in,31,0);
    VL_OUT(instr,31,0);
    VL_OUT(data_out,31,0);
    IData/*31:0*/ __PVT__BRAM_0__DOT__dpb_inst_0__DOT__i;
    IData/*31:0*/ __PVT__BRAM_1__DOT__dpb_inst_0__DOT__i;
    IData/*31:0*/ __PVT__BRAM_2__DOT__dpb_inst_0__DOT__i;
    IData/*31:0*/ __PVT__BRAM_3__DOT__dpb_inst_0__DOT__i;
    IData/*31:0*/ __PVT__BRAM2_0__DOT__dpb_inst_0__DOT__i;
    IData/*31:0*/ __PVT__BRAM2_1__DOT__dpb_inst_0__DOT__i;
    IData/*31:0*/ __PVT__BRAM2_2__DOT__dpb_inst_0__DOT__i;
    IData/*31:0*/ __PVT__BRAM2_3__DOT__dpb_inst_0__DOT__i;
    VlUnpacked<CData/*7:0*/, 2048> __PVT__BRAM_0__DOT__dpb_inst_0__DOT__memory;
    VlUnpacked<CData/*7:0*/, 2048> __PVT__BRAM_1__DOT__dpb_inst_0__DOT__memory;
    VlUnpacked<CData/*7:0*/, 2048> __PVT__BRAM_2__DOT__dpb_inst_0__DOT__memory;
    VlUnpacked<CData/*7:0*/, 2048> __PVT__BRAM_3__DOT__dpb_inst_0__DOT__memory;
    VlUnpacked<CData/*7:0*/, 2048> __PVT__BRAM2_0__DOT__dpb_inst_0__DOT__memory;
    VlUnpacked<CData/*7:0*/, 2048> __PVT__BRAM2_1__DOT__dpb_inst_0__DOT__memory;
    VlUnpacked<CData/*7:0*/, 2048> __PVT__BRAM2_2__DOT__dpb_inst_0__DOT__memory;
    VlUnpacked<CData/*7:0*/, 2048> __PVT__BRAM2_3__DOT__dpb_inst_0__DOT__memory;

    // INTERNAL VARIABLES
    Vtop__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtop_programMemory(Vtop__Syms* symsp, const char* v__name);
    ~Vtop_programMemory();
    VL_UNCOPYABLE(Vtop_programMemory);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard

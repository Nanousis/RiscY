// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop__Syms.h"
#include "Vtop_programMemory.h"

void Vtop_programMemory___ctor_var_reset(Vtop_programMemory* vlSelf);

Vtop_programMemory::Vtop_programMemory(Vtop__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vtop_programMemory___ctor_var_reset(this);
}

void Vtop_programMemory::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vtop_programMemory::~Vtop_programMemory() {
}

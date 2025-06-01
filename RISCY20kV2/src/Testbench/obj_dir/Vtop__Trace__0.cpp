// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


void Vtop___024root__trace_chg_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtop___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_chg_0\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtop___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

extern const VlWide<512>/*16383:0*/ Vtop__ConstPool__CONST_hd74c513e_0;

void Vtop___024root__trace_chg_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_chg_0_sub_0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    VlWide<4>/*127:0*/ __Vtemp_1;
    // Body
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[0U]))) {
        bufp->chgIData(oldp+0,(vlSelfRef.top__DOT__RAM__DOT__i),32);
        bufp->chgIData(oldp+1,(vlSelfRef.top__DOT__SecondStageRAM__DOT__i),32);
        bufp->chgIData(oldp+2,(vlSelfRef.top__DOT__mem__DOT__i),32);
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[1U]))) {
        bufp->chgCData(oldp+3,(vlSelfRef.top__DOT__led),6);
        bufp->chgIData(oldp+4,(vlSelfRef.top__DOT__boot_data_out),32);
        bufp->chgIData(oldp+5,(vlSelfRef.top__DOT__boot_instr),32);
        bufp->chgBit(oldp+6,(vlSelfRef.top__DOT__memReady));
        bufp->chgIData(oldp+7,(vlSelfRef.top__DOT__second_stage_instr),32);
        bufp->chgIData(oldp+8,(vlSelfRef.top__DOT__second_stage_mem_out),32);
        bufp->chgIData(oldp+9,(vlSelfRef.top__DOT__program_instr),32);
        bufp->chgIData(oldp+10,(vlSelfRef.top__DOT__program_mem_out),32);
        bufp->chgBit(oldp+11,(vlSelfRef.top__DOT__btn_out));
        bufp->chgBit(oldp+12,(vlSelfRef.top__DOT__error));
        bufp->chgIData(oldp+13,(vlSelfRef.top__DOT__counter),24);
        bufp->chgBit(oldp+14,(vlSelfRef.top__DOT__RAM__DOT__debug_reg));
        bufp->chgBit(oldp+15,(vlSelfRef.top__DOT__SecondStageRAM__DOT__debug_reg));
        bufp->chgBit(oldp+16,(vlSelfRef.top__DOT__bm__DOT__stableDownL));
        bufp->chgBit(oldp+17,(vlSelfRef.top__DOT__bm__DOT__stableUpL));
        bufp->chgBit(oldp+18,(vlSelfRef.top__DOT__bm__DOT__stableLeftL));
        bufp->chgBit(oldp+19,(vlSelfRef.top__DOT__bm__DOT__stableRightL));
        bufp->chgBit(oldp+20,(vlSelfRef.top__DOT__bm__DOT__stableDownR));
        bufp->chgBit(oldp+21,(vlSelfRef.top__DOT__bm__DOT__stableUpR));
        bufp->chgBit(oldp+22,(vlSelfRef.top__DOT__bm__DOT__stableLeftR));
        bufp->chgBit(oldp+23,(vlSelfRef.top__DOT__bm__DOT__stableRightR));
        bufp->chgIData(oldp+24,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__counter),22);
        bufp->chgCData(oldp+25,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__state),2);
        bufp->chgBit(oldp+26,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__btn_last));
        bufp->chgBit(oldp+27,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__newChange));
        bufp->chgBit(oldp+28,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff1));
        bufp->chgBit(oldp+29,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff2));
        bufp->chgBit(oldp+30,(vlSelfRef.top__DOT__bm__DOT__debounceDownL__DOT__dff3));
        bufp->chgIData(oldp+31,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__counter),22);
        bufp->chgCData(oldp+32,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__state),2);
        bufp->chgBit(oldp+33,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__btn_last));
        bufp->chgBit(oldp+34,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__newChange));
        bufp->chgBit(oldp+35,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff1));
        bufp->chgBit(oldp+36,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff2));
        bufp->chgBit(oldp+37,(vlSelfRef.top__DOT__bm__DOT__debounceDownR__DOT__dff3));
        bufp->chgIData(oldp+38,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__counter),22);
        bufp->chgCData(oldp+39,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__state),2);
        bufp->chgBit(oldp+40,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__btn_last));
        bufp->chgBit(oldp+41,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__newChange));
        bufp->chgBit(oldp+42,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff1));
        bufp->chgBit(oldp+43,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff2));
        bufp->chgBit(oldp+44,(vlSelfRef.top__DOT__bm__DOT__debounceLeftL__DOT__dff3));
        bufp->chgIData(oldp+45,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__counter),22);
        bufp->chgCData(oldp+46,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__state),2);
        bufp->chgBit(oldp+47,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__btn_last));
        bufp->chgBit(oldp+48,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__newChange));
        bufp->chgBit(oldp+49,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff1));
        bufp->chgBit(oldp+50,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff2));
        bufp->chgBit(oldp+51,(vlSelfRef.top__DOT__bm__DOT__debounceLeftR__DOT__dff3));
        bufp->chgIData(oldp+52,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__counter),22);
        bufp->chgCData(oldp+53,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__state),2);
        bufp->chgBit(oldp+54,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__btn_last));
        bufp->chgBit(oldp+55,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__newChange));
        bufp->chgBit(oldp+56,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff1));
        bufp->chgBit(oldp+57,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff2));
        bufp->chgBit(oldp+58,(vlSelfRef.top__DOT__bm__DOT__debounceRightL__DOT__dff3));
        bufp->chgIData(oldp+59,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__counter),22);
        bufp->chgCData(oldp+60,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__state),2);
        bufp->chgBit(oldp+61,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__btn_last));
        bufp->chgBit(oldp+62,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__newChange));
        bufp->chgBit(oldp+63,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff1));
        bufp->chgBit(oldp+64,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff2));
        bufp->chgBit(oldp+65,(vlSelfRef.top__DOT__bm__DOT__debounceRightR__DOT__dff3));
        bufp->chgIData(oldp+66,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__counter),22);
        bufp->chgCData(oldp+67,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__state),2);
        bufp->chgBit(oldp+68,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__btn_last));
        bufp->chgBit(oldp+69,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__newChange));
        bufp->chgBit(oldp+70,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff1));
        bufp->chgBit(oldp+71,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff2));
        bufp->chgBit(oldp+72,(vlSelfRef.top__DOT__bm__DOT__debounceUpL__DOT__dff3));
        bufp->chgIData(oldp+73,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__counter),22);
        bufp->chgCData(oldp+74,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__state),2);
        bufp->chgBit(oldp+75,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__btn_last));
        bufp->chgBit(oldp+76,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__newChange));
        bufp->chgBit(oldp+77,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff1));
        bufp->chgBit(oldp+78,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff2));
        bufp->chgBit(oldp+79,(vlSelfRef.top__DOT__bm__DOT__debounceUpR__DOT__dff3));
        bufp->chgBit(oldp+80,(vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__memStalled));
        bufp->chgCData(oldp+81,(vlSelfRef.top__DOT__mem__DOT__state),2);
        bufp->chgCData(oldp+82,(vlSelfRef.top__DOT__mem__DOT__cnt),5);
        bufp->chgIData(oldp+83,(vlSelfRef.top__DOT__mem__DOT__saved_data_addr),20);
        bufp->chgBit(oldp+84,(vlSelfRef.top__DOT__mem__DOT__debug_reg));
        bufp->chgCData(oldp+85,(vlSelfRef.top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__dout_a),8);
        bufp->chgCData(oldp+86,(vlSelfRef.top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__dout_a),8);
        bufp->chgCData(oldp+87,(vlSelfRef.top__DOT__ppu_inst__DOT__text_Buffer__DOT__dout_a),8);
        bufp->chgWData(oldp+88,(vlSelfRef.top__DOT__text__DOT__charMemory[0]),512);
        bufp->chgWData(oldp+104,(vlSelfRef.top__DOT__text__DOT__charMemory[1]),512);
        bufp->chgWData(oldp+120,(vlSelfRef.top__DOT__text__DOT__charMemory[2]),512);
        bufp->chgWData(oldp+136,(vlSelfRef.top__DOT__text__DOT__charMemory[3]),512);
        bufp->chgWData(oldp+152,(vlSelfRef.top__DOT__text__DOT__charMemory[4]),512);
        bufp->chgWData(oldp+168,(vlSelfRef.top__DOT__text__DOT__charMemory[5]),512);
        bufp->chgWData(oldp+184,(vlSelfRef.top__DOT__text__DOT__charMemory[6]),512);
        bufp->chgWData(oldp+200,(vlSelfRef.top__DOT__text__DOT__charMemory[7]),512);
        bufp->chgWData(oldp+216,(vlSelfRef.top__DOT__text__DOT__charMemory[8]),512);
        bufp->chgWData(oldp+232,(vlSelfRef.top__DOT__text__DOT__charMemory[9]),512);
        bufp->chgWData(oldp+248,(vlSelfRef.top__DOT__text__DOT__charMemory[10]),512);
        bufp->chgWData(oldp+264,(vlSelfRef.top__DOT__text__DOT__charMemory[11]),512);
        bufp->chgWData(oldp+280,(vlSelfRef.top__DOT__text__DOT__charMemory[12]),512);
        bufp->chgWData(oldp+296,(vlSelfRef.top__DOT__text__DOT__charMemory[13]),512);
        bufp->chgWData(oldp+312,(vlSelfRef.top__DOT__text__DOT__charMemory[14]),512);
        bufp->chgWData(oldp+328,(vlSelfRef.top__DOT__text__DOT__charMemory[15]),512);
        bufp->chgWData(oldp+344,(vlSelfRef.top__DOT__text__DOT__charMemory[16]),512);
        bufp->chgWData(oldp+360,(vlSelfRef.top__DOT__text__DOT__charMemory[17]),512);
        bufp->chgWData(oldp+376,(vlSelfRef.top__DOT__text__DOT__charMemory[18]),512);
        bufp->chgWData(oldp+392,(vlSelfRef.top__DOT__text__DOT__charMemory[19]),512);
        bufp->chgIData(oldp+408,(vlSelfRef.top__DOT__text__DOT__i),32);
        bufp->chgIData(oldp+409,(vlSelfRef.top__DOT__text__DOT__j),32);
        bufp->chgBit(oldp+410,(vlSelfRef.top__DOT__uart_controller__DOT__tx_busy));
        bufp->chgSData(oldp+411,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_period),16);
        bufp->chgCData(oldp+412,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_position),4);
        bufp->chgSData(oldp+413,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_byte),10);
        bufp->chgCData(oldp+414,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_data_reg),8);
        bufp->chgBit(oldp+415,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__tx_run));
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[2U]))) {
        bufp->chgIData(oldp+416,(vlSelfRef.top__DOT__cpu_1__DOT__PC),32);
        bufp->chgBit(oldp+417,(vlSelfRef.top__DOT__ren));
        bufp->chgBit(oldp+418,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWrite));
        bufp->chgCData(oldp+419,(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector),4);
        bufp->chgCData(oldp+420,(vlSelfRef.top__DOT____Vcellout__cpu_1__debug_error),3);
        bufp->chgIData(oldp+421,((((IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out) 
                                   << 0x18U) | (((IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out) 
                                                 << 0x10U) 
                                                | (((IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out) 
                                                    << 8U) 
                                                   | (IData)(vlSelfRef.top__DOT__uart_controller__DOT__byte_out))))),32);
        bufp->chgIData(oldp+422,(vlSelfRef.top__DOT__clint_data_out),32);
        bufp->chgBit(oldp+423,(vlSelfRef.top__DOT__clint_inst__DOT__msip));
        bufp->chgBit(oldp+424,(vlSelfRef.top__DOT__mtimer_irq));
        bufp->chgIData(oldp+425,(vlSelfRef.top__DOT__flash_data_out),32);
        bufp->chgIData(oldp+426,(vlSelfRef.top__DOT__counter1M),32);
        bufp->chgIData(oldp+427,(vlSelfRef.top__DOT__counter50M),32);
        bufp->chgIData(oldp+428,((0x3fffffU & (vlSelfRef.top__DOT__cpu_1__DOT__PC 
                                               >> 2U))),22);
        bufp->chgQData(oldp+429,(vlSelfRef.top__DOT__clint_inst__DOT__mtime),64);
        bufp->chgQData(oldp+431,(vlSelfRef.top__DOT__clint_inst__DOT__mtimecmp),64);
        bufp->chgSData(oldp+433,(vlSelfRef.top__DOT__counter1mhz__DOT__subCounter),11);
        bufp->chgSData(oldp+434,(vlSelfRef.top__DOT__counter50mhz__DOT__subCounter),11);
        bufp->chgCData(oldp+435,(vlSelfRef.top__DOT____Vcellout__cpu_1__debug_error),2);
        bufp->chgIData(oldp+436,(vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr),32);
        bufp->chgIData(oldp+437,(vlSelfRef.top__DOT__cpu_1__DOT__PC_IF2),32);
        bufp->chgIData(oldp+438,(vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC),32);
        bufp->chgIData(oldp+439,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC),32);
        bufp->chgIData(oldp+440,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_PC),32);
        bufp->chgIData(oldp+441,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_PC),32);
        bufp->chgIData(oldp+442,((vlSelfRef.top__DOT__cpu_1__DOT__IFID_PC 
                                  + vlSelfRef.top__DOT__cpu_1__DOT__signExtend)),32);
        bufp->chgIData(oldp+443,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr),32);
        bufp->chgIData(oldp+444,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_instr),32);
        bufp->chgIData(oldp+445,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_instr),32);
        bufp->chgIData(oldp+446,(vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr),32);
        bufp->chgBit(oldp+447,(vlSelfRef.top__DOT__cpu_1__DOT__inA_is_PC));
        bufp->chgBit(oldp+448,(vlSelfRef.top__DOT__cpu_1__DOT__branch_taken));
        bufp->chgIData(oldp+449,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_signExtend),32);
        bufp->chgIData(oldp+450,(vlSelfRef.top__DOT__cpu_1__DOT__signExtend),32);
        bufp->chgIData(oldp+451,((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
                                   & (((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                 >> 0xfU)) 
                                       == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr)) 
                                      & (0U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr))))
                                   ? vlSelfRef.top__DOT__cpu_1__DOT__wRegData
                                   : vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data
                                  [(0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                             >> 0xfU))])),32);
        bufp->chgIData(oldp+452,((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite) 
                                   & (((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                 >> 0x14U)) 
                                       == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr)) 
                                      & (0U != (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr))))
                                   ? vlSelfRef.top__DOT__cpu_1__DOT__wRegData
                                   : vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data
                                  [(0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                             >> 0x14U))])),32);
        bufp->chgIData(oldp+453,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdA),32);
        bufp->chgIData(oldp+454,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_rdB),32);
        bufp->chgCData(oldp+455,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct3),3);
        bufp->chgCData(oldp+456,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_funct7),7);
        bufp->chgCData(oldp+457,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2),5);
        bufp->chgCData(oldp+458,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs1),5);
        bufp->chgCData(oldp+459,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd),5);
        bufp->chgBit(oldp+460,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegDst));
        bufp->chgBit(oldp+461,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUSrc));
        bufp->chgBit(oldp+462,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_inA_is_PC));
        bufp->chgBit(oldp+463,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Jump));
        bufp->chgBit(oldp+464,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR));
        bufp->chgCData(oldp+465,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_reg_type),2);
        bufp->chgCData(oldp+466,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_ALUcntrl),3);
        bufp->chgBit(oldp+467,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemRead));
        bufp->chgBit(oldp+468,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite));
        bufp->chgBit(oldp+469,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemToReg));
        bufp->chgBit(oldp+470,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegWrite));
        bufp->chgCData(oldp+471,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3),3);
        bufp->chgCData(oldp+472,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_funct3),3);
        bufp->chgCData(oldp+473,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWriteAddr),5);
        bufp->chgIData(oldp+474,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut),32);
        bufp->chgIData(oldp+475,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_BranchALUOut),32);
        bufp->chgCData(oldp+476,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_reg_type),2);
        bufp->chgBit(oldp+477,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Zero));
        bufp->chgBit(oldp+478,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_JumpJALR));
        bufp->chgIData(oldp+479,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData),32);
        bufp->chgBit(oldp+480,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemRead));
        bufp->chgBit(oldp+481,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_RegWrite));
        bufp->chgBit(oldp+482,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemToReg));
        bufp->chgIData(oldp+483,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_DMemOut),32);
        bufp->chgCData(oldp+484,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWriteAddr),5);
        bufp->chgIData(oldp+485,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut),32);
        bufp->chgBit(oldp+486,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_MemToReg));
        bufp->chgBit(oldp+487,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_RegWrite));
        bufp->chgCData(oldp+488,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_reg_type),2);
        bufp->chgIData(oldp+489,(vlSelfRef.top__DOT__cpu_1__DOT__MemOut),32);
        bufp->chgIData(oldp+490,(vlSelfRef.top__DOT__cpu_1__DOT__wRegData),32);
        bufp->chgBit(oldp+491,(vlSelfRef.top__DOT__cpu_1__DOT__RegDst));
        bufp->chgBit(oldp+492,(vlSelfRef.top__DOT__cpu_1__DOT__MemRead));
        bufp->chgBit(oldp+493,(vlSelfRef.top__DOT__cpu_1__DOT__MemWrite));
        bufp->chgBit(oldp+494,(vlSelfRef.top__DOT__cpu_1__DOT__MemToReg));
        bufp->chgBit(oldp+495,(vlSelfRef.top__DOT__cpu_1__DOT__ALUSrc));
        bufp->chgBit(oldp+496,(vlSelfRef.top__DOT__cpu_1__DOT__PCSrc));
        bufp->chgBit(oldp+497,(vlSelfRef.top__DOT__cpu_1__DOT__RegWrite));
        bufp->chgBit(oldp+498,(vlSelfRef.top__DOT__cpu_1__DOT__Jump));
        bufp->chgBit(oldp+499,(vlSelfRef.top__DOT__cpu_1__DOT__JumpJALR));
        bufp->chgCData(oldp+500,(vlSelfRef.top__DOT__cpu_1__DOT__reg_type),2);
        bufp->chgBit(oldp+501,(vlSelfRef.top__DOT__cpu_1__DOT__Branch));
        bufp->chgBit(oldp+502,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch));
        bufp->chgBit(oldp+503,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch));
        bufp->chgBit(oldp+504,(vlSelfRef.top__DOT__cpu_1__DOT__bubble_exmem));
        bufp->chgCData(oldp+505,((0x7fU & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)),7);
        bufp->chgCData(oldp+506,((7U & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                        >> 0xcU))),3);
        bufp->chgCData(oldp+507,(vlSelfRef.top__DOT__cpu_1__DOT__ALUcntrl),3);
        bufp->chgIData(oldp+508,(vlSelfRef.top__DOT__cpu_1__DOT__csr_data),32);
        bufp->chgIData(oldp+509,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_data),32);
        bufp->chgIData(oldp+510,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_data),32);
        bufp->chgSData(oldp+511,((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                  >> 0x14U)),12);
        bufp->chgSData(oldp+512,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr),12);
        bufp->chgSData(oldp+513,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_addr),12);
        bufp->chgSData(oldp+514,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr),12);
        bufp->chgBit(oldp+515,(((1U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__reg_type)) 
                                && ((0U != (3U & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                  >> 0xcU))) 
                                    && ((1U == (3U 
                                                & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                   >> 0xcU))) 
                                        || (0U != (0x1fU 
                                                   & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                      >> 0xfU))))))));
        bufp->chgBit(oldp+516,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_write_allowed));
        bufp->chgBit(oldp+517,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_write_allowed));
        bufp->chgBit(oldp+518,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed));
        bufp->chgBit(oldp+519,(vlSelfRef.top__DOT__cpu_1__DOT__csr_immidiate));
        bufp->chgCData(oldp+520,((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                  >> 0x19U)),7);
        bufp->chgCData(oldp+521,((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                           >> 0xfU))),5);
        bufp->chgCData(oldp+522,((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                           >> 0x14U))),5);
        bufp->chgCData(oldp+523,((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                           >> 7U))),5);
        bufp->chgCData(oldp+524,(((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_RegDst)
                                   ? (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rd)
                                   : (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_instr_rs2))),5);
        bufp->chgCData(oldp+525,(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp),4);
        bufp->chgIData(oldp+526,(vlSelfRef.top__DOT__cpu_1__DOT__imm_i),32);
        bufp->chgIData(oldp+527,((((- (IData)((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                               >> 0x1fU))) 
                                   << 0xcU) | ((0xfe0U 
                                                & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                   >> 0x14U)) 
                                               | (0x1fU 
                                                  & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                     >> 7U))))),32);
        bufp->chgIData(oldp+528,((((- (IData)((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
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
        bufp->chgIData(oldp+529,((0xfffff000U & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr)),32);
        bufp->chgIData(oldp+530,((((- (IData)((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                               >> 0x1fU))) 
                                   << 0x14U) | (((0xff000U 
                                                  & vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr) 
                                                 | (0x800U 
                                                    & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                       >> 9U))) 
                                                | (0x7feU 
                                                   & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                                      >> 0x14U))))),32);
        bufp->chgIData(oldp+531,((0x1fU & (vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                           >> 0x16U))),32);
        bufp->chgBit(oldp+532,(vlSelfRef.top__DOT__cpu_1__DOT__keepDelayInstr));
        bufp->chgBit(oldp+533,(vlSelfRef.top__DOT__cpu_1__DOT__int_taken));
        bufp->chgBit(oldp+534,(vlSelfRef.top__DOT__cpu_1__DOT__syscall));
        bufp->chgBit(oldp+535,(vlSelfRef.top__DOT__cpu_1__DOT__trap_in_ID));
        bufp->chgBit(oldp+536,(vlSelfRef.top__DOT__cpu_1__DOT__write_pc_delayed));
        bufp->chgBit(oldp+537,(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed));
        bufp->chgIData(oldp+538,(vlSelfRef.top__DOT__cpu_1__DOT__newmepc),32);
        bufp->chgWData(oldp+539,(vlSelfRef.top__DOT__cpu_1__DOT__pc_string),2040);
        bufp->chgBit(oldp+603,(vlSelfRef.top__DOT__cpu_1__DOT__pc_jumped));
        bufp->chgBit(oldp+604,(vlSelfRef.top__DOT__cpu_1__DOT__mepc_state));
        bufp->chgBit(oldp+605,(vlSelfRef.top__DOT__cpu_1__DOT__flushPipeline));
        bufp->chgQData(oldp+606,(vlSelfRef.top__DOT__cpu_1__DOT__control_alu__DOT__debug_string),64);
        bufp->chgBit(oldp+608,((vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut 
                                >> 0x1fU)));
        bufp->chgIData(oldp+609,(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_csr_addr),32);
        bufp->chgIData(oldp+610,(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_csr_addr),32);
        bufp->chgIData(oldp+611,(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr),32);
        bufp->chgCData(oldp+612,(vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassA),2);
        bufp->chgCData(oldp+613,(vlSelfRef.top__DOT__cpu_1__DOT__control_bypass_ex__DOT__bypassB),2);
        bufp->chgBit(oldp+614,(vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__bubble_memwb));
        bufp->chgQData(oldp+615,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__debug_string),64);
        bufp->chgIData(oldp+617,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__i),32);
        bufp->chgIData(oldp+618,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[0]),32);
        bufp->chgIData(oldp+619,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[1]),32);
        bufp->chgIData(oldp+620,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[2]),32);
        bufp->chgIData(oldp+621,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[3]),32);
        bufp->chgIData(oldp+622,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[4]),32);
        bufp->chgIData(oldp+623,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[5]),32);
        bufp->chgIData(oldp+624,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[6]),32);
        bufp->chgIData(oldp+625,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[7]),32);
        bufp->chgIData(oldp+626,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[8]),32);
        bufp->chgIData(oldp+627,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[9]),32);
        bufp->chgIData(oldp+628,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[10]),32);
        bufp->chgIData(oldp+629,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[11]),32);
        bufp->chgIData(oldp+630,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[12]),32);
        bufp->chgIData(oldp+631,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[13]),32);
        bufp->chgIData(oldp+632,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[14]),32);
        bufp->chgIData(oldp+633,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[15]),32);
        bufp->chgIData(oldp+634,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[16]),32);
        bufp->chgIData(oldp+635,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[17]),32);
        bufp->chgIData(oldp+636,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[18]),32);
        bufp->chgIData(oldp+637,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[19]),32);
        bufp->chgIData(oldp+638,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[20]),32);
        bufp->chgIData(oldp+639,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[21]),32);
        bufp->chgIData(oldp+640,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[22]),32);
        bufp->chgIData(oldp+641,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[23]),32);
        bufp->chgIData(oldp+642,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[24]),32);
        bufp->chgIData(oldp+643,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[25]),32);
        bufp->chgIData(oldp+644,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[26]),32);
        bufp->chgIData(oldp+645,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[27]),32);
        bufp->chgIData(oldp+646,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[28]),32);
        bufp->chgIData(oldp+647,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[29]),32);
        bufp->chgIData(oldp+648,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[30]),32);
        bufp->chgIData(oldp+649,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_regs__DOT__data[31]),32);
        bufp->chgBit(oldp+650,((1U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__reg_type))));
        bufp->chgIData(oldp+651,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatus),32);
        bufp->chgIData(oldp+652,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mstatush),32);
        bufp->chgIData(oldp+653,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__misa),32);
        bufp->chgIData(oldp+654,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mie),32);
        bufp->chgIData(oldp+655,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtvec),32);
        bufp->chgIData(oldp+656,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mscratch),32);
        bufp->chgIData(oldp+657,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mepc),32);
        bufp->chgIData(oldp+658,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mcause),32);
        bufp->chgIData(oldp+659,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mtval),32);
        bufp->chgIData(oldp+660,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__mip),32);
        bufp->chgCData(oldp+661,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__enableInterrupts),3);
        bufp->chgCData(oldp+662,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__pipeline_flush_count),4);
        bufp->chgWData(oldp+663,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug),320);
        bufp->chgWData(oldp+673,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__debug2),320);
        bufp->chgIData(oldp+683,(vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg),32);
        bufp->chgCData(oldp+684,((3U & vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut)),2);
        bufp->chgCData(oldp+685,(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__byte_sel),8);
        bufp->chgSData(oldp+686,(vlSelfRef.top__DOT__cpu_1__DOT__mem_read_selector__DOT__half),16);
        bufp->chgCData(oldp+687,((3U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)),2);
        bufp->chgIData(oldp+688,((vlSelfRef.top__DOT__cpu_1__DOT__IFID_instr 
                                  >> 7U)),25);
        bufp->chgCData(oldp+689,(vlSelfRef.top__DOT__flashController__DOT__stateDebug),5);
        bufp->chgBit(oldp+690,(vlSelfRef.top__DOT__ppu_inst__DOT__textEn));
        bufp->chgBit(oldp+691,(vlSelfRef.top__DOT__ppu_inst__DOT__spritesEn));
        bufp->chgCData(oldp+692,(vlSelfRef.top__DOT__ppu_inst__DOT__writeAttr),8);
        bufp->chgCData(oldp+693,(vlSelfRef.top__DOT__ppu_inst__DOT__writeText),8);
        bufp->chgCData(oldp+694,(vlSelfRef.top__DOT__ppu_inst__DOT__writeSprite),8);
        bufp->chgCData(oldp+695,(vlSelfRef.top__DOT__ppu_inst__DOT__spriteID),7);
        bufp->chgIData(oldp+696,(vlSelfRef.top__DOT__ppu_inst__DOT__text_address),32);
        bufp->chgCData(oldp+697,(vlSelfRef.top__DOT__ppu_inst__DOT__cur_sprite_buf),5);
        bufp->chgSData(oldp+698,(vlSelfRef.top__DOT__ppu_inst__DOT__buffer_counter),9);
        bufp->chgSData(oldp+699,(vlSelfRef.top__DOT__ppu_inst__DOT__obj_line_buffer),16);
        bufp->chgBit(oldp+700,(vlSelfRef.top__DOT__ppu_inst__DOT__hasStarted));
        bufp->chgSData(oldp+701,((0x7ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                                            >> 1U))),11);
        bufp->chgSData(oldp+702,((0x3fffU & ((vlSelfRef.top__DOT__ppu_inst__DOT__text_address 
                                              >> 1U) 
                                             - (IData)(0x800U)))),14);
        bufp->chgCData(oldp+703,(vlSelfRef.top__DOT__uart_controller__DOT__byte_out),8);
        bufp->chgCData(oldp+704,(vlSelfRef.top__DOT__uart_controller__DOT__tx_data),8);
        bufp->chgBit(oldp+705,(vlSelfRef.top__DOT__uart_controller__DOT__ena_tx));
        bufp->chgCData(oldp+706,(vlSelfRef.top__DOT__uart_controller__DOT__ier),8);
        bufp->chgCData(oldp+707,(vlSelfRef.top__DOT__uart_controller__DOT__lcr),8);
        bufp->chgCData(oldp+708,(vlSelfRef.top__DOT__uart_controller__DOT__dll),8);
        bufp->chgCData(oldp+709,(vlSelfRef.top__DOT__uart_controller__DOT__dlm),8);
        bufp->chgBit(oldp+710,((1U & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__lcr) 
                                      >> 7U))));
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[3U]))) {
        bufp->chgCData(oldp+711,(vlSelfRef.top__DOT__R_tmp),5);
        bufp->chgCData(oldp+712,(vlSelfRef.top__DOT__G_tmp),6);
        bufp->chgCData(oldp+713,(vlSelfRef.top__DOT__B_tmp),5);
        bufp->chgCData(oldp+714,(vlSelfRef.top__DOT__ppu_inst__DOT__r),8);
        bufp->chgCData(oldp+715,(vlSelfRef.top__DOT__ppu_inst__DOT__g),8);
        bufp->chgCData(oldp+716,(vlSelfRef.top__DOT__ppu_inst__DOT__b),8);
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[4U]))) {
        bufp->chgBit(oldp+717,(vlSelfRef.top__DOT__cpu_1__DOT__write_idex));
        bufp->chgBit(oldp+718,(vlSelfRef.top__DOT__cpu_1__DOT__write_exmem));
        bufp->chgBit(oldp+719,(vlSelfRef.top__DOT__cpu_1__DOT__write_memwb));
        bufp->chgIData(oldp+720,(vlSelfRef.top__DOT__flashController__DOT__flash_data_out),32);
        bufp->chgCData(oldp+721,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteOut),8);
        bufp->chgCData(oldp+722,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum),8);
        bufp->chgWData(oldp+723,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn),256);
        bufp->chgWData(oldp+731,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer),256);
        bufp->chgBit(oldp+739,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__enabling_done));
        bufp->chgIData(oldp+740,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataToSend),24);
        bufp->chgSData(oldp+741,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__bitsToSend),9);
        bufp->chgQData(oldp+742,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter),33);
        bufp->chgCData(oldp+744,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state),4);
        bufp->chgCData(oldp+745,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__returnState),4);
        bufp->chgBit(oldp+746,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataReady));
        bufp->chgBit(oldp+747,(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__write_progress));
        bufp->chgCData(oldp+748,(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr),8);
        bufp->chgCData(oldp+749,(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite),8);
        bufp->chgBit(oldp+750,(vlSelfRef.top__DOT__uart_controller__DOT__rx_rdy));
        bufp->chgCData(oldp+751,(vlSelfRef.top__DOT__uart_controller__DOT__rx_data),8);
        bufp->chgCData(oldp+752,(vlSelfRef.top__DOT__uart_controller__DOT__lsr),8);
        bufp->chgBit(oldp+753,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_sample_pulse));
        bufp->chgSData(oldp+754,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period),16);
        bufp->chgCData(oldp+755,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position),4);
        bufp->chgSData(oldp+756,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte),10);
        bufp->chgBit(oldp+757,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rxd_reg));
        bufp->chgBit(oldp+758,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__last_rxd));
        bufp->chgBit(oldp+759,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy));
        bufp->chgBit(oldp+760,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy));
        bufp->chgBit(oldp+761,(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_trigger));
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[5U]))) {
        bufp->chgBit(oldp+762,(vlSelfRef.top__DOT__overflow));
        bufp->chgIData(oldp+763,(vlSelfRef.top__DOT__instr),32);
        bufp->chgIData(oldp+764,(vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData),32);
        bufp->chgSData(oldp+765,(vlSelfRef.top__DOT__xcursor),14);
        bufp->chgSData(oldp+766,(vlSelfRef.top__DOT__ycursor),14);
        bufp->chgBit(oldp+767,((0x320U <= (IData)(vlSelfRef.top__DOT__xcursor))));
        bufp->chgBit(oldp+768,((0x320U >= (IData)(vlSelfRef.top__DOT__xcursor))));
        bufp->chgBit(oldp+769,((0x1e0U >= (IData)(vlSelfRef.top__DOT__ycursor))));
        bufp->chgIData(oldp+770,(vlSelfRef.top__DOT__cpu_1__DOT__PC_new),32);
        bufp->chgIData(oldp+771,(vlSelfRef.top__DOT__cpu_1__DOT__ALUInA),32);
        bufp->chgIData(oldp+772,(vlSelfRef.top__DOT__cpu_1__DOT__ALUInB),32);
        bufp->chgIData(oldp+773,(vlSelfRef.top__DOT__cpu_1__DOT__bypassOutA),32);
        bufp->chgIData(oldp+774,(vlSelfRef.top__DOT__cpu_1__DOT__bypassOutB),32);
        bufp->chgIData(oldp+775,(vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val),32);
        bufp->chgIData(oldp+776,(vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data),32);
        bufp->chgBit(oldp+777,((0U == vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val)));
        bufp->chgBit(oldp+778,(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid));
        bufp->chgBit(oldp+779,(vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex));
        bufp->chgBit(oldp+780,(vlSelfRef.top__DOT__cpu_1__DOT__write_ifid));
        bufp->chgBit(oldp+781,(vlSelfRef.top__DOT__cpu_1__DOT__write_pc));
        bufp->chgIData(oldp+782,(vlSelfRef.top__DOT__cpu_1__DOT__trap_vector),32);
        bufp->chgBit(oldp+783,(vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting));
        bufp->chgWData(oldp+784,(vlSelfRef.top__DOT__cpu_1__DOT__debug_str),160);
        bufp->chgBit(oldp+789,(vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__suppressTrap));
        bufp->chgCData(oldp+790,(vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state),4);
        bufp->chgQData(oldp+791,((0x1ffffffffULL & 
                                  ((QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUInA)) 
                                   - (QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))))),33);
        bufp->chgBit(oldp+793,(vlSelfRef.top__DOT__flashController__DOT__flash_enable));
        bufp->chgBit(oldp+794,(vlSelfRef.top__DOT__flashController__DOT__flash_wen));
        bufp->chgBit(oldp+795,(vlSelfRef.top__DOT__flashController__DOT__flash_ren));
        bufp->chgIData(oldp+796,(vlSelfRef.top__DOT__flashController__DOT__flash_address),24);
        bufp->chgIData(oldp+797,(vlSelfRef.top__DOT__flashController__DOT__flash_data_in),32);
        bufp->chgIData(oldp+798,((0xffffffU & ((IData)(0x500000U) 
                                               + vlSelfRef.top__DOT__flashController__DOT__flash_address))),24);
        bufp->chgIData(oldp+799,((0xffffffU & vlSelfRef.top__DOT__flashController__DOT__flash_data_in)),24);
        bufp->chgSData(oldp+800,((0x3fffU & ((IData)(1U) 
                                             + (IData)(vlSelfRef.top__DOT__xcursor)))),14);
        bufp->chgSData(oldp+801,((0x3fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                             - (IData)(1U)))),14);
        bufp->chgSData(oldp+802,((0x3fffU & VL_SHIFTL_III(14,14,14, 
                                                          (3U 
                                                           & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                                              >> 1U)), 1U))),14);
        bufp->chgSData(oldp+803,((0x1fffU & ((IData)(vlSelfRef.top__DOT__xcursor) 
                                             >> 1U))),13);
        bufp->chgSData(oldp+804,((0x1fffU & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                             >> 1U))),13);
        bufp->chgSData(oldp+805,(vlSelfRef.top__DOT__ppu_inst__DOT__spritePointer),15);
        bufp->chgIData(oldp+806,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[0]),32);
        bufp->chgIData(oldp+807,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[1]),32);
        bufp->chgIData(oldp+808,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[2]),32);
        bufp->chgIData(oldp+809,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[3]),32);
        bufp->chgIData(oldp+810,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[4]),32);
        bufp->chgIData(oldp+811,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[5]),32);
        bufp->chgIData(oldp+812,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[6]),32);
        bufp->chgIData(oldp+813,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[7]),32);
        bufp->chgIData(oldp+814,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[8]),32);
        bufp->chgIData(oldp+815,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[9]),32);
        bufp->chgIData(oldp+816,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[10]),32);
        bufp->chgIData(oldp+817,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[11]),32);
        bufp->chgIData(oldp+818,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[12]),32);
        bufp->chgIData(oldp+819,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[13]),32);
        bufp->chgIData(oldp+820,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[14]),32);
        bufp->chgIData(oldp+821,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[15]),32);
        bufp->chgIData(oldp+822,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[16]),32);
        bufp->chgIData(oldp+823,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[17]),32);
        bufp->chgIData(oldp+824,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[18]),32);
        bufp->chgIData(oldp+825,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[19]),32);
        bufp->chgIData(oldp+826,(vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                 [0U]),32);
        bufp->chgSData(oldp+827,((0x1ffU & (vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                            [0U] >> 0x10U))),9);
        bufp->chgSData(oldp+828,((0x1ffU & vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes
                                  [0U])),9);
        bufp->chgSData(oldp+829,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0]),16);
        bufp->chgSData(oldp+830,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[1]),16);
        bufp->chgSData(oldp+831,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[2]),16);
        bufp->chgSData(oldp+832,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[3]),16);
        bufp->chgSData(oldp+833,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[4]),16);
        bufp->chgSData(oldp+834,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[5]),16);
        bufp->chgSData(oldp+835,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[6]),16);
        bufp->chgSData(oldp+836,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[7]),16);
        bufp->chgSData(oldp+837,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[8]),16);
        bufp->chgSData(oldp+838,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[9]),16);
        bufp->chgSData(oldp+839,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[10]),16);
        bufp->chgSData(oldp+840,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[11]),16);
        bufp->chgSData(oldp+841,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[12]),16);
        bufp->chgSData(oldp+842,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[13]),16);
        bufp->chgSData(oldp+843,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[14]),16);
        bufp->chgSData(oldp+844,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[15]),16);
        bufp->chgSData(oldp+845,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[16]),16);
        bufp->chgSData(oldp+846,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[17]),16);
        bufp->chgSData(oldp+847,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[18]),16);
        bufp->chgSData(oldp+848,(vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[19]),16);
        bufp->chgSData(oldp+849,(vlSelfRef.top__DOT__ppu_inst__DOT__objectPointer),10);
        bufp->chgBit(oldp+850,(vlSelfRef.top__DOT__ppu_inst__DOT__hblank));
        bufp->chgSData(oldp+851,(vlSelfRef.top__DOT__ppu_inst__DOT__data_in_half),16);
        bufp->chgSData(oldp+852,((0x3fffU & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__hblank)
                                              ? (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__objectPointer)
                                              : (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__spritePointer)))),14);
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[6U]))) {
        bufp->chgBit(oldp+853,(vlSelfRef.top__DOT__cpuclk));
        bufp->chgBit(oldp+854,(vlSelfRef.top__DOT__reset));
        bufp->chgCData(oldp+855,(vlSelfRef.top__DOT__state),3);
        bufp->chgIData(oldp+856,(vlSelfRef.top__DOT__txCounter),23);
        bufp->chgBit(oldp+857,(vlSelfRef.top__DOT__flashController__DOT__flash_ready));
        bufp->chgCData(oldp+858,(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt),8);
        __Vtemp_1[0U] = (((0U == (0x1fU & ((IData)(0x3f80U) 
                                           - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U))))
                           ? 0U : (Vtop__ConstPool__CONST_hd74c513e_0[
                                   ((IData)(1U) + (0x1ffU 
                                                   & (((IData)(0x3f80U) 
                                                       - 
                                                       VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                      >> 5U)))] 
                                   << ((IData)(0x20U) 
                                       - (0x1fU & ((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))))) 
                         | (Vtop__ConstPool__CONST_hd74c513e_0[
                            (0x1ffU & (((IData)(0x3f80U) 
                                        - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                       >> 5U))] >> 
                            (0x1fU & ((IData)(0x3f80U) 
                                      - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))));
        __Vtemp_1[1U] = (((0U == (0x1fU & ((IData)(0x3f80U) 
                                           - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U))))
                           ? 0U : (Vtop__ConstPool__CONST_hd74c513e_0[
                                   ((IData)(2U) + (0x1ffU 
                                                   & (((IData)(0x3f80U) 
                                                       - 
                                                       VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                                      >> 5U)))] 
                                   << ((IData)(0x20U) 
                                       - (0x1fU & ((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))))) 
                         | (Vtop__ConstPool__CONST_hd74c513e_0[
                            ((IData)(1U) + (0x1ffU 
                                            & (((IData)(0x3f80U) 
                                                - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
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
                                   << ((IData)(0x20U) 
                                       - (0x1fU & ((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))))) 
                         | (Vtop__ConstPool__CONST_hd74c513e_0[
                            ((IData)(2U) + (0x1ffU 
                                            & (((IData)(0x3f80U) 
                                                - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
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
                                   << ((IData)(0x20U) 
                                       - (0x1fU & ((IData)(0x3f80U) 
                                                   - 
                                                   VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))))) 
                         | (Vtop__ConstPool__CONST_hd74c513e_0[
                            ((IData)(3U) + (0x1ffU 
                                            & (((IData)(0x3f80U) 
                                                - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)) 
                                               >> 5U)))] 
                            >> (0x1fU & ((IData)(0x3f80U) 
                                         - VL_SHIFTL_III(14,14,32, (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt), 7U)))));
        bufp->chgWData(oldp+859,(__Vtemp_1),128);
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[7U]))) {
        bufp->chgIData(oldp+863,(vlSelfRef.top__DOT__data_addr),32);
        bufp->chgIData(oldp+864,(vlSelfRef.top__DOT__data_read),32);
        bufp->chgBit(oldp+865,(vlSelfRef.top__DOT__mem_ren));
        bufp->chgBit(oldp+866,(vlSelfRef.top__DOT__mem_wen));
        bufp->chgBit(oldp+867,(vlSelfRef.top__DOT__screen_wen));
        bufp->chgBit(oldp+868,(vlSelfRef.top__DOT__second_stage_mem_ren));
        bufp->chgBit(oldp+869,(vlSelfRef.top__DOT__second_stage_mem_wen));
        bufp->chgBit(oldp+870,(vlSelfRef.top__DOT__program_mem_ren));
        bufp->chgBit(oldp+871,(vlSelfRef.top__DOT__program_mem_wen));
        bufp->chgBit(oldp+872,(vlSelfRef.top__DOT__uart_ren));
        bufp->chgBit(oldp+873,(vlSelfRef.top__DOT__uart_wen));
        bufp->chgBit(oldp+874,(vlSelfRef.top__DOT__clint_ren));
        bufp->chgBit(oldp+875,(vlSelfRef.top__DOT__clint_wen));
        bufp->chgBit(oldp+876,(vlSelfRef.top__DOT__btn_ren));
        bufp->chgBit(oldp+877,(vlSelfRef.top__DOT__flash_ren));
        bufp->chgBit(oldp+878,(vlSelfRef.top__DOT__flash_wen));
        bufp->chgIData(oldp+879,((0x3ffffU & (vlSelfRef.top__DOT__data_addr 
                                              >> 2U))),18);
        bufp->chgIData(oldp+880,((0xffU & vlSelfRef.top__DOT__data_addr)),32);
        bufp->chgBit(oldp+881,(vlSelfRef.top__DOT__bu__DOT__usb_ren));
        bufp->chgCData(oldp+882,((0xffU & vlSelfRef.top__DOT__data_addr)),8);
        bufp->chgSData(oldp+883,((0xffffU & vlSelfRef.top__DOT__data_addr)),16);
        bufp->chgSData(oldp+884,((0x7fffU & (vlSelfRef.top__DOT__data_addr 
                                             >> 1U))),16);
        bufp->chgCData(oldp+885,((0x7fU & (vlSelfRef.top__DOT__data_addr 
                                           >> 7U))),7);
        bufp->chgCData(oldp+886,((7U & vlSelfRef.top__DOT__data_addr)),3);
        bufp->chgCData(oldp+887,(vlSelfRef.top__DOT__uart_controller__DOT__data_in),8);
    }
    bufp->chgBit(oldp+888,(vlSelfRef.clk));
    bufp->chgBit(oldp+889,(vlSelfRef.LCD_CLK));
    bufp->chgBit(oldp+890,(vlSelfRef.LCD_HYNC));
    bufp->chgBit(oldp+891,(vlSelfRef.LCD_SYNC));
    bufp->chgBit(oldp+892,(vlSelfRef.LCD_DEN));
    bufp->chgCData(oldp+893,(vlSelfRef.LCD_R),5);
    bufp->chgCData(oldp+894,(vlSelfRef.LCD_G),6);
    bufp->chgCData(oldp+895,(vlSelfRef.LCD_B),5);
    bufp->chgBit(oldp+896,(vlSelfRef.flashMiso));
    bufp->chgBit(oldp+897,(vlSelfRef.flashClk));
    bufp->chgBit(oldp+898,(vlSelfRef.flashMosi));
    bufp->chgBit(oldp+899,(vlSelfRef.flashCs));
    bufp->chgBit(oldp+900,(vlSelfRef.uart_rx));
    bufp->chgBit(oldp+901,(vlSelfRef.uart_tx));
    bufp->chgBit(oldp+902,(vlSelfRef.btnDownL));
    bufp->chgBit(oldp+903,(vlSelfRef.btnUpL));
    bufp->chgBit(oldp+904,(vlSelfRef.btnLeftL));
    bufp->chgBit(oldp+905,(vlSelfRef.btnRightL));
    bufp->chgBit(oldp+906,(vlSelfRef.btnDownR));
    bufp->chgBit(oldp+907,(vlSelfRef.btnUpR));
    bufp->chgBit(oldp+908,(vlSelfRef.btnLeftR));
    bufp->chgBit(oldp+909,(vlSelfRef.btnRightR));
    bufp->chgIData(oldp+910,(((0U == vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr)
                               ? vlSelfRef.top__DOT__instr
                               : (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid_delayed) 
                                   | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__bubble_ifid))
                                   ? 0U : vlSelfRef.top__DOT__cpu_1__DOT__delayed_instr))),32);
    bufp->chgIData(oldp+911,(((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR)
                               ? vlSelfRef.top__DOT__cpu_1__DOT__bypassOutA
                               : vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC)),32);
    bufp->chgIData(oldp+912,((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_JumpJALR)
                                ? vlSelfRef.top__DOT__cpu_1__DOT__bypassOutA
                                : vlSelfRef.top__DOT__cpu_1__DOT__IDEX_PC) 
                              + vlSelfRef.top__DOT__cpu_1__DOT__IDEX_signExtend)),32);
    bufp->chgSData(oldp+913,(vlSelfRef.top__DOT__ppu_inst__DOT____Vcellinp__attributes_Buffer__addr_b),15);
    bufp->chgIData(oldp+914,(vlSelfRef.top__DOT__ppu_inst__DOT__i),32);
    bufp->chgSData(oldp+915,(vlSelfRef.top__DOT__ppu_inst__DOT____Vcellinp__attributes_Buffer__addr_b),11);
    bufp->chgCData(oldp+916,((0xffU & ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))
                                        ? vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData
                                        : ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))
                                            ? (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                               >> 8U)
                                            : ((4U 
                                                & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector))
                                                ? (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                                   >> 0x10U)
                                                : (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                                                   >> 0x18U)))))),8);
}

void Vtop___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_cleanup\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[4U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[5U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[6U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[7U] = 0U;
}

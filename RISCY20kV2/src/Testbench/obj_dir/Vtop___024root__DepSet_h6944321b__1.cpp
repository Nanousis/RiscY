// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop___024root.h"

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__3(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__3\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy;
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy = 0;
    // Body
    vlSelfRef.top__DOT__cpu_1__DOT__write_memwb = 1U;
    vlSelfRef.top__DOT__cpu_1__DOT__write_exmem = 1U;
    vlSelfRef.top__DOT__cpu_1__DOT__write_idex = 1U;
    if ((1U & (~ (IData)(vlSelfRef.top__DOT__memReady)))) {
        vlSelfRef.top__DOT__cpu_1__DOT__write_memwb = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_exmem = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_idex = 0U;
    }
    __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__last_rxd 
        = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rxd_reg;
    vlSelfRef.top__DOT__uart_controller__DOT__rx_rdy 
        = ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy) 
           & (~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy)));
    if (vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_trigger) {
        vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period = 0x74U;
        vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy = 1U;
        vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position = 9U;
    } else if ((0U == (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period))) {
        vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period = 0xe9U;
        vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_sample_pulse 
            = vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy;
        if ((0U != (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position))) {
            vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position 
                = (0xfU & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position) 
                           - (IData)(1U)));
            vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte 
                = (((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rxd_reg) 
                    << 9U) | (0x1ffU & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte) 
                                        >> 1U)));
        } else {
            vlSelfRef.top__DOT__uart_controller__DOT__rx_data 
                = (0xffU & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte) 
                            >> 2U));
            vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy = 0U;
        }
    } else {
        vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period 
            = (0xffffU & ((IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period) 
                          - (IData)(1U)));
        vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_sample_pulse = 0U;
    }
    if (((((((((0U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state)) 
               | (1U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) 
              | (2U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) 
             | (3U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) 
            | (4U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) 
           | (6U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) 
          | (7U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) 
         | (8U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state)))) {
        if ((0U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) {
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__counter = 0ULL;
            if (vlSelfRef.top__DOT__flashController__DOT__flash_enable) {
                if (vlSelfRef.top__DOT__flashController__DOT__flash_wen) {
                    vlSelfRef.__Vdly__top__DOT__flashController__DOT__flash_ready = 0U;
                    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 6U;
                } else if (vlSelfRef.top__DOT__flashController__DOT__flash_ren) {
                    vlSelfRef.__Vdly__top__DOT__flashController__DOT__flash_ready = 0U;
                    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 1U;
                } else {
                    vlSelfRef.__Vdly__top__DOT__flashController__DOT__flash_ready = 1U;
                    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 0U;
                }
                vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataReady = 0U;
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteNum = 0U;
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteOut = 0U;
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__enabling_done = 0U;
            } else {
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 0U;
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__flash_ready = 1U;
            }
        } else if ((1U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) {
            vlSelfRef.flashCs = 0U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend 
                = (0x30000U | (0xffffU & vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend));
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend = 8U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 2U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__returnState = 3U;
        } else if ((2U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) {
            if ((0ULL == vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter)) {
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend 
                    = (0x1ffU & ((IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__bitsToSend) 
                                 - (IData)(1U)));
                vlSelfRef.flashClk = 0U;
                vlSelfRef.flashMosi = (1U & (vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataToSend 
                                             >> 0x17U));
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__counter = 1ULL;
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend 
                    = (0xfffffeU & (vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataToSend 
                                    << 1U));
            } else {
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__counter = 0ULL;
                vlSelfRef.flashClk = 1U;
                if ((0U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__bitsToSend))) {
                    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state 
                        = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__returnState;
                }
            }
        } else if ((3U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) {
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend 
                = (0xffffffU & ((IData)(0x500000U) 
                                + vlSelfRef.top__DOT__flashController__DOT__flash_address));
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend = 0x18U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 2U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__returnState = 4U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteNum = 0U;
        } else if ((4U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) {
            if ((1U & (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter))) {
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteOut 
                    = ((0xfeU & ((IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteOut) 
                                 << 1U)) | (IData)(vlSelfRef.flashMiso));
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__counter 
                    = (0x1ffffffffULL & (1ULL + vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter));
                vlSelfRef.flashClk = 1U;
            } else {
                vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__counter 
                    = (0x1ffffffffULL & (1ULL + vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter));
                vlSelfRef.flashClk = 0U;
                if (((0U == (0xfU & (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter))) 
                     & (0ULL < vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter))) {
                    VL_ASSIGNSEL_WI(256,8,(0xffU & 
                                           VL_SHIFTL_III(8,8,32, (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum), 3U)), vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn, vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteOut);
                    vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteNum 
                        = (0xffU & ((IData)(1U) + (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum)));
                    vlSelfRef.top__DOT__flashController__DOT__flash_data_out 
                        = (((~ ((IData)(0xffU) << (0x1fU 
                                                   & VL_SHIFTL_III(5,32,32, (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum), 3U)))) 
                            & vlSelfRef.top__DOT__flashController__DOT__flash_data_out) 
                           | (0xffffffffULL & ((IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteOut) 
                                               << (0x1fU 
                                                   & VL_SHIFTL_III(5,32,32, (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum), 3U)))));
                    if ((3U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum))) {
                        vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 5U;
                    }
                }
            }
        } else if ((6U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) {
            vlSelfRef.flashCs = 0U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend 
                = (0x60000U | (0xffffU & vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend));
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend = 8U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__enabling_done = 1U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 2U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__returnState = 5U;
        } else if ((7U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) {
            vlSelfRef.flashCs = 0U;
            vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataReady = 0U;
            vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__write_progress = 0U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend 
                = (0x20000U | (0xffffU & vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend));
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend = 8U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 2U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__returnState = 8U;
        } else {
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend 
                = (0xffffffU & ((IData)(0x500000U) 
                                + vlSelfRef.top__DOT__flashController__DOT__flash_address));
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend = 0x18U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 2U;
            vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__returnState = 9U;
        }
    } else if ((9U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) {
        vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend 
            = (0xffffffU & vlSelfRef.top__DOT__flashController__DOT__flash_data_in);
        vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend = 8U;
        vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state = 2U;
        vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__returnState = 5U;
    } else if ((5U == (IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state))) {
        vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataReady = 1U;
        vlSelfRef.flashCs = 1U;
        vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[0U] 
            = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[0U];
        vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[1U] 
            = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[1U];
        vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[2U] 
            = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[2U];
        vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[3U] 
            = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[3U];
        vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[4U] 
            = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[4U];
        vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[5U] 
            = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[5U];
        vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[6U] 
            = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[6U];
        vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataInBuffer[7U] 
            = vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[7U];
        vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state 
            = (((IData)(vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__enabling_done) 
                & (IData)(vlSelfRef.top__DOT__flashController__DOT__flash_wen))
                ? 7U : 0U);
    }
    vlSelfRef.top__DOT__ppu_inst__DOT__dataOutAttr 
        = vlSelfRef.top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem
        [vlSelfRef.top__DOT__ppu_inst__DOT____Vcellinp__attributes_Buffer__addr_b];
    vlSelfRef.top__DOT__ppu_inst__DOT__dataOutSprite 
        = vlSelfRef.top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem
        [(0x3fffU & ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__hblank)
                      ? (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__objectPointer)
                      : (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__spritePointer)))];
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy 
        = __Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_last_busy;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period 
        = vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_period;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position 
        = vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_position;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte 
        = vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_byte;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy 
        = vlSelfRef.__Vdly__top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__counter 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__counter;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__state 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__state;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteNum 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteNum;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__currentByteOut 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__currentByteOut;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__enabling_done 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__enabling_done;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataToSend 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataToSend;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__bitsToSend 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__bitsToSend;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__returnState 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__returnState;
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[0U] 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[0U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[1U] 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[1U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[2U] 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[2U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[3U] 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[3U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[4U] 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[4U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[5U] 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[5U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[6U] 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[6U];
    vlSelfRef.top__DOT__flashController__DOT__navigator__DOT__dataIn[7U] 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__navigator__DOT__dataIn[7U];
    if (vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0) {
        vlSelfRef.top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem[vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0] 
            = vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__attributes_Buffer__DOT__mem__v0;
    }
    if (vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0) {
        vlSelfRef.top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem[vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0] 
            = vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__sprite_BRAM__DOT__mem__v0;
    }
    vlSelfRef.top__DOT__uart_controller__DOT__lsr = 0U;
    vlSelfRef.top__DOT__uart_controller__DOT__lsr = 
        ((0xfeU & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__lsr)) 
         | (IData)(vlSelfRef.top__DOT__uart_controller__DOT__rx_rdy));
    vlSelfRef.top__DOT__uart_controller__DOT__lsr = 
        ((0x9fU & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__lsr)) 
         | ((0x40U & ((~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__tx_busy)) 
                      << 6U)) | (0x20U & ((~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__tx_busy)) 
                                          << 5U))));
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rxd_reg 
        = vlSelfRef.uart_rx;
    vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_trigger 
        = ((~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rxd_reg)) 
           & ((~ (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__rx_busy)) 
              & (IData)(vlSelfRef.top__DOT__uart_controller__DOT__uart_inst__DOT__last_rxd)));
}

VL_INLINE_OPT void Vtop___024root___nba_comb__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_comb__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__suppressTrap = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = vlSelfRef.top__DOT__cpu_1__DOT__syscall;
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
    vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 1U;
    vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex = 0U;
    vlSelfRef.top__DOT__cpu_1__DOT__write_pc = 1U;
    vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 0U;
    if (vlSelfRef.top__DOT__memReady) {
        if ((((IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_Branch) 
              | (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_Branch)) 
             & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__syscall))) {
            vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__suppressTrap = 1U;
            vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex = 1U;
            vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 2U;
        } else if (((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MemRead) 
                    & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__IDEX_MemWrite))) {
            vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 0U;
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
            vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = 0U;
            vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 0U;
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
        vlSelfRef.top__DOT__cpu_1__DOT__trap_waiting = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_ifid = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_pc = 0U;
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 1U;
    }
    if (vlSelfRef.top__DOT__cpu_1__DOT__int_taken) {
        vlSelfRef.top__DOT__cpu_1__DOT__bubble_idex = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__write_pc = 1U;
        vlSelfRef.top__DOT__cpu_1__DOT__control_stall_id__DOT__state = 6U;
    } else if (vlSelfRef.top__DOT__cpu_1__DOT__PCSrc) {
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
    vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data = ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__write_memwb)
                                                    ? 
                                                   ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_MemToReg)
                                                     ? vlSelfRef.top__DOT__cpu_1__DOT__MemOut
                                                     : vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_ALUOut)
                                                    : 0U);
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
    vlSelfRef.top__DOT__cpu_1__DOT__trap_vector = (
                                                   ((IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_write_allowed) 
                                                    & (0x341U 
                                                       == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__MEMWB_csr_addr)))
                                                    ? vlSelfRef.top__DOT__cpu_1__DOT__WB_csr_data
                                                    : vlSelfRef.top__DOT__cpu_1__DOT__csrFile__DOT__trap_vector_reg);
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
                    vlSelfRef.top__DOT__overflow = 
                        (1U & (IData)((1ULL & (VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA) 
                                               >> 0x20U))));
                    vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                        = (IData)((0x1ffffffffULL & 
                                   VL_EXTENDS_QI(33,32, vlSelfRef.top__DOT__cpu_1__DOT__ALUInA)));
                } else {
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
                vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                    = ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                        ? 0U : (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                                + (0xfffff000U & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)));
            }
        } else if ((2U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
            vlSelfRef.top__DOT__overflow = (1U & 0U);
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                = ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))
                    ? (0xfffff000U & vlSelfRef.top__DOT__cpu_1__DOT__ALUInB)
                    : (IData)((0xffffffffULL & (((QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUInA)) 
                                                 - (QData)((IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))) 
                                                >> 1U))));
        } else if ((1U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__ALUOp))) {
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
            vlSelfRef.top__DOT__overflow = (1U & (IData)(
                                                         ((QData)((IData)(
                                                                          (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                                                                           | vlSelfRef.top__DOT__cpu_1__DOT__ALUInB))) 
                                                          >> 0x20U)));
            vlSelfRef.top__DOT__cpu_1__DOT__cpu_alu__DOT__out_val 
                = (vlSelfRef.top__DOT__cpu_1__DOT__ALUInA 
                   | vlSelfRef.top__DOT__cpu_1__DOT__ALUInB);
        } else {
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
}

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__4(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__4\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v0) {
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__lineBuffer__v0] 
            = ((0xffU & vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                [vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__lineBuffer__v0]) 
               | ((IData)(vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__lineBuffer__v0) 
                  << 8U));
    }
    if (vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v1) {
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__lineBuffer__v1] 
            = ((0xff00U & vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer
                [vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__lineBuffer__v1]) 
               | (IData)(vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__lineBuffer__v1));
    }
    if (vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__lineBuffer__v2) {
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[1U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[2U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[3U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[4U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[5U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[6U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[7U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[8U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[9U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0xaU] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0xbU] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0xcU] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0xdU] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0xeU] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0xfU] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0x10U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0x11U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0x12U] = 0U;
        vlSelfRef.top__DOT__ppu_inst__DOT__lineBuffer[0x13U] = 0U;
    }
    if (vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__objectAttributes__v0) {
        vlSelfRef.top__DOT__ppu_inst__DOT__objectAttributes[vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__objectAttributes__v0] 
            = vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__objectAttributes__v0;
    }
    vlSelfRef.top__DOT__ppu_inst__DOT__objectPointer 
        = vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__objectPointer;
    vlSelfRef.top__DOT__ppu_inst__DOT__hblank = vlSelfRef.__Vdly__top__DOT__ppu_inst__DOT__hblank;
    if (vlSelfRef.top__DOT__reset) {
        if (((IData)(vlSelfRef.top__DOT__flash_wen) 
             | (IData)(vlSelfRef.top__DOT__flash_ren))) {
            if ((0U != (0xffU & vlSelfRef.top__DOT__data_addr))) {
                if ((1U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                    if (vlSelfRef.top__DOT__flash_wen) {
                        vlSelfRef.top__DOT__flashController__DOT__flash_enable = 1U;
                        vlSelfRef.top__DOT__flashController__DOT__flash_ren 
                            = ((0U != vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData)
                                ? 1U : 0U);
                    }
                } else if ((2U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                    if (vlSelfRef.top__DOT__flash_wen) {
                        vlSelfRef.top__DOT__flashController__DOT__flash_enable = 1U;
                    }
                } else if ((4U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                    if (vlSelfRef.top__DOT__flash_wen) {
                        vlSelfRef.top__DOT__flashController__DOT__flash_enable = 1U;
                    }
                }
                if ((1U != (0xffU & vlSelfRef.top__DOT__data_addr))) {
                    if ((2U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                        if (vlSelfRef.top__DOT__flash_wen) {
                            vlSelfRef.top__DOT__flashController__DOT__flash_wen 
                                = ((0U != vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData)
                                    ? 1U : 0U);
                        }
                    }
                    if ((2U != (0xffU & vlSelfRef.top__DOT__data_addr))) {
                        if ((4U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                            if (vlSelfRef.top__DOT__flash_wen) {
                                vlSelfRef.top__DOT__flashController__DOT__flash_address 
                                    = (0xffffffU & vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData);
                            }
                        }
                        if ((4U != (0xffU & vlSelfRef.top__DOT__data_addr))) {
                            if ((8U == (0xffU & vlSelfRef.top__DOT__data_addr))) {
                                if (vlSelfRef.top__DOT__flash_wen) {
                                    vlSelfRef.top__DOT__flashController__DOT__flash_data_in 
                                        = vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData;
                                }
                            }
                        }
                    }
                }
            }
        } else if ((1U & (~ (IData)(vlSelfRef.top__DOT__flashController__DOT__flash_ready)))) {
            vlSelfRef.top__DOT__flashController__DOT__flash_enable = 0U;
        }
        vlSelfRef.top__DOT__ppu_inst__DOT__spritePointer 
            = ((0x80U <= (IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt))
                ? (0x7fffU & ((VL_SHIFTL_III(15,32,32, 
                                             ((IData)(vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt) 
                                              - (IData)(0x80U)), 5U) 
                               + VL_SHIFTL_III(15,32,32, 
                                               (0xfU 
                                                & ((IData)(vlSelfRef.top__DOT__ycursor) 
                                                   >> 1U)), 1U)) 
                              + (1U & (((IData)(1U) 
                                        + (IData)(vlSelfRef.top__DOT__xcursor)) 
                                       >> 3U)))) : 0U);
    } else {
        vlSelfRef.top__DOT__flashController__DOT__flash_enable = 1U;
        vlSelfRef.top__DOT__flashController__DOT__flash_wen = 0U;
        vlSelfRef.top__DOT__flashController__DOT__flash_ren = 0U;
        vlSelfRef.top__DOT__flashController__DOT__flash_address = 0U;
        vlSelfRef.top__DOT__flashController__DOT__flash_data_in = 0U;
    }
    vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData = 
        ((0U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3))
          ? ((2U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)
              ? ((1U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)
                  ? VL_SHIFTL_III(32,32,32, vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData, 0x18U)
                  : VL_SHIFTL_III(32,32,32, vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData, 0x10U))
              : ((1U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut)
                  ? VL_SHIFTL_III(32,32,32, vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData, 8U)
                  : vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData))
          : ((1U == (IData)(vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_funct3))
              ? ((0U == (3U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut))
                  ? vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData
                  : ((2U == (3U & vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_ALUOut))
                      ? VL_SHIFTL_III(32,32,32, vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData, 0x10U)
                      : 0U)) : vlSelfRef.top__DOT__cpu_1__DOT__EXMEM_MemWriteData));
    vlSelfRef.top__DOT__ycursor = vlSelfRef.__Vdly__top__DOT__ycursor;
    vlSelfRef.top__DOT__xcursor = vlSelfRef.__Vdly__top__DOT__xcursor;
    vlSelfRef.top__DOT__ppu_inst__DOT__data_in_half 
        = (0xffffU & ((3U == (3U & (IData)(vlSelfRef.top__DOT__cpu_1__DOT__byte_select_vector)))
                       ? vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData
                       : (vlSelfRef.top__DOT__cpu_1__DOT__MemWriteData 
                          >> 0x10U)));
    vlSelfRef.LCD_SYNC = (0x1e9U <= (IData)(vlSelfRef.top__DOT__ycursor));
    vlSelfRef.LCD_HYNC = (0x398U <= (IData)(vlSelfRef.top__DOT__xcursor));
    vlSelfRef.LCD_DEN = ((0x320U >= (IData)(vlSelfRef.top__DOT__xcursor)) 
                         & (0x1e0U >= (IData)(vlSelfRef.top__DOT__ycursor)));
}

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__5(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__5\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.top__DOT__flashController__DOT__flash_ready 
        = vlSelfRef.__Vdly__top__DOT__flashController__DOT__flash_ready;
    vlSelfRef.top__DOT__ppu_inst__DOT__dataOutTxt = 
        vlSelfRef.top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem
        [vlSelfRef.top__DOT__ppu_inst__DOT____Vcellinp__attributes_Buffer__addr_b];
    if ((0U == (IData)(vlSelfRef.top__DOT__state))) {
        vlSelfRef.top__DOT__reset = 0U;
        vlSelfRef.__Vdly__top__DOT__state = 3U;
    } else if ((1U == (IData)(vlSelfRef.top__DOT__state))) {
        vlSelfRef.__Vdly__top__DOT__state = 0U;
    } else if ((2U == (IData)(vlSelfRef.top__DOT__state))) {
        vlSelfRef.__Vdly__top__DOT__txCounter = (0x7fffffU 
                                                 & ((IData)(1U) 
                                                    + vlSelfRef.top__DOT__txCounter));
        vlSelfRef.top__DOT__cpuclk = 0U;
        if ((0xffU == vlSelfRef.top__DOT__txCounter)) {
            vlSelfRef.__Vdly__top__DOT__txCounter = 0U;
            vlSelfRef.__Vdly__top__DOT__state = 3U;
        } else {
            vlSelfRef.__Vdly__top__DOT__state = 2U;
        }
    } else if ((3U == (IData)(vlSelfRef.top__DOT__state))) {
        vlSelfRef.top__DOT__cpuclk = 1U;
        vlSelfRef.top__DOT__reset = 1U;
    }
    if (vlSelfRef.__VdlySet__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0) {
        vlSelfRef.top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem[vlSelfRef.__VdlyDim0__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0] 
            = vlSelfRef.__VdlyVal__top__DOT__ppu_inst__DOT__text_Buffer__DOT__mem__v0;
    }
    vlSelfRef.top__DOT__state = vlSelfRef.__Vdly__top__DOT__state;
    vlSelfRef.top__DOT__txCounter = vlSelfRef.__Vdly__top__DOT__txCounter;
}

VL_INLINE_OPT void Vtop___024root___nba_comb__TOP__1(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_comb__TOP__1\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
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

VL_INLINE_OPT void Vtop___024root___nba_comb__TOP__2(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_comb__TOP__2\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
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
}

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__6(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__6\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.top__DOT__ppu_inst__DOT____Vcellinp__attributes_Buffer__addr_b 
        = ((0x7c0U & ((IData)(vlSelfRef.top__DOT__ycursor) 
                      << 1U)) | (0x3fU & (((IData)(1U) 
                                           + (IData)(vlSelfRef.top__DOT__xcursor)) 
                                          >> 4U)));
}

void Vtop___024root___eval_triggers__act(Vtop___024root* vlSelf);
void Vtop___024root___eval_act(Vtop___024root* vlSelf);

bool Vtop___024root___eval_phase__act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<4> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtop___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vtop___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

void Vtop___024root___eval_nba(Vtop___024root* vlSelf);

bool Vtop___024root___eval_phase__nba(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__nba\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtop___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__ico(Vtop___024root* vlSelf);
#endif  // VL_DEBUG
bool Vtop___024root___eval_phase__ico(Vtop___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__nba(Vtop___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__act(Vtop___024root* vlSelf);
#endif  // VL_DEBUG

void Vtop___024root___eval(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelfRef.__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY(((0x64U < __VicoIterCount)))) {
#ifdef VL_DEBUG
            Vtop___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("../include/../soc.v", 9, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vtop___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelfRef.__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vtop___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("../include/../soc.v", 9, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vtop___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("../include/../soc.v", 9, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vtop___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vtop___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtop___024root___eval_debug_assertions(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_debug_assertions\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (VL_UNLIKELY(((vlSelfRef.clk & 0xfeU)))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY(((vlSelfRef.flashMiso & 0xfeU)))) {
        Verilated::overWidthError("flashMiso");}
    if (VL_UNLIKELY(((vlSelfRef.uart_rx & 0xfeU)))) {
        Verilated::overWidthError("uart_rx");}
    if (VL_UNLIKELY(((vlSelfRef.btnDownL & 0xfeU)))) {
        Verilated::overWidthError("btnDownL");}
    if (VL_UNLIKELY(((vlSelfRef.btnUpL & 0xfeU)))) {
        Verilated::overWidthError("btnUpL");}
    if (VL_UNLIKELY(((vlSelfRef.btnLeftL & 0xfeU)))) {
        Verilated::overWidthError("btnLeftL");}
    if (VL_UNLIKELY(((vlSelfRef.btnRightL & 0xfeU)))) {
        Verilated::overWidthError("btnRightL");}
    if (VL_UNLIKELY(((vlSelfRef.btnDownR & 0xfeU)))) {
        Verilated::overWidthError("btnDownR");}
    if (VL_UNLIKELY(((vlSelfRef.btnUpR & 0xfeU)))) {
        Verilated::overWidthError("btnUpR");}
    if (VL_UNLIKELY(((vlSelfRef.btnLeftR & 0xfeU)))) {
        Verilated::overWidthError("btnLeftR");}
    if (VL_UNLIKELY(((vlSelfRef.btnRightR & 0xfeU)))) {
        Verilated::overWidthError("btnRightR");}
}
#endif  // VL_DEBUG

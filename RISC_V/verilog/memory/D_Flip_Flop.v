/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : D_Flip_Flop                                                  **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module D_Flip_Flop( Clock,
                    D,
                    Preset,
                    Reset,
                    Tick,
                    Q,
                    Q_bar);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter ActiveLevel = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Clock;
   input  D;
   input  Preset;
   input  Reset;
   input  Tick;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output Q;
   output Q_bar;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_next_state;
   reg[1:0] s_current_state_reg;

   /***************************************************************************
    ** Here the ouput signals are defined                                    **
    ***************************************************************************/
   assign Q     = s_current_state_reg[ActiveLevel];
   assign Q_bar = ~(s_current_state_reg[ActiveLevel]);

   /***************************************************************************
    ** Here the update logic is defined                                      **
    ***************************************************************************/
   assign s_next_state = D;

   /***************************************************************************
    ** Here the initial register value is defined; for simulation only       **
    ***************************************************************************/
   initial
   begin
      s_current_state_reg = 0;
   end

   /***************************************************************************
    ** Here the actual state register is defined                             **
    ***************************************************************************/
   always @(*)
   begin
      if (Reset) s_current_state_reg <= 2'b0;
      else if (Preset) s_current_state_reg <= 2'b1;
      else if (Tick & (Clock == ActiveLevel)) s_current_state_reg <= {s_next_state,s_next_state};
   end


endmodule

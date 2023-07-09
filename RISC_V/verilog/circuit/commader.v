/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : commader                                                     **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module commader( Funct,
                 IR21,
                 OP,
                 ALU_OP,
                 ALU_SRC,
                 BLTU,
                 Beq,
                 Bne,
                 CSRRCI,
                 CSRRSI,
                 JAL,
                 Jalr,
                 LB,
                 MemToReg,
                 MemWrite,
                 RegWrite,
                 SLL,
                 S_type,
                 XOR,
                 ecall,
                 rs1,
                 rs2,
                 uret);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  Funct;
   input  IR21;
   input[4:0]  OP;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] ALU_OP;
   output ALU_SRC;
   output BLTU;
   output Beq;
   output Bne;
   output CSRRCI;
   output CSRRSI;
   output JAL;
   output Jalr;
   output LB;
   output MemToReg;
   output MemWrite;
   output RegWrite;
   output SLL;
   output S_type;
   output XOR;
   output ecall;
   output rs1;
   output rs2;
   output uret;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_39;
   wire[4:0] s_LOGISIM_BUS_40;
   wire[4:0] s_LOGISIM_BUS_43;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_40[4:0]              = Funct;
   assign s_LOGISIM_BUS_43[4:0]              = OP;
   assign s_LOGISIM_NET_19                   = IR21;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Beq                                = s_LOGISIM_NET_2;
   assign Bne                                = s_LOGISIM_NET_36;
   assign uret                               = s_LOGISIM_NET_35;
   assign SLL                                = s_LOGISIM_NET_42;
   assign ALU_SRC                            = s_LOGISIM_NET_22;
   assign MemWrite                           = s_LOGISIM_NET_20;
   assign rs1                                = s_LOGISIM_NET_13;
   assign CSRRSI                             = s_LOGISIM_NET_37;
   assign BLTU                               = s_LOGISIM_NET_18;
   assign CSRRCI                             = s_LOGISIM_NET_0;
   assign LB                                 = s_LOGISIM_NET_16;
   assign ALU_OP                             = s_LOGISIM_BUS_39[3:0];
   assign ecall                              = s_LOGISIM_NET_34;
   assign JAL                                = s_LOGISIM_NET_1;
   assign rs2                                = s_LOGISIM_NET_48;
   assign MemToReg                           = s_LOGISIM_NET_47;
   assign RegWrite                           = s_LOGISIM_NET_41;
   assign XOR                                = s_LOGISIM_NET_17;
   assign Jalr                               = s_LOGISIM_NET_46;
   assign S_type                             = s_LOGISIM_NET_21;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_NET_19),
                         .Result(s_LOGISIM_NET_23));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_23),
              .Input_2(s_LOGISIM_NET_38),
              .Result(s_LOGISIM_NET_34));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_19),
              .Input_2(s_LOGISIM_NET_38),
              .Result(s_LOGISIM_NET_35));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   control      control_1 (.ALU_SRC(s_LOGISIM_NET_22),
                           .BEQ(s_LOGISIM_NET_2),
                           .BLTU(s_LOGISIM_NET_18),
                           .BNE(s_LOGISIM_NET_36),
                           .CSRRCI(s_LOGISIM_NET_0),
                           .CSRRSI(s_LOGISIM_NET_37),
                           .F12(s_LOGISIM_BUS_40[0]),
                           .F13(s_LOGISIM_BUS_40[1]),
                           .F14(s_LOGISIM_BUS_40[2]),
                           .F25(s_LOGISIM_BUS_40[3]),
                           .F30(s_LOGISIM_BUS_40[4]),
                           .JAL(s_LOGISIM_NET_1),
                           .JALR(s_LOGISIM_NET_46),
                           .LB(s_LOGISIM_NET_16),
                           .MemToReg(s_LOGISIM_NET_47),
                           .MemWrite(s_LOGISIM_NET_20),
                           .OP2(s_LOGISIM_BUS_43[0]),
                           .OP3(s_LOGISIM_BUS_43[1]),
                           .OP4(s_LOGISIM_BUS_43[2]),
                           .OP5(s_LOGISIM_BUS_43[3]),
                           .OP6(s_LOGISIM_BUS_43[4]),
                           .RegWrite(s_LOGISIM_NET_41),
                           .SLL(s_LOGISIM_NET_42),
                           .S_Type(s_LOGISIM_NET_21),
                           .XOR(s_LOGISIM_NET_17),
                           .ecall(s_LOGISIM_NET_38),
                           .rs1(s_LOGISIM_NET_13),
                           .rs2(s_LOGISIM_NET_48));

   cal      cal_1 (.F12(s_LOGISIM_BUS_40[0]),
                   .F13(s_LOGISIM_BUS_40[1]),
                   .F14(s_LOGISIM_BUS_40[2]),
                   .F25(s_LOGISIM_BUS_40[3]),
                   .F30(s_LOGISIM_BUS_40[4]),
                   .OP2(s_LOGISIM_BUS_43[0]),
                   .OP3(s_LOGISIM_BUS_43[1]),
                   .OP4(s_LOGISIM_BUS_43[2]),
                   .OP5(s_LOGISIM_BUS_43[3]),
                   .OP6(s_LOGISIM_BUS_43[4]),
                   .S0(s_LOGISIM_BUS_39[0]),
                   .S1(s_LOGISIM_BUS_39[1]),
                   .S2(s_LOGISIM_BUS_39[2]),
                   .S3(s_LOGISIM_BUS_39[3]));



endmodule

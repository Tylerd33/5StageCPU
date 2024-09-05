`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2024 03:11:37 PM
// Design Name: 
// Module Name: TestBench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TestBench();
    reg clk_tb;
    initial clk_tb = 1'b0;
    
    wire [31:0] pc, dinstOut;
    wire ewreg, em2reg, ewmem, ealuimm;
    wire [3:0] ealuc;
    wire [4:0] edestReg;
    wire [31:0] eqa, eqb, eimm32;
    wire mwreg, mm2reg, mwmem;
    wire [4:0] mdestReg;
    wire [31:0] mr, mqb;
    wire wwreg, wm2reg;
    wire [4:0] wdestReg;
    wire [31:0] wr, wdo;
    
    Datapath dp_tb(
        .clk(clk_tb),
        .pc(pc),
        .dinstOut(dinstOut),
        .ewreg(ewreg),
        .em2reg(em2reg),
        .ewmem(ewmem),
        .ealuc(ealuc),
        .ealuimm(ealuimm),
        .edestReg(edestReg),
        .eqa(eqa),
        .eqb(eqb),
        .eimm32(eimm32),
        .mwreg(mwreg),
        .mm2reg(mm2reg),
        .mwmem(mwmem),
        .mdestReg(mdestReg),
        .mr(mr),
        .mqb(mqb),
        .wwreg(wwreg),
        .wm2reg(wm2reg),
        .wdestReg(wdestReg),
        .wr(wr),
        .wdo(wdo)
    );
    
    always
    begin
        #5 clk_tb = ~clk_tb;
    end
endmodule


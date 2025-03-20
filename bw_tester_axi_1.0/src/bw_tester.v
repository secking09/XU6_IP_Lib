`timescale 1ns / 1ps


module bw_tester #(

    parameter integer C_M_AXIS_TDATA_WIDTH	= 32,
    parameter integer C_M_START_COUNT	    = 32,
    parameter integer C_S_AXIS_TDATA_WIDTH	= 32
  )(

    // Clk & Rst
    input  wire  clk                                 ,
    input  wire  rst_n                              ,
    // S2MM Throughput signals //
    input wire s2mm_s_tvalid,
    input wire s2mm_wlast,
    // MM2S Throughput signals //
    input wire mm2s_arvalid,
    input wire mm2s_s_tlast,
    // Fifo Flags //
    input wire fifo_overflow,
    input wire fifo_underflow,
    // Register Interface //                               ,
    input wire trigger                                       ,
    input wire reset_timer                                   ,
    output reg reset_req                                     ,
    output reg reset_ack                                     ,
    //s2mm channel related registers
    output reg [31:0] s2mm_wlast_timer_reg      ,
    output reg [31:0] s2mm_stream_timer_reg     ,
    output reg [31:0] s2mm_wlast_count          ,
    output reg [31:0] s2mm_stream_count         ,
    // mm2s channel related registers,
    output reg [31:0] mm2s_arwalid_timer_reg    ,
    output reg [31:0] mm2s_stream_timer_reg     ,
    output reg [31:0] mm2s_tlast_count          ,
    output reg [31:0] mm2s_stream_count         ,
    //debug
    output wire [31:0] timer
  );

  //s2mm channel related registers
  //reg [31:0] s2mm_wlast_timer_reg;
  //reg [31:0] s2mm_stream_timer_reg;
  //reg [31:0] s2mm_wlast_count;
  //reg [31:00] s2mm_stream_count;
  reg s2mm_wlast_d;
  reg s2mm_s_tvalid_seen;

  // mm2s channel related registers
  //reg [31:0] mm2s_arwalid_timer_reg;
  //reg [31:0] mm2s_stream_timer_reg;
  //reg [31:0] mm2s_tlast_count;
  //reg [31:0] mm2s_stream_count;
  reg mm2s_s_tlast_d;
  reg mm2s_arvalid_seen;


  // timer related registers
  reg timer_run_reg;
  reg [31:0] timer_reg;

  // register interface registers
  reg reset_ack;
  reg reset_timer_reg;

  always @(posedge clk)
  begin
    if (!rst_n | reset_timer_reg)
    begin
      reset_ack <= 1'b1;

      timer_run_reg <= 1'b0;
      timer_reg <=32'b0;

      s2mm_wlast_count <= 32'b0;
      s2mm_stream_count <= 32'b0;
      mm2s_stream_count <= 32'b0;
      mm2s_tlast_count <= 32'b0;

      mm2s_arwalid_timer_reg<=32'b0;
      s2mm_wlast_timer_reg <= 32'b0;
      s2mm_stream_timer_reg <= 32'b0;
      mm2s_stream_timer_reg <= 32'b0;

      s2mm_s_tvalid_seen <= 1'b0;
      mm2s_arvalid_seen <= 1'b0;

      reset_timer_reg <= 1'b0;

      s2mm_wlast_d <= 1'b0;
      mm2s_s_tlast_d <= 1'b0;
    end
    else
    begin
      reset_ack <= 1'b0;
      reset_timer_reg <= reset_timer;
      s2mm_wlast_d <= s2mm_wlast;
      mm2s_s_tlast_d <= mm2s_s_tlast;
      if(trigger)
        timer_run_reg <= 1'b1;

      if(timer_run_reg)
      begin
        timer_reg <= timer_reg + 1;
        if(timer_reg > 32'hFFFFFFFE)
          timer_reg <= 32'b0;
      end
      else
      begin
        timer_reg <= 32'b0;
      end

      if(s2mm_wlast & !s2mm_wlast_d) // just to measure to record only the rising edges of signals. I observed tlast can stay high for couple of clock cycles for some reason.
      begin
        s2mm_wlast_count <= s2mm_wlast_count + 1;
        s2mm_wlast_timer_reg <= timer_reg;
      end
      if(s2mm_s_tvalid)
      begin
        s2mm_stream_count <= s2mm_stream_count + 1;
      end
      if(s2mm_s_tvalid && !s2mm_s_tvalid_seen)
      begin
        s2mm_stream_timer_reg <= timer_reg;
        s2mm_s_tvalid_seen <= 1'b1;
      end
      if(mm2s_s_tlast & !mm2s_s_tlast_d)
      begin
        mm2s_tlast_count <= mm2s_tlast_count+1;
        mm2s_stream_timer_reg <= timer_reg;
      end
      if (mm2s_arvalid)
      begin
        mm2s_stream_count <= mm2s_stream_count + 1;
      end
      if (mm2s_arvalid && !mm2s_arvalid_seen)
      begin
        mm2s_arvalid_seen <= 1'b1;
        mm2s_arwalid_timer_reg <= timer_reg;
      end


    end

  end

  assign timer = timer_reg;

endmodule

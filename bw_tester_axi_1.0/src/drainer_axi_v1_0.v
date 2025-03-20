
`timescale 1 ns / 1 ps

module drainer_axi_v1_0 #
  (
    // Users to add parameters here
    parameter integer C_M_AXIS_TDATA_WIDTH	= 32,
    parameter integer C_M_START_COUNT 		= 32,
    parameter integer C_S_AXIS_TDATA_WIDTH	= 32,
    // User parameters ends
    // Do not modify the parameters beyond this line

    // AXI interface added

    // parameter integer C_S01_AXI_ID_WIDTH	= 1,
    // parameter integer C_S01_AXI_DATA_WIDTH	= 32,
    // parameter integer C_S01_AXI_ADDR_WIDTH	= 6,
    // parameter integer C_S01_AXI_AWUSER_WIDTH	= 0,
    // parameter integer C_S01_AXI_ARUSER_WIDTH	= 0,
    // parameter integer C_S01_AXI_WUSER_WIDTH	= 0,
    // parameter integer C_S01_AXI_RUSER_WIDTH	= 0,
    // parameter integer C_S01_AXI_BUSER_WIDTH	= 0,

    // AXI interface added
    // Parameters of Axi Master Bus Interface S2MM_AXI

    // Parameters of Axi Slave Bus Interface s2mm_axi
    parameter integer C_s2mm_axi_ID_WIDTH	= 1,
    parameter integer C_s2mm_axi_DATA_WIDTH	= 32,
    parameter integer C_s2mm_axi_ADDR_WIDTH	= 6,
    parameter integer C_s2mm_axi_AWUSER_WIDTH	= 0,
    parameter integer C_s2mm_axi_ARUSER_WIDTH	= 0,
    parameter integer C_s2mm_axi_WUSER_WIDTH	= 0,
    parameter integer C_s2mm_axi_RUSER_WIDTH	= 0,
    parameter integer C_s2mm_axi_BUSER_WIDTH	= 0,


    parameter integer C_mm2s_axi_ID_WIDTH	= 1,
    parameter integer C_mm2s_axi_DATA_WIDTH	= 32,
    parameter integer C_mm2s_axi_ADDR_WIDTH	= 6,
    parameter integer C_mm2s_axi_AWUSER_WIDTH	= 0,
    parameter integer C_mm2s_axi_ARUSER_WIDTH	= 0,
    parameter integer C_mm2s_axi_WUSER_WIDTH	= 0,
    parameter integer C_mm2s_axi_RUSER_WIDTH	= 0,
    parameter integer C_mm2s_axi_BUSER_WIDTH	= 0,



    // Parameters of Axi Slave Bus Interface S00_AXI
    parameter integer C_S00_AXI_DATA_WIDTH	= 32,
    parameter integer C_S00_AXI_ADDR_WIDTH	= 6
  )
  (
    // Users to add ports here

    input wire start_timer,

    input  wire  clk           				      ,
    input  wire  aresetn                           ,

    // S2MM Throughput signals //
    input wire s2mm_s_tvalid,
    // MM2S Throughput signals //
    input wire mm2s_s_tlast,
    // Fifo Flags //
    input wire fifo_overflow,
    input wire fifo_underflow,
    output wire [31:0] timer 							,
    output wire       trigger_timer                        ,

    // User ports ends
    // Do not modify the ports beyond this line
    // Ports of Axi Slave Bus Interface s2mm_axi
    input wire  s2mm_axi_aclk,
    input wire  s2mm_axi_aresetn,
    input wire [C_s2mm_axi_ID_WIDTH-1 : 0] s2mm_axi_awid,
    input wire [C_s2mm_axi_ADDR_WIDTH-1 : 0] s2mm_axi_awaddr,
    input wire [7 : 0] s2mm_axi_awlen,
    input wire [2 : 0] s2mm_axi_awsize,
    input wire [1 : 0] s2mm_axi_awburst,
    input wire  s2mm_axi_awlock,
    input wire [3 : 0] s2mm_axi_awcache,
    input wire [2 : 0] s2mm_axi_awprot,
    input wire [3 : 0] s2mm_axi_awqos,
    input wire [3 : 0] s2mm_axi_awregion,
    input wire [C_s2mm_axi_AWUSER_WIDTH-1 : 0] s2mm_axi_awuser,
    input wire  s2mm_axi_awvalid,
    output wire  s2mm_axi_awready,
    input wire [C_s2mm_axi_DATA_WIDTH-1 : 0] s2mm_axi_wdata,
    input wire [(C_s2mm_axi_DATA_WIDTH/8)-1 : 0] s2mm_axi_wstrb,
    input wire  s2mm_axi_wlast,
    input wire [C_s2mm_axi_WUSER_WIDTH-1 : 0] s2mm_axi_wuser,
    input wire  s2mm_axi_wvalid,
    output wire  s2mm_axi_wready,
    output wire [C_s2mm_axi_ID_WIDTH-1 : 0] s2mm_axi_bid,
    output wire [1 : 0] s2mm_axi_bresp,
    output wire [C_s2mm_axi_BUSER_WIDTH-1 : 0] s2mm_axi_buser,
    output wire  s2mm_axi_bvalid,
    input wire  s2mm_axi_bready,
    input wire [C_s2mm_axi_ID_WIDTH-1 : 0] s2mm_axi_arid,
    input wire [C_s2mm_axi_ADDR_WIDTH-1 : 0] s2mm_axi_araddr,
    input wire [7 : 0] s2mm_axi_arlen,
    input wire [2 : 0] s2mm_axi_arsize,
    input wire [1 : 0] s2mm_axi_arburst,
    input wire  s2mm_axi_arlock,
    input wire [3 : 0] s2mm_axi_arcache,
    input wire [2 : 0] s2mm_axi_arprot,
    input wire [3 : 0] s2mm_axi_arqos,
    input wire [3 : 0] s2mm_axi_arregion,
    input wire [C_s2mm_axi_ARUSER_WIDTH-1 : 0] s2mm_axi_aruser,
    input wire  s2mm_axi_arvalid,
    output wire  s2mm_axi_arready,
    output wire [C_s2mm_axi_ID_WIDTH-1 : 0] s2mm_axi_rid,
    output wire [C_s2mm_axi_DATA_WIDTH-1 : 0] s2mm_axi_rdata,
    output wire [1 : 0] s2mm_axi_rresp,
    output wire  s2mm_axi_rlast,
    output wire [C_s2mm_axi_RUSER_WIDTH-1 : 0] s2mm_axi_ruser,
    output wire  s2mm_axi_rvalid, 
    input wire  s2mm_axi_rready,

    // Ports of Axi Master Bus Interface MM2S_AXI
    input wire  mm2s_axi_aclk,
    input wire  mm2s_axi_aresetn,
    input wire [C_mm2s_axi_ID_WIDTH-1 : 0] mm2s_axi_awid,
    input wire [C_mm2s_axi_ADDR_WIDTH-1 : 0] mm2s_axi_awaddr,
    input wire [7 : 0] mm2s_axi_awlen,
    input wire [2 : 0] mm2s_axi_awsize,
    input wire [1 : 0] mm2s_axi_awburst,
    input wire  mm2s_axi_awlock,
    input wire [3 : 0] mm2s_axi_awcache,
    input wire [2 : 0] mm2s_axi_awprot,
    input wire [3 : 0] mm2s_axi_awqos,
    input wire [3 : 0] mm2s_axi_awregion,
    input wire [C_mm2s_axi_AWUSER_WIDTH-1 : 0] mm2s_axi_awuser,
    input wire  mm2s_axi_awvalid,
    output wire  mm2s_axi_awready,
    input wire [C_mm2s_axi_DATA_WIDTH-1 : 0] mm2s_axi_wdata,
    input wire [(C_mm2s_axi_DATA_WIDTH/8)-1 : 0] mm2s_axi_wstrb,
    input wire  mm2s_axi_wlast,
    input wire [C_mm2s_axi_WUSER_WIDTH-1 : 0] mm2s_axi_wuser,
    input wire  mm2s_axi_wvalid,
    output wire  mm2s_axi_wready,
    output wire [C_mm2s_axi_ID_WIDTH-1 : 0] mm2s_axi_bid,
    output wire [1 : 0] mm2s_axi_bresp,
    output wire [C_mm2s_axi_BUSER_WIDTH-1 : 0] mm2s_axi_buser,
    output wire  mm2s_axi_bvalid,
    input wire  mm2s_axi_bready,
    input wire [C_mm2s_axi_ID_WIDTH-1 : 0] mm2s_axi_arid,
    input wire [C_mm2s_axi_ADDR_WIDTH-1 : 0] mm2s_axi_araddr,
    input wire [7 : 0] mm2s_axi_arlen,
    input wire [2 : 0] mm2s_axi_arsize,
    input wire [1 : 0] mm2s_axi_arburst,
    input wire  mm2s_axi_arlock,
    input wire [3 : 0] mm2s_axi_arcache,
    input wire [2 : 0] mm2s_axi_arprot,
    input wire [3 : 0] mm2s_axi_arqos,
    input wire [3 : 0] mm2s_axi_arregion,
    input wire [C_mm2s_axi_ARUSER_WIDTH-1 : 0] mm2s_axi_aruser,
    input wire  mm2s_axi_arvalid,
    output wire  mm2s_axi_arready,
    output wire [C_mm2s_axi_ID_WIDTH-1 : 0] mm2s_axi_rid,
    output wire [C_mm2s_axi_DATA_WIDTH-1 : 0] mm2s_axi_rdata,
    output wire [1 : 0] mm2s_axi_rresp,
    output wire  mm2s_axi_rlast,
    output wire [C_mm2s_axi_RUSER_WIDTH-1 : 0] mm2s_axi_ruser,
    output wire  mm2s_axi_rvalid,
    input wire  mm2s_axi_rready,


    // Ports of Axi Slave Bus  Interface S00_AXI
    input wire  s00_axi_aclk,
    input wire  s00_axi_aresetn,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
    input wire [2 : 0] s00_axi_awprot,
    input wire  s00_axi_awvalid,
    output wire  s00_axi_awready,
    input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
    input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input wire  s00_axi_wvalid,
    output wire  s00_axi_wready,
    output wire [1 : 0] s00_axi_bresp,
    output wire  s00_axi_bvalid,
    input wire  s00_axi_bready,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
    input wire [2 : 0] s00_axi_arprot,
    input wire  s00_axi_arvalid,
    output wire  s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
    output wire [1 : 0] s00_axi_rresp,
    output wire  s00_axi_rvalid,
    input wire  s00_axi_rready
  );
  // Instantiation of Axi Bus Interface S00_AXI

 
  wire read_req_w;
  wire start_timer_auth;
  wire reset_timer_w;
  wire reset_req_w;
  wire start_timer_w;
  wire [31:0] data_in_w;
  wire reset_ack_w;
  wire [31:0] t_last_count_w;
  wire [31:0] valid_count_w;
  wire direction_w;
  wire [31:0]	timer_w;

  wire [31:0] t_last_w;
  wire		valid_w;

  wire [31:0] s2mm_wlast_timer_reg_w	;
  wire [31:0] s2mm_stream_timer_reg_w	;
  wire [31:0] s2mm_wlast_count_w		;
  wire [31:0] s2mm_stream_count_w		;
  wire [31:0] mm2s_arwalid_timer_reg_w	;
  wire [31:0] mm2s_stream_timer_reg_w	;
  wire [31:0] mm2s_tlast_count_w		;
  wire [31:0] mm2s_stream_count_w		;

  drainer_axi_v1_0_S00_AXI # (
                             .C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
                             .C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
                           ) drainerIP_axi_v1_0_S00_AXI_inst (
                             .reset_timer	(reset_timer_w),
                             .start_timer	(start_timer_w),
                             .reset_ack     (reset_ack_w),

                             .s2mm_wlast_timer_reg  	 (s2mm_wlast_timer_reg_w	),
                             .s2mm_stream_timer_reg 	 (s2mm_stream_timer_reg_w	),
                             .s2mm_wlast_count      	 (s2mm_wlast_count_w		),
                             .s2mm_stream_count     	 (s2mm_stream_count_w		),
                             .mm2s_arwalid_timer_reg 	 (mm2s_arwalid_timer_reg_w	),
                             .mm2s_stream_timer_reg	 	 (mm2s_stream_timer_reg_w	),
                             .mm2s_tlast_count      	 (mm2s_tlast_count_w		),
                             .mm2s_stream_count     	 (mm2s_stream_count_w		),

                             .S_AXI_ACLK(s00_axi_aclk),
                             .S_AXI_ARESETN(s00_axi_aresetn),
                             .S_AXI_AWADDR(s00_axi_awaddr),
                             .S_AXI_AWPROT(s00_axi_awprot),
                             .S_AXI_AWVALID(s00_axi_awvalid),
                             .S_AXI_AWREADY(s00_axi_awready),
                             .S_AXI_WDATA(s00_axi_wdata),
                             .S_AXI_WSTRB(s00_axi_wstrb),
                             .S_AXI_WVALID(s00_axi_wvalid),
                             .S_AXI_WREADY(s00_axi_wready),
                             .S_AXI_BRESP(s00_axi_bresp),
                             .S_AXI_BVALID(s00_axi_bvalid),
                             .S_AXI_BREADY(s00_axi_bready),
                             .S_AXI_ARADDR(s00_axi_araddr),
                             .S_AXI_ARPROT(s00_axi_arprot),
                             .S_AXI_ARVALID(s00_axi_arvalid),
                             .S_AXI_ARREADY(s00_axi_arready),
                             .S_AXI_RDATA(s00_axi_rdata),
                             .S_AXI_RRESP(s00_axi_rresp),
                             .S_AXI_RVALID(s00_axi_rvalid),
                             .S_AXI_RREADY(s00_axi_rready)
                           );

  // Add user logic here 
  bw_tester  #(
               .C_M_AXIS_TDATA_WIDTH   (C_M_AXIS_TDATA_WIDTH),
               .C_M_START_COUNT 		(C_M_START_COUNT 	),
               .C_S_AXIS_TDATA_WIDTH	(C_S_AXIS_TDATA_WIDTH)
             )
             module1 (

               .clk (clk),
               .rst_n(aresetn),

               .s2mm_s_tvalid		(s2mm_s_tvalid),
               .s2mm_wlast		(s2mm_axi_wlast),

               .mm2s_arvalid     (mm2s_axi_arvalid),
               .mm2s_s_tlast     (mm2s_s_tlast),

               .fifo_overflow (fifo_overflow),
               .fifo_underflow (fifo_underflow),

               .trigger 		(start_timer_auth)	,
               .reset_timer  	(reset_timer_w)	,
               .reset_req 		(reset_req_w)	,
               .reset_ack 		(reset_ack_w)	,

               .s2mm_wlast_timer_reg  	 (s2mm_wlast_timer_reg_w	),
               .s2mm_stream_timer_reg 	 (s2mm_stream_timer_reg_w	),
               .s2mm_wlast_count      	 (s2mm_wlast_count_w		),
               .s2mm_stream_count     	 (s2mm_stream_count_w		),
               .mm2s_arwalid_timer_reg 	 (mm2s_arwalid_timer_reg_w	),
               .mm2s_stream_timer_reg	 (mm2s_stream_timer_reg_w	), 
               .mm2s_tlast_count      	 (mm2s_tlast_count_w		),
               .mm2s_stream_count     	 (mm2s_stream_count_w		),

               .timer  		  (timer_w)

             );
  // User logic ends

  assign timer    = timer_w   ;
  assign t_valid  = data_in_w ;
  assign t_last   = t_last_w  ;
  assign valid    = valid_w   ;
  assign valid_count = valid_count_w;
  assign t_last_count = t_last_count_w;
  assign trigger_timer = start_timer_w;
  assign start_timer_auth = start_timer_w | start_timer;



endmodule

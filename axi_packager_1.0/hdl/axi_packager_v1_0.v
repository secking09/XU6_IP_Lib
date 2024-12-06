
`timescale 1 ns / 1 ps

	module axi_packager_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
        input wire [7:0] video_data, 
        input wire       video_tlast,    
        output wire      video_ready,
        input wire       video_start_frame,
        input wire       video_valid,
        input  wire      video_clk,
        input  wire      video_resetn, 
        
        output wire [31:0] debug_tlast,
              
        input  wire        m_axis_clk,
        input  wire        m_axis_aresetn,
        output wire        m_axis_tvalid,
        output wire [7:0] m_axis_tdata,
        output wire        m_axis_tlast,
        input  wire        m_axis_tready,
        
		// User ports ends
		// Do not modify the ports beyond this line

		// Ports of Axi Slave Bus Interface S00_AXI
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
	
	    wire [31:0] t_last_count_w;
	    wire [31:0] line_count_w;
	    wire enable_w; 
	    wire soft_reset_w; 
	    
// Instantiation of Axi Bus Interface S00_AXI
	axi_packager_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) axi_packager_v1_0_S00_AXI_inst (
	
	
	    .t_last_count(t_last_count_w),
	    .line_count(line_count_w),
	    .enable(enable_w),
	    .soft_reset(soft_reset_w),
	
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
    packager module2 (
    
    
    .video_data           (    video_data       )                   ,        
    .video_tlast          (    video_tlast      )                   ,       
    .video_ready          (    video_ready      )                   ,       
    .video_start_frame    (    video_start_frame)                   , 
    .video_valid          (    video_valid      )                   ,       

    .video_clk            (    video_clk        )                   ,         
    .video_resetn         (    video_resetn     )                   ,      
     
    .enable          (enable_w)                   ,       
    .soft_reset      (soft_reset_w)               ,   
    .line_count      (line_count_w)               ,   
    .t_last_count    (t_last_count_w)             , 
    .m_axis_clk      (m_axis_clk     )            ,    
    .m_axis_aresetn  (m_axis_aresetn )            ,
    .m_axis_tvalid   (m_axis_tvalid  )            , 
    .m_axis_tdata    (m_axis_tdata   )            ,  
    .m_axis_tlast    (m_axis_tlast   )            ,  
    .m_axis_tready   (m_axis_tready  )
                
    
    ); 
	// User logic ends
    assign debug_tlast = t_last_count_w;
	endmodule

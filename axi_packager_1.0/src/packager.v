`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 11:20:06 PM
// Design Name: 
// Module Name: packager
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


module packager (

    input wire [7:0] video_data, 
    input wire       video_tlast,    
    output wire      video_ready,
    input wire       video_start_frame,
    input wire       video_valid,
    
    input  wire      video_clk,
    input  wire      video_resetn, 
    
    input wire                enable, 
    input wire                soft_reset,
    input wire      [31:0]    line_count,
    output wire     [31:0]    t_last_count,
    
    input  wire        m_axis_clk,
    input  wire        m_axis_aresetn,
    output wire        m_axis_tvalid,
    output wire [7:0]  m_axis_tdata,
    output wire        m_axis_tlast,
    input  wire        m_axis_tready
    );
    
    
    reg    enable_reg;
    reg    start_frame_reg; 
    reg    output_ready;
    wire   start_forwarding; 
    reg    stop_forwarding;
    reg    stop_forwarding_d;
    reg    stop_forwarding_d2;
    wire   reset; 
    reg    t_last_count_en;
    reg    [31:0] t_last_count_reg;
    reg    m_valid_reg; 
    reg    master_tlast; 
    reg    [7:0] m_tdata_reg; 
    
    reg    [7:0] data_reg_d;
    reg          valid_reg_d;
    reg          t_last_reg_d;
    
    
    
    always @(posedge video_clk)
    
    begin 
        if(!reset)
        begin           
        enable_reg      <= 1'b0;
        data_reg_d      <= 8'b0;
        valid_reg_d     <= 1'b0;
        t_last_reg_d    <= 1'b0;
        end
        else begin
        enable_reg      <= enable; 
        data_reg_d      <= video_data;
        valid_reg_d     <= video_valid;
        t_last_reg_d    <= master_tlast;
        
        end
       
    end
    
    always @(posedge video_clk)
    
    begin 
        if(!reset)
        begin
             m_valid_reg <= 1'b0;                         
             m_tdata_reg <= 8'b0;
             start_frame_reg <= 1'b0;
             t_last_count_en <= 1'b0;
        end
        else begin
            if(enable_reg)begin
            
            output_ready <= 1'b1;
            
                        
                if(video_start_frame) begin 
                start_frame_reg <= 1'b1;
                t_last_count_en <= 1'b1;
                end
                else if (stop_forwarding_d) 
                begin 
                t_last_count_en <= 1'b0;
                start_frame_reg <= 1'b0;
                end 
                 
            
                if(valid_reg_d & start_frame_reg & !(stop_forwarding_d2))begin   // Every line was 1 byte missing fixed with valid_reg_d in if block!           
                m_valid_reg <= valid_reg_d;
                m_tdata_reg <= data_reg_d;
             
                end 
                else begin
                m_valid_reg <= 1'b0;
                m_tdata_reg <= 8'b0;
                
                
                end
            end
            else begin
            output_ready <= 1'b0;
            m_valid_reg  <= 1'b0;
            m_tdata_reg  <= 8'b0;
            end             
                 
            end      
        end 
  
         
    always @(posedge video_clk)
    
    begin 
        if(!reset)
        begin           
        t_last_count_reg <= 32'b0;
        stop_forwarding <= 1'b0;
        master_tlast <= 1'b0;
        stop_forwarding_d <= 1'b0;
        stop_forwarding_d2 <= 1'b0; //this has been added to eliminate stream finishing one clock earlier.
        end
        else begin  
        stop_forwarding_d <= stop_forwarding; 
        stop_forwarding_d2 <= stop_forwarding_d;
             if(video_tlast & t_last_count_en) begin       
                    
                  if(t_last_count >= line_count) begin
                  stop_forwarding <= 1'b1;
                  master_tlast  <= 1'b1; 
                  end
                  else begin
                  t_last_count_reg<= t_last_count + 1;
                  stop_forwarding <= 1'b0;        
                  master_tlast <= 1'b0;
                  
                  end    
                end
            end   
        end 
      
    
    assign reset = video_resetn & m_axis_aresetn & !(soft_reset); 
    assign start_forwarding = enable_reg & start_frame_reg;
    assign t_last_count = t_last_count_reg; 
    
    assign m_axis_tlast = t_last_reg_d;
    assign m_axis_tdata = m_tdata_reg;
    assign m_axis_tvalid = m_valid_reg; 
    
    
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: xzp
// 
// Create Date: 2018/12/04 11:01:29
// Design Name: 
// Module Name: clkdivider
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

module clkdivider( clk , reset , clk_out );
    input 	clk , reset ;                         //输入信号，其中clk连接到FPGA的C1脚，频率为12MHz
    output	clk_out ;                          //输出信号，可以连接到LED观察分频的时钟

	parameter	WIDTH = 8;             //计数器的位数，计数的最大值为 2**WIDTH-1
    parameter    N = 256;             //分频系数，请确保 N < 2**WIDTH-1，否则计数会溢出
    
    wire 	clk , reset ;                        
    reg    clk_out ; 

    reg [WIDTH-1 : 0]counter;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // reset
            counter <= 0;
        end
        else if (counter == N-1) begin
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // reset
            clk_out <= 0;
        end
        else if (counter == N-1) begin
            clk_out <= !clk_out;
        end
    end
endmodule

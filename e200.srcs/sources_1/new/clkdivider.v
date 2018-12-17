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
    input 	clk , reset ;                         //�����źţ�����clk���ӵ�FPGA��C1�ţ�Ƶ��Ϊ12MHz
    output	clk_out ;                          //����źţ��������ӵ�LED�۲��Ƶ��ʱ��

	parameter	WIDTH = 8;             //��������λ�������������ֵΪ 2**WIDTH-1
    parameter    N = 256;             //��Ƶϵ������ȷ�� N < 2**WIDTH-1��������������
    
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

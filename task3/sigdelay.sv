module sigdelay #(
    parameter A_WIDTH = 9,
    parameter D_WIDTH = 8
)(
    input logic clk,
    input logic rst,
    input logic wr,
    input logic rd,
    input logic [A_WIDTH-1:0] offset,
    input logic [D_WIDTH-1:0] mic_signal,
    output logic [D_WIDTH-1:0] delayed_signal
);

    logic  [A_WIDTH-1:0] address;    // interconnect wire


counter addrCounter (
    .clk (clk),
    .rst (rst),
    .en (1'b1),
    .count (address)
);

ram SignalRam (
    .clk (clk),
    .wr_en (wr),
    .rd_en (rd),
    .wr_addr (address),
    .din (mic_signal),
    .offset (offset),
    .dout (delayed_signal)
);

endmodule



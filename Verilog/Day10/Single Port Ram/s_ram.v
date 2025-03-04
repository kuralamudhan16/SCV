module single_port_sync_ram
  #( parameter ADDR_WIDTH = 4,  // Number of address bits (4-bit → 16 locations)
    parameter DATA_WIDTH = 32, // Data width (32-bit words)
    parameter DEPTH = 16       // Number of memory locations
   )

  (  input                       clk,   // Clock signal
    input [ADDR_WIDTH-1:0]      addr,  // Address input
    inout [DATA_WIDTH-1:0]      data,  // Bidirectional data bus
    input                       cs,    // Chip Select (active high)
    input                       we,    // Write Enable (active high)
    input                       oe     // Output Enable (active high)
  );

  reg [DATA_WIDTH-1:0] 	tmp_data;
  reg [DATA_WIDTH-1:0] 	mem [DEPTH];

  always@(posedge clk) begin
    if (cs & we)
      mem[addr] <= data;
  end

  always@(posedge clk) begin
    if (cs & !we)
    	tmp_data <= mem[addr];
  end

  assign data = cs & oe & !we ? tmp_data : 'hz;
endmodule

module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] count_start
	, output logic [0:0] count_busy
	, output logic [0:0] count_done
	, input logic [0:0] count_stall
	, input logic [63:0] count_v
	, input logic [63:0] count_k
	, output logic [63:0] count_avmm_0_rw_address
	, output logic [7:0] count_avmm_0_rw_byteenable
	, output logic [0:0] count_avmm_0_rw_read
	, input logic [63:0] count_avmm_0_rw_readdata
	, output logic [0:0] count_avmm_0_rw_write
	, output logic [63:0] count_avmm_0_rw_writedata
	);

	logic [0:0] count_start_reg;
	logic [0:0] count_busy_reg;
	logic [0:0] count_done_reg;
	logic [0:0] count_stall_reg;
	logic [63:0] count_v_reg;
	logic [63:0] count_k_reg;
	logic [63:0] count_avmm_0_rw_address_reg;
	logic [7:0] count_avmm_0_rw_byteenable_reg;
	logic [0:0] count_avmm_0_rw_read_reg;
	logic [63:0] count_avmm_0_rw_readdata_reg;
	logic [0:0] count_avmm_0_rw_write_reg;
	logic [63:0] count_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		count_start_reg <= count_start;
		count_busy <= count_busy_reg;
		count_done <= count_done_reg;
		count_stall_reg <= count_stall;
		count_v_reg <= count_v;
		count_k_reg <= count_k;
		count_avmm_0_rw_address <= count_avmm_0_rw_address_reg;
		count_avmm_0_rw_byteenable <= count_avmm_0_rw_byteenable_reg;
		count_avmm_0_rw_read <= count_avmm_0_rw_read_reg;
		count_avmm_0_rw_readdata_reg <= count_avmm_0_rw_readdata;
		count_avmm_0_rw_write <= count_avmm_0_rw_write_reg;
		count_avmm_0_rw_writedata <= count_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	count count_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(count_start_reg)
		, .busy(count_busy_reg)
		, .done(count_done_reg)
		, .stall(count_stall_reg)
		, .v(count_v_reg)
		, .k(count_k_reg)
		, .avmm_0_rw_address(count_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(count_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(count_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(count_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(count_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(count_avmm_0_rw_writedata_reg)
	);



endmodule

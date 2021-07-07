// tb.v

// Generated using ACDS version 19.1 670

`timescale 1 ps / 1 ps
module tb (
	);

	wire  [63:0] count_inst_avmm_0_rw_readdata;                                                           // mm_slave_dpi_bfm_count_avmm_0_rw_inst:avs_readdata -> count_inst:avmm_0_rw_readdata
	wire  [63:0] count_inst_avmm_0_rw_address;                                                            // count_inst:avmm_0_rw_address -> mm_slave_dpi_bfm_count_avmm_0_rw_inst:avs_address
	wire   [7:0] count_inst_avmm_0_rw_byteenable;                                                         // count_inst:avmm_0_rw_byteenable -> mm_slave_dpi_bfm_count_avmm_0_rw_inst:avs_byteenable
	wire         count_inst_avmm_0_rw_read;                                                               // count_inst:avmm_0_rw_read -> mm_slave_dpi_bfm_count_avmm_0_rw_inst:avs_read
	wire         count_inst_avmm_0_rw_write;                                                              // count_inst:avmm_0_rw_write -> mm_slave_dpi_bfm_count_avmm_0_rw_inst:avs_write
	wire  [63:0] count_inst_avmm_0_rw_writedata;                                                          // count_inst:avmm_0_rw_writedata -> mm_slave_dpi_bfm_count_avmm_0_rw_inst:avs_writedata
	wire         clock_reset_inst_clock_clk;                                                              // clock_reset_inst:clock -> [component_dpi_controller_count_inst:clock, count_inst:clock, irq_mapper:clk, main_dpi_controller_inst:clock, mm_slave_dpi_bfm_count_avmm_0_rw_inst:clock, stream_source_dpi_bfm_count_k_inst:clock, stream_source_dpi_bfm_count_v_inst:clock]
	wire         clock_reset_inst_clock2x_clk;                                                            // clock_reset_inst:clock2x -> [component_dpi_controller_count_inst:clock2x, main_dpi_controller_inst:clock2x, stream_source_dpi_bfm_count_k_inst:clock2x, stream_source_dpi_bfm_count_v_inst:clock2x]
	wire         component_dpi_controller_count_inst_component_call_valid;                                // component_dpi_controller_count_inst:start -> count_inst:start
	wire         count_inst_call_stall;                                                                   // count_inst:busy -> component_dpi_controller_count_inst:busy
	wire         component_dpi_controller_count_inst_component_done_conduit;                              // component_dpi_controller_count_inst:component_done -> concatenate_component_done_inst:in_conduit_0
	wire   [0:0] main_dpi_controller_inst_component_enabled_conduit;                                      // main_dpi_controller_inst:component_enabled -> split_component_start_inst:in_conduit
	wire         component_dpi_controller_count_inst_component_wait_for_stream_writes_conduit;            // component_dpi_controller_count_inst:component_wait_for_stream_writes -> concatenate_component_wait_for_stream_writes_inst:in_conduit_0
	wire         component_dpi_controller_count_inst_dpi_control_bind_conduit;                            // component_dpi_controller_count_inst:bind_interfaces -> count_component_dpi_controller_bind_conduit_fanout_inst:in_conduit
	wire         component_dpi_controller_count_inst_dpi_control_enable_conduit;                          // component_dpi_controller_count_inst:enable_interfaces -> count_component_dpi_controller_enable_conduit_fanout_inst:in_conduit
	wire         concatenate_component_done_inst_out_conduit_conduit;                                     // concatenate_component_done_inst:out_conduit -> main_dpi_controller_inst:component_done
	wire         concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit;                   // concatenate_component_wait_for_stream_writes_inst:out_conduit -> main_dpi_controller_inst:component_wait_for_stream_writes
	wire         split_component_start_inst_out_conduit_0_conduit;                                        // split_component_start_inst:out_conduit_0 -> component_dpi_controller_count_inst:component_enabled
	wire         count_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit;           // count_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_0 -> mm_slave_dpi_bfm_count_avmm_0_rw_inst:do_bind
	wire         count_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit;         // count_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_0 -> mm_slave_dpi_bfm_count_avmm_0_rw_inst:enable
	wire         count_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit; // count_component_dpi_controller_implicit_ready_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_count_k_inst:source_ready
	wire         count_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit;           // count_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_1 -> stream_source_dpi_bfm_count_k_inst:do_bind
	wire         count_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit;         // count_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_1 -> stream_source_dpi_bfm_count_k_inst:enable
	wire         count_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_1_conduit; // count_component_dpi_controller_implicit_ready_conduit_fanout_inst:out_conduit_1 -> stream_source_dpi_bfm_count_v_inst:source_ready
	wire         count_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_2_conduit;           // count_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_2 -> stream_source_dpi_bfm_count_v_inst:do_bind
	wire         count_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_2_conduit;         // count_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_2 -> stream_source_dpi_bfm_count_v_inst:enable
	wire         component_dpi_controller_count_inst_read_implicit_streams_conduit;                       // component_dpi_controller_count_inst:read_implicit_streams -> count_component_dpi_controller_implicit_ready_conduit_fanout_inst:in_conduit
	wire         main_dpi_controller_inst_reset_ctrl_conduit;                                             // main_dpi_controller_inst:trigger_reset -> clock_reset_inst:trigger_reset
	wire         count_inst_return_valid;                                                                 // count_inst:done -> component_dpi_controller_count_inst:done
	wire         component_dpi_controller_count_inst_component_return_stall;                              // component_dpi_controller_count_inst:stall -> count_inst:stall
	wire  [63:0] stream_source_dpi_bfm_count_k_inst_source_data_data;                                     // stream_source_dpi_bfm_count_k_inst:source_data -> count_inst:k
	wire  [63:0] stream_source_dpi_bfm_count_v_inst_source_data_data;                                     // stream_source_dpi_bfm_count_v_inst:source_data -> count_inst:v
	wire         clock_reset_inst_reset_reset;                                                            // clock_reset_inst:resetn -> [component_dpi_controller_count_inst:resetn, count_inst:resetn, irq_mapper:reset, main_dpi_controller_inst:resetn, mm_slave_dpi_bfm_count_avmm_0_rw_inst:reset_n, stream_source_dpi_bfm_count_k_inst:resetn, stream_source_dpi_bfm_count_v_inst:resetn]
	wire         component_dpi_controller_count_inst_component_irq_irq;                                   // irq_mapper:sender_irq -> component_dpi_controller_count_inst:done_irq

	hls_sim_clock_reset #(
		.RESET_CYCLE_HOLD (4)
	) clock_reset_inst (
		.clock         (clock_reset_inst_clock_clk),                  //      clock.clk
		.resetn        (clock_reset_inst_reset_reset),                //      reset.reset_n
		.clock2x       (clock_reset_inst_clock2x_clk),                //    clock2x.clk
		.trigger_reset (main_dpi_controller_inst_reset_ctrl_conduit)  // reset_ctrl.conduit
	);

	hls_sim_component_dpi_controller #(
		.COMPONENT_NAME               ("count"),
		.RETURN_DATAWIDTH             (64),
		.COMPONENT_NUM_SLAVES         (0),
		.COMPONENT_HAS_SLAVE_RETURN   (0),
		.COMPONENT_NUM_OUTPUT_STREAMS (0)
	) component_dpi_controller_count_inst (
		.clock                            (clock_reset_inst_clock_clk),                                                   //                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                                 //                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                                 //                          clock2x.clk
		.bind_interfaces                  (component_dpi_controller_count_inst_dpi_control_bind_conduit),                 //                 dpi_control_bind.conduit
		.enable_interfaces                (component_dpi_controller_count_inst_dpi_control_enable_conduit),               //               dpi_control_enable.conduit
		.component_enabled                (split_component_start_inst_out_conduit_0_conduit),                             //                component_enabled.conduit
		.component_done                   (component_dpi_controller_count_inst_component_done_conduit),                   //                   component_done.conduit
		.component_wait_for_stream_writes (component_dpi_controller_count_inst_component_wait_for_stream_writes_conduit), // component_wait_for_stream_writes.conduit
		.read_implicit_streams            (component_dpi_controller_count_inst_read_implicit_streams_conduit),            //            read_implicit_streams.conduit
		.readback_from_slaves             (),                                                                             //             readback_from_slaves.conduit
		.start                            (component_dpi_controller_count_inst_component_call_valid),                     //                   component_call.valid
		.busy                             (count_inst_call_stall),                                                        //                                 .stall
		.done                             (count_inst_return_valid),                                                      //                 component_return.valid
		.stall                            (component_dpi_controller_count_inst_component_return_stall),                   //                                 .stall
		.done_irq                         (component_dpi_controller_count_inst_component_irq_irq),                        //                    component_irq.irq
		.returndata                       ()                                                                              //                       returndata.data
	);

	tb_avalon_concatenate_singlebit_conduits_10_bjzeuhq concatenate_component_done_inst (
		.out_conduit  (concatenate_component_done_inst_out_conduit_conduit),        //  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_count_inst_component_done_conduit)  // in_conduit_0.conduit
	);

	tb_avalon_concatenate_singlebit_conduits_10_bjzeuhq concatenate_component_wait_for_stream_writes_inst (
		.out_conduit  (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit),        //  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_count_inst_component_wait_for_stream_writes_conduit)  // in_conduit_0.conduit
	);

	tb_avalon_conduit_fanout_10_ak2cvai count_component_dpi_controller_bind_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_count_inst_dpi_control_bind_conduit),                  //    in_conduit.conduit
		.out_conduit_0 (count_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (count_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit), // out_conduit_1.conduit
		.out_conduit_2 (count_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_2_conduit)  // out_conduit_2.conduit
	);

	tb_avalon_conduit_fanout_10_ak2cvai count_component_dpi_controller_enable_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_count_inst_dpi_control_enable_conduit),                  //    in_conduit.conduit
		.out_conduit_0 (count_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (count_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit), // out_conduit_1.conduit
		.out_conduit_2 (count_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_2_conduit)  // out_conduit_2.conduit
	);

	tb_avalon_conduit_fanout_10_kcgql6q count_component_dpi_controller_implicit_ready_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_count_inst_read_implicit_streams_conduit),                       //    in_conduit.conduit
		.out_conduit_0 (count_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (count_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_1_conduit)  // out_conduit_1.conduit
	);

	tb_count_10_gbu7t7a count_inst (
		.avmm_0_rw_address    (count_inst_avmm_0_rw_address),                               // avmm_0_rw.address
		.avmm_0_rw_byteenable (count_inst_avmm_0_rw_byteenable),                            //          .byteenable
		.avmm_0_rw_read       (count_inst_avmm_0_rw_read),                                  //          .read
		.avmm_0_rw_readdata   (count_inst_avmm_0_rw_readdata),                              //          .readdata
		.avmm_0_rw_write      (count_inst_avmm_0_rw_write),                                 //          .write
		.avmm_0_rw_writedata  (count_inst_avmm_0_rw_writedata),                             //          .writedata
		.start                (component_dpi_controller_count_inst_component_call_valid),   //      call.valid
		.busy                 (count_inst_call_stall),                                      //          .stall
		.clock                (clock_reset_inst_clock_clk),                                 //     clock.clk
		.k                    (stream_source_dpi_bfm_count_k_inst_source_data_data),        //         k.data
		.resetn               (clock_reset_inst_reset_reset),                               //     reset.reset_n
		.done                 (count_inst_return_valid),                                    //    return.valid
		.stall                (component_dpi_controller_count_inst_component_return_stall), //          .stall
		.v                    (stream_source_dpi_bfm_count_v_inst_source_data_data)         //         v.data
	);

	hls_sim_main_dpi_controller #(
		.NUM_COMPONENTS      (1),
		.COMPONENT_NAMES_STR ("count")
	) main_dpi_controller_inst (
		.clock                            (clock_reset_inst_clock_clk),                                            //                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                          //                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                          //                          clock2x.clk
		.component_enabled                (main_dpi_controller_inst_component_enabled_conduit),                    //                component_enabled.conduit
		.component_done                   (concatenate_component_done_inst_out_conduit_conduit),                   //                   component_done.conduit
		.component_wait_for_stream_writes (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit), // component_wait_for_stream_writes.conduit
		.trigger_reset                    (main_dpi_controller_inst_reset_ctrl_conduit)                            //                       reset_ctrl.conduit
	);

	hls_sim_mm_slave_dpi_bfm #(
		.AV_ADDRESS_W               (64),
		.AV_SYMBOL_W                (8),
		.AV_NUMSYMBOLS              (8),
		.AV_BURSTCOUNT_W            (3),
		.AV_READRESPONSE_W          (8),
		.AV_WRITERESPONSE_W         (8),
		.USE_READ                   (1),
		.USE_WRITE                  (1),
		.USE_ADDRESS                (1),
		.USE_BYTE_ENABLE            (1),
		.USE_BURSTCOUNT             (0),
		.USE_READ_DATA              (1),
		.USE_READ_DATA_VALID        (0),
		.USE_WRITE_DATA             (1),
		.USE_BEGIN_TRANSFER         (0),
		.USE_BEGIN_BURST_TRANSFER   (0),
		.USE_WAIT_REQUEST           (0),
		.USE_CLKEN                  (0),
		.AV_BURST_LINEWRAP          (1),
		.AV_BURST_BNDR_ONLY         (1),
		.AV_MAX_PENDING_READS       (0),
		.AV_MAX_PENDING_WRITES      (0),
		.AV_FIX_READ_LATENCY        (1),
		.AV_READ_WAIT_TIME          (0),
		.AV_WRITE_WAIT_TIME         (0),
		.REGISTER_WAITREQUEST       (0),
		.AV_REGISTERINCOMINGSIGNALS (0),
		.COMPONENT_NAME             ("count"),
		.INTERFACE_ID               (0)
	) mm_slave_dpi_bfm_count_avmm_0_rw_inst (
		.do_bind           (count_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit),   //   dpi_control_bind.conduit
		.enable            (count_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit), // dpi_control_enable.conduit
		.clock             (clock_reset_inst_clock_clk),                                                      //              clock.clk
		.reset_n           (clock_reset_inst_reset_reset),                                                    //              reset.reset_n
		.avs_writedata     (count_inst_avmm_0_rw_writedata),                                                  //                 s0.writedata
		.avs_readdata      (count_inst_avmm_0_rw_readdata),                                                   //                   .readdata
		.avs_address       (count_inst_avmm_0_rw_address),                                                    //                   .address
		.avs_write         (count_inst_avmm_0_rw_write),                                                      //                   .write
		.avs_read          (count_inst_avmm_0_rw_read),                                                       //                   .read
		.avs_byteenable    (count_inst_avmm_0_rw_byteenable),                                                 //                   .byteenable
		.avs_readdatavalid ()                                                                                 //        (terminated)
	);

	tb_avalon_split_multibit_conduit_10_dlmo3na split_component_start_inst (
		.in_conduit    (main_dpi_controller_inst_component_enabled_conduit), //    in_conduit.conduit
		.out_conduit_0 (split_component_start_inst_out_conduit_0_conduit)    // out_conduit_0.conduit
	);

	hls_sim_stream_source_dpi_bfm #(
		.COMPONENT_NAME   ("count"),
		.INTERFACE_NAME   ("k"),
		.STREAM_DATAWIDTH (64)
	) stream_source_dpi_bfm_count_k_inst (
		.clock        (clock_reset_inst_clock_clk),                                                              //              clock.clk
		.resetn       (clock_reset_inst_reset_reset),                                                            //              reset.reset_n
		.clock2x      (clock_reset_inst_clock2x_clk),                                                            //            clock2x.clk
		.do_bind      (count_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit),           //   dpi_control_bind.conduit
		.enable       (count_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit),         // dpi_control_enable.conduit
		.source_data  (stream_source_dpi_bfm_count_k_inst_source_data_data),                                     //        source_data.data
		.source_ready (count_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit), //       source_ready.conduit
		.source_valid ()                                                                                         //             source.conduit
	);

	hls_sim_stream_source_dpi_bfm #(
		.COMPONENT_NAME   ("count"),
		.INTERFACE_NAME   ("v"),
		.STREAM_DATAWIDTH (64)
	) stream_source_dpi_bfm_count_v_inst (
		.clock        (clock_reset_inst_clock_clk),                                                              //              clock.clk
		.resetn       (clock_reset_inst_reset_reset),                                                            //              reset.reset_n
		.clock2x      (clock_reset_inst_clock2x_clk),                                                            //            clock2x.clk
		.do_bind      (count_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_2_conduit),           //   dpi_control_bind.conduit
		.enable       (count_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_2_conduit),         // dpi_control_enable.conduit
		.source_data  (stream_source_dpi_bfm_count_v_inst_source_data_data),                                     //        source_data.data
		.source_ready (count_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_1_conduit), //       source_ready.conduit
		.source_valid ()                                                                                         //             source.conduit
	);

	tb_altera_irq_mapper_191_elrdrwq irq_mapper (
		.clk        (clock_reset_inst_clock_clk),                            //       clk.clk
		.reset      (~clock_reset_inst_reset_reset),                         // clk_reset.reset
		.sender_irq (component_dpi_controller_count_inst_component_irq_irq)  //    sender.irq
	);

endmodule

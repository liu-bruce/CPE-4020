include <Lab_3_libary>;

module seven_segment_display_slot_1(light_segment_1, input_a,input_b,input_c,input_d);
input  input_a,input_b,input_c,input_d;
output light_segment_1;

//not wires
wire not_a,not_b,not_c,not_d;

not isnt_A (not_a, input_a);
not isnt_B (not_b,input_b);
not isnt_C (not_c,input_c);
not isnt_D (not_d,input_d);


// 2 gate wire sets
wire gate_set_15_11,gate_set_6_14,gate_set_12_14;
	
// decoder wire
wire decoder_5;

// input gate sets

and input_set_15_11(gate_set_15_11, input_a, input_c,input_d);
and input_set_6_14(gate_set_6_14,input_b,input_c,not_d);
and input_set_12_14(gate_set_12_14,input_a,input_b,not_d);
and decoder_set_5(decoder_5,not_a,input_b,not_c,input_d);

// combined input

or combined_output(light_segment_1,gate_set_15_11,gate_set_6_14,gate_set_12_14, decoder_5);





endmodule
include<lab_3_libary>;

module seven_segment_display_slot_3(light_segment_3, input_a,input_b,input_c,input_d);

input  input_a,input_b,input_c,input_d;
output light_segment_3;

//not wires
wire not_a,not_b,not_c,not_d;

not isnt_A (not_a, input_a);
not isnt_B (not_b,input_b);
not isnt_C (not_c,input_c);
not isnt_D (not_d,input_d);

//sum of products
// decoder set
wire gate_4, gate_10;
//2 sets
wire gate_set_1_9, gate_set_7_15;

// input set gates
and input_set_1_9(gate_set_1_9,not_b,not_c,input_d);
and input_set_7_15(gate_set_7_15,input_b,input_c,input_d);
// input decoder sets

and decoder_4(gate_4,not_a,input_b,not_c,not_d);
and decoder_10(gate_10, input_a,not_b,input_c,not_d);




or combined_output(light_segment_3,gate_10,gate_4,gate_set_1_9,gate_set_7_15);




endmodule 
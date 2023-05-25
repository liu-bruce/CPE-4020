include <Lab_3_libary>;

module seven_segment_display_slot_0(light_segment_0, input_a,input_b,input_c,input_d);
input  input_a,input_b,input_c,input_d;
output light_segment_0;

//not wires
wire not_a,not_b,not_c,not_d;

not isnt_A (not_a, input_a);
not isnt_B (not_b,input_b);
not isnt_C (not_c,input_c);
not isnt_D (not_d,input_d);

//decoder wires

wire decoder_wire_4,decoder_wire_13,decoder_wire_11,decoder_wire_1;

//decoder gate sets

and decoder_gate_1(decoder_wire_1,not_a,not_b,not_c,input_d);
and decoder_gate_4(decoder_wire_4,not_a,input_b,not_c,not_d);
and decoder_gate_11(decoder_wire_11,input_a,not_b,input_c,input_d);
and decoder_gate_13(decoder_wire_13, input_a,input_b,not_c,input_d);


// combine input

or combined_input(light_segment_0,decoder_wire_1,decoder_wire_4,decoder_wire_11,decoder_wire_13);


endmodule
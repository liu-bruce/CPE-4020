module and_gate_test_and_debug (input_and_1, input_and_2, input_and_LED_1,input_and_LED_2, output_and_1);
// Input Output declaration
output output_and_1 ,input_and_LED_1,input_and_LED_2; 
input input_and_1,input_and_2;

// active input switch led assocation
wire input_and_LED_1 = input_and_1;
wire input_and_LED_2 = input_and_2;

// and gate computation and output
and (output_and_1,  input_and_1, input_and_2);


endmodule
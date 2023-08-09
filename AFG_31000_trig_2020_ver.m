clear;
close;
% When I query, I get "1" if the query is
% Cannot control with internal trigger unfortantely
instrreset;
v = visa("ni", "USB0::0x0699::0x0355::C019986::INSTR");
fopen(v);
fprintf(v, "*RST");
fprintf(v, "TRIG:SLOP POS");
fprintf(v, "SOURce1:BURSt:INFInite:REARm");
fprintf(v, "BURSt:STATE ON");
fprintf(v, "SOURce1:BURSt:IDLE");
fprintf(v, "SOURce1:BURSt:NCYCles 2");
fprintf(v, "TRIG:SEQ:SOUR EXT");
fprintf(v, "SOUR1:BURS:MODE TRI");
fprintf(v, "OUTP1:STAT ON");
fprintf(v, "FUNCTION SIN");
fprintf(v, "FREQUENCY 3E3");
fprintf(v, "VOLTAGE:AMPLITUDE 3.00");
fprintf(v, "PHASE:ADJUST 0DEG");



fclose(v);
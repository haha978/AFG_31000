clear;
close;
% When I query, I get "1" if the query is
% instrreset;
v = visa("ni", "USB0::0x0699::0x0355::C019986::INSTR");
fopen(v);
% Maybe need to call this only once: v.write("*RST");
fprintf(v, "*RST");
fprintf(v, "OUTP1:STAT ON");
fprintf(v, "FUNCTION SIN");
fprintf(v, "FREQUENCY 2.5E3");
fprintf(v, "VOLTAGE:AMPLITUDE 0.10");
fprintf(v, "VOLTAGE:OFFSET 0.00");
fprintf(v, "PHASE:ADJUST 0DEG");
fclose(v);
fprintf("hello word");
% v.writeread("TRIG:SOUR?")
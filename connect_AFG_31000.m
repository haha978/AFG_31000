clear;
close;
% When I query, I get "1" if the query is
v = visadev("USB0::0x0699::0x0355::C019986::INSTR");
% Maybe need to call this only once: v.write("*RST");
v.write("OUTP1:STAT ON");
is_on = v.writeread("OUTP1:STAT?");
v.write("FUNCTION SQU");
v.write("FREQUENCY 10E3");
v.write("VOLTAGE:AMPLITUDE 3.00");
v.write("VOLTAGE:OFFSET 1.00");
v.write("PHASE:ADJUST 0DEG");
v.writeread("TRIG:SOUR?")


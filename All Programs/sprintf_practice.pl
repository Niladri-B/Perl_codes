use 5.014;
use warnings;

#Practice code for sprintf
#
#This is a purely trial code to test out the functions of SPRINTF

my $string1 = sprintf '%c' , 0x61;
say $string1;

my $string2 = sprintf '%-8s' , "abcd"; # %s is used when data is in string 
say $string2; #so in main program, since input data is in string form(even tho it is no.) we use %s

my $string3 = sprintf '%-10d', '1234';
say $string3, $string2;


exit;
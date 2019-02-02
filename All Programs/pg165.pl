#usr/bin/perl-w

use strict;

#chomp(my $date = `date`);
my $date = localtime;
$^I = ".bak";


while(<>){
	s/^Author:.*/Randal L. Schwartz/;
	s/^Phone:.*\n//; 
	s/^Date:.*/Date: $date/;
	print ;
}
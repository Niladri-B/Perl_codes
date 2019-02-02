#!/usr/bin/perl

#code to test out EACH function
use strict;
use warnings;
use 5.014; #use 5.012 onwards say is valid


my @arr = qw( yabba dabba dooo);

# while(my ($index, $value ) = each @arr) {
	# say "$index: $value";
# }

#Alternate way for older versions of Perl

foreach my $index(0..$#arr){
	print "$index: $arr[$index]\n";
}


exit;
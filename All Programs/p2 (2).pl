#usr/bin/perl

#Code to print out start co-ordinates of genome wide DNA PG4

use 5.014;
use warnings;

#Assign filename
my $file = 'all_PG4_UCSC_hg19.txt';

#Open file
open my $fh,'<', $file or die $!;
#Open output file
open OUT,">PG4_start.out" or die $!;

#Read in file
while( <$fh> ) {
	my @val = split;
	say OUT $val[0],"\t",$val[1];
}

#Exit
exit;
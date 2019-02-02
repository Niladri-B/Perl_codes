use 5.014;
use warnings;

#Code to parse out signalValues from .BROADPEAK files

#Assign filename
my $f = 'total_pooled.segmented.broadPeak';

#Open filename
open my $fh, '<', $f || die $!;

#Open output file
open OUT, ">Signals_$f" || die $!;

#Read in filedata
while (<$fh>) {
	chomp;
	my @val = split;
	say OUT $val[0],"\t",$val[1],"\t", $val[2],"\t",$val[6];
}

#Exit
exit;
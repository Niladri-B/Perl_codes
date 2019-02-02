use 5.014;
use warnings;

my $file = "G4_within_+-500bp.out";

open my $fh, '<', $file or die $!;
open OUT, ">Output_G4_peaks.bed" or die $!;

while(<$fh>){
	my @val = split;
	say OUT join ("\t", $val[0],$val[4],$val[5]);
}

#Exit
exit;

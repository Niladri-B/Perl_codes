use 5.014;
use warnings;

#Code to compute interval length

#Assign filename
my $file = 'total_pooled.segmented_LSD1.broadPeak';

#Open file
open my $fh, '<', $file or die $!;

#Open output
open OUT,">Interval_Distance_LSD1.out" or die $!;


#Read in file
while(<$fh>){
	my @val = split;
	say OUT join("\t",@val),"\t",$val[2]-$val[1];
}

#Exit
exit;
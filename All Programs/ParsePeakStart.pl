use 5.014;
use warnings;

#Code to parse out the peak start 

#Assign filename
my $file = "G4_inLSD1_peaks3.out" ;

#Open file
open my $fh, '<', $file or die $!;

#Open output file
open OUT, ">PeakStarts.out" or die $!;

#Read in file
while(<$fh>){
	my @val = split;
	say OUT $val[0],"_",$val[1],"_",$val[2];
}

#Exit
exit;
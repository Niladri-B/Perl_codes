use 5.014;
use warnings;

#Code to compute length of peaks with G4

#Assign filename
my $file = "UniquePeaks_withG4.out";

#Open filename
open my $fh, '<', $file or die $!;
open OUT ,">LengthPeaks_withG4.out" or die $!;

my($num, $total);

#Read in file
while(<$fh>){
	chomp; #This is essential because we have newlines at end of every $_ # So $length gets printed in next line
	my @val = split "_",$_;# Solved the problem of "Useless use of void in context blah bla" which was happening as I had declared ("_"). NO need for this simply write "_"
	#my $length = $val[2]-$val[1];
	say OUT $val[0],"\t",$val[1],"\t",$val[2],"\t",$val[2]-$val[1];
	
	$total += $val[2]-$val[1];
	$num++
}

my $mean = $total/$num;
say $mean;

#Exit
exit;
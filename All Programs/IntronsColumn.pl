use 5.014;
use warnings;

#Trial code to get intron coordinates in column format

my $file = "Intron_End.out";

open my $fh, '<', $file or die $!;
open OUT, ">Intron_End_Coordinates.out" or die $!;  

while(<$fh>){
	chomp; #This is the most FANTASTIC feature! It solves the problem of unnecessary newlines # It removes newlines at end of each $_ so we get contiguous series :)
	my @val = split /\t/,$_;
	for(@val) {
		say OUT $val[0],"\t",$_ if $val[0] ne $_; #ne is string equivalent of != which is for numeric values# To ensure chromosome info is NOT displayed twice ie chr1 chr1
		}
}

exit;
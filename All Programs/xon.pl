use 5.014;
use warnings;

#Trial code to extract exon start coordinates

my $file = "xon_ends2.txt";

open my $fh, '<', $file or die $!;
open OUT, ">Exon_end_coordinates2.out" or die $!;  

while(<$fh>){
	chomp; #This is the most FANTASTIC feature! It solves the problem of unnecessary newlines # It removes newlines at end of each $_ so we get contiguous series :)
	my @val = split /\t/,$_;
	for(@val) {
		say OUT $val[0],"\t",$_ if $val[0] ne $_; #ne is string equivalent of != which is for numeric values# To ensure chromosome info is NOT displayed twice ie chr1 chr1
		}
}

exit;
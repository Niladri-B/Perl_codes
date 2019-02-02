use 5.014;
use warnings;

#Trial code to extract exon start coordinates

my $file = "xon_s_sample2.txt";

open my $fh, '<', $file or die $!;

while(<$fh>){
	chomp; #This is the most FANTASTIC feature! It solves the problem of unnecessary newlines # It removes newlines at end of each $_ so we get contiguous series :)
	my @val = split /,/,$_;
	for(@val) { 
		say $_; 
		}
}

exit;
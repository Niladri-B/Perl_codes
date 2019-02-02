use 5.014;
use warnings;

#Code to extract peaks not greater than 200bp

#Assign filename
my $file = "total_pooled.broadPeak";

#Open file
open my $fh, '<', $file or die $!;

#Open output file
open OUT, ">200bp$file" or die $!;

#Read in file
while(<$fh>){
	my @val = split;
	if($val[2] - $val[1] <= 200){
		print OUT $_;
	}
}

#Exit
exit;
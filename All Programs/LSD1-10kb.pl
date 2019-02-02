use 5.014;
use warnings;

my $file = 'MidVal_peak_chrY.out';

open my $fh, '<', $file or die $!;

open OUT, ">$file-10kb.out" or die $!;

while(<$fh>){
	my @val = split;
	say OUT $val[0],"\t",$val[1]-10_000;
}

exit;
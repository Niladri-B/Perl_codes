#usr/bin/perl-w

use strict;
use warnings;


#Initialize loop
for(my $j = 1; $j <= 1000; $j++){ #Loop for file number
	for(my $i = 1; $i <= 23; $i++){#Loop for chromosome number

	my $file = "Mid_rest_5utrg4_chr$i.out"; #Input file template

	open OUT, ">Sorted$file.out" or die $!;#Output file template
	open my $fh,'<', $file or die $!;
	

	my @mid;#Initialize array to store midvalues, which will then be sorted in ascending order
	while (<$fh>){
		my @val = split;
	
		push @mid,$val[1];#Push the midvalues into @mid
	}


	@mid = sort { $a <=> $b } @mid;#Sort
	print OUT "chr$i\t", join ("\nchr$i\t",@mid);#"chr1\t" needs to be written as otherwise the 1st entry is not showing it # Also NOTE special join command
	}
}

#Exit
exit;
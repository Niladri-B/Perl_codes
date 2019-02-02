#usr/bin/perl-w

use strict;
use warnings;

#This code is being used to sort the data in ascending order

# my @array = ('11.4 2.3', '4.5 7.8');
# 
# print @array;
# print "\n";
# 
# my @sorted = sort @array;
# 
# print @sorted;

#Open files
#for(my $j = 1; $j <= 1000; $j++){ #$j = LSD1 trial run	#$i = Chromosome Number
	for(my $i = 1; $i <= 23; $i++){

	#my $file = "Mid_Random_LSD1_trial_$j=chr$i.out"; #Input file template
	my $file = "All_mid_pg4_chr$i.out" ;
	
	open OUT, ">Sorted_$file.out" or die $!;#Output file template
	open my $fh,'<', $file or die $!;
	

	my @mid;#Initialize array to store midvalues, which will then be sorted in ascending order
	while (<$fh>){
		my @val = split;
	
		push @mid,$val[1];#Push the midvalues into @mid
	}
#print OUT sort @arr;

	@mid = sort { $a <=> $b } @mid;#Sort
	print OUT "chr$i\t", join ("\nchr$i\t",@mid);#"chr1\t" needs to be written as otherwise the 1st entry is not showing it # Also NOTE special join command which I made :)
}
#}



exit;
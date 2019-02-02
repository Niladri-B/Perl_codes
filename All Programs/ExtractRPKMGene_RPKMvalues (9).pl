use 5.014;
use warnings;
use List::Util qw/sum/;

#Code to parse out RPKM genes and RPKM values
#
#Can be basically used to parse out ANY tab delimited file

#Assign filename
my $file = 'LSD1_A_100bp_g4_chrAll.out';

#Open file
open my $fh, '<' , $file or die $!;

#Open output
open OUT, ">LSD1_A_100bp_g4_genes.out" or die $!;

#Read file
while(<$fh>){
	my @val = split;
	my $sum = sum (@val[8..$#val]);# Now we simply cannot print out the genes because that would print ALL the genes
	#We want genes where LSD1 is present ie sum of LSD1 signals is >0
	#say OUT $val[7],"\t",$sum if $sum > 0;
	say OUT $val[7] if $sum > 0;
}

#Exit
exit;
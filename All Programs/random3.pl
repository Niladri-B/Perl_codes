use 5.014;
use warnings;
use List::Util qw/shuffle/;

#Trial program for shuffling sequence

my $dna = 'aaatcgatgcgggtgtgggttgggttaagggagcgcttacgg';
my @dna = split '',$dna;

say "Original DNA :", $dna;

for(my $i = 0; $i <= 4; $i++){
	
	my @mutant= shuffle(@dna);
	say "Mutant DNA :  ", @mutant;
}


#Exit
exit;
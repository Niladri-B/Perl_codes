use strict;
use warnings;
use Data::Random::Nucleotides qw/ :all/;

#Trial code to generate a randome dna sequence

my $dna = 'aagcgcgggcccgggctagggaatggggtagct';

my $random_dna = rand_nuc( $dna );

say $random_dna;

#Exit;
exit;


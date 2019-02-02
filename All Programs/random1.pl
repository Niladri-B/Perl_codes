use 5.014;
use warnings;

use Data::Random::Nucleotides qw/:all/;

    # Generate a string of 200 random A/C/G/T characters.
  my  $nucs = rand_nuc ( size => 20000 );
	
	
say $nucs;
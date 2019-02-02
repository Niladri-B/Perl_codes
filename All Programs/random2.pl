use 5.014;
use warnings;

srand(time|$$);

my $dna = 'aagcgcgggcccgggctagggaatggggtagct';
my $l_dna = length $dna;

my $mutant = rand($l_dna);

say $mutant;

exit;
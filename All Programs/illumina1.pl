use 5.014;
use warnings;

print "Please enter Illumina code to convert : ";
my $i = <>;

#my $Q = ord($i) - 33;

my $Q = 10 * log(1 + (10 ** (ord($i) - 64) / 10.0) )/ log(10);
say "Phred quality score is : $Q";

exit;
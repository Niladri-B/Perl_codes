use 5.014;
use warnings;

say "Please enter Phred quality score to convert : ";
my $phred = <>;#Phred quality score # must be non negative
my $illumina = chr ( ( $phred <= 93? $phred : 93)  + 33);
say $illumina;

exit;
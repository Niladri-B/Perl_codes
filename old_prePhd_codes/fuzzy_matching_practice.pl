use 5.014;
use warnings;
use String::Approx qw / amatch aindex/;

$_ = "CGCCCGAATCCAGAACGCATTCCCATATTTCGGGACCACTGGCCTCCACGGTACGGACGTCAATCAAATATGC";
#$_ = "CCCCTGGATGGCTGGA";
#$_ = "TATGCATGC";
# my @alt = qw/TATGC TATGC/;
# say @alt;
my $pattern = "ATGC";
my $mismatch_limit = 3;


my $len_seq = length $_;
my $len_pat = length $pattern;
my $i = 0;
my @patterns;

# while ($i <= $len_seq){
	# my $substr = substr $_, $i, $len_pat;
	# my $posn = index $_, $substr, $i
	# push @patterns, $substr if $substr =~ /


my $indices = aindex("ATGC", [ "3"], $_);

say "$indices";

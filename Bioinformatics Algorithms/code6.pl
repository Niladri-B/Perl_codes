use 5.014;
use warnings;
use String::Approx qw/amatch aindex/;

$_ = "CGCCCGAATCCAGAACGCATTCCCATATTTCGGGACCACTGGCCTCCACGGTACGGACGTCAATCAAAT";
my $pat = "ATTCTGGA";
my $len_in = length $_;
my $len_pat = length $pat;

my $i = 0;
my @pattern;

while($i <= $len_in){
	my $substr = substr $_, $i, $len_pat;
	push @pattern, $substr if amatch( "ATTCTGGA", ["S3"], $substr);
	$i++
}



#my @matches = amatch( "ATTCTGGA", ["S8"], @pattern);
#my @matches2 = amatch( "ATTCTGGA", ["3"]);say "@pattern";
#say "@matches";
#say "@matches2";


#Exit
exit
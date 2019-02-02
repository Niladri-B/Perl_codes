use 5.014;
use warnings;
use String::Approx qw/amatch/;

#Fuzzy matching practice

#$_ = "CGCCCGAATCCAGAACGCATTCCCATATTTCGGGACCACTGGCCTCCACGGTACGGACGTCAATCAAAT";
#$_ = "atgcatgcGGTTACGCactt";
$_ = "atgcatcg";
my $pattern = "atgc";#"ATTCTGGA";#
my $len_in = length $_; say $len_in;
my $len_pat = length $pattern; say $len_pat;

my $i=0;
my @pattern;
my @posn;

while ($i <= $len_in-$len_pat){
	my $substr = substr $_, $i, $len_pat;
	my $posn = index  $_,$substr, $i;
	push @pattern, $substr; #if amatch ("$pattern", ["S3"], $substr) ;
	#push @posn, $posn if amatch ("$pattern", ["i","D1","S1","I0"], $substr);
	$i++
}

say "@pattern";

my @matches = amatch ("ATGC", ["i","I0","D0","S2"], @pattern);#Zero deletion; One substitution

say "@matches";

#say "@posn";
































# my $file = "trial.txt";
# open my $fh, '<', $file or die $!;

# my @matches;

# while (<$fh>){
	# say if amatch("balast");
	# push @matches,$_ if amatch("balast");
	
	
# }

# say "@matches";

# my @match = amatch(
#Exit
exit;
	
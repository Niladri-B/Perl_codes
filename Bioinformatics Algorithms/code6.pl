use 5.014;
use warnings;
use String::Approx qw/amatch aindex/;


my $pat = "ATTCTGGA";
my $len_in = length $_;
my $len_pat = length $pat;


my @pattern;


	my $substr = substr $_, $i, $len_pat;
	push @pattern, $substr if amatch( "ATTCTGGA", ["S3"], $substr);
	$i++
}



#my @matches = amatch( "ATTCTGGA", ["S8"], @pattern);
#my @matches2 = amatch( "ATTCTGGA", ["3"]);
#say "@matches";
#say "@matches2";



exit
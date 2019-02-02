use 5.014;
use warnings;

my @fred = qw/ 1 3 5 7 9 /;
my $fred_total = total (@fred);
say "The total of \@fred is $fred_total";

# say "Enter some numbers in separate lines: ";
# my $user_total = total (<STDIN>);
# say "The total of those numbers is $user_total";

say "Total of numbers from 1 to 1000 is : ", total(1..1000);

sub total {
	
	my (@arr) = @_;
	#say @arr;
	my $sum = 0;
	foreach (@arr){
		 $sum += $_;
	}
	return $sum;
}
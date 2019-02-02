use 5.014;
use warnings;

my $i = 29039; #4;
my $add = 0;

while( $i >= 2 ){ # shud not be <= 2 because thenn condition becomes FALSE and loop never executed
	#say $i;
	$add += $i;
	$i--;
}

open OUT, ">Output_exercise_break_2_22.out" or die $!;
say $add+2;
say OUT $add+2;

#Exit
exit;

use 5.014;
use warnings;

#Practice code to try out Conditional Operator ie ' ? '

my $i = '5';

my $j = ($i == 5) ? "Yes \$i = 5" : "No";#Correct #May remove parentheses
say $j;

my $k = '4';
my $l = $k <= $i ? $k += $i : "$k is larger than $i "; #Correct
say $l;

my $m = $k <= $i ? $k += $i : "$k is already larger than $i"; #Correct
say $m;

exit;

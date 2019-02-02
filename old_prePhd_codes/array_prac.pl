use 5.014;
use warnings;

my @arr = qw/A T G C/;
say "@arr";

my $last = pop @arr;
say "Popped element = Last = $last";

my $first = shift @arr;
say "Shifted element = First = $first";

say "@arr";
#Exit
exit;
use 5.014;
use warnings;

#Pg159

my @fields = split /:/, "abc:def:g:h";
say "@fields";

my @fields1 = split /:/, "abc:def::g:h";
say "@fields1";

my @fields2 = split /:/, "::::a:b:c::::";
say "@fields2";

my $some_input = "This is a \t		test.\n";
my @args = split /\s+/,$some_input;
say "@args";

my @r = qw/this is how we do it/;#method to avoid repeatedly typing "" to declare array elements
say @r;

my @s = ("this", "is", "also", "how we do it");#regular way of declaring arrays
say @s;

$_ = "That's\tthe\tway\taha\taha\tI\tlike\t\it\taha\taha";
say $_;
my @val = split;
say @val;
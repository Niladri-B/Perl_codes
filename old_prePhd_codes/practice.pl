use strict;
use List::Util qw/reduce/;

my @values = qw/1 2 3 4 5 -1/;
print"@values";

my $foo = reduce { $a < $b ? $a : $b } @values;
print "\n$foo\n"

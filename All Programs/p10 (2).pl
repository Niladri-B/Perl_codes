use strict;
use warnings;

my %hash = (#keys => values
	'dog' => 'mammal',
	'robin' => 'bird',
	'crocodile' => 'reptile',
);

my @keys = keys %hash;
print "@keys","\n\n\n";

my @values = values %hash;
print "@values";

exit;

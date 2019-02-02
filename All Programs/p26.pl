#usr/bin/perl

use 5.014;
use warnings;

#trial code to push elements of an array into a hash

my @arr = qw(jack jill 2);
my @arr1 = qw(chr1 9873 1);

my %hash;

$hash{key} = splice @arr1,1,1;#splice from position 1, 1 element #if you just type in a single 1, it will remove the 2nd element also and since its a scalar assignment only 1 value is assigned

say @arr1; #array has 2 elements only now, 0th element = chr1; 1st element is 1

$hash{value} = splice @arr1,1,1; #splice from position 1, 1 element

say $hash{key};
say $hash{value};

exit;
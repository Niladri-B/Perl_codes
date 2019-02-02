#usr/bin/perl

use 5.014;
use warnings;
use List::Util qw/first/;

my $start = 10;
my $end = 20;

my @arr1 = qw(8 9 10 11 12 13 14 15 16 17 18 19 20 21);
my @arr2 = qw(0 1 2 2 2 2 2 2 1 1 1 1 1 1);

if  (first { $_ eq $start } @arr1) { 
	
	 }
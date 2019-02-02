#!/usr/bin/perl -w

#code to assign arrays to hashes
use strict;
use Data::Dumper;

my @a = qw(9873 9874 9875 9876);
my @b = qw(1 2 3 4 );
my $h = {};

@{$h}{@a} = @b;

#print Dumper($h);






my %hash = map { $a[$_] => $b[$_] } (0..$#a);

#print %hash;


# foreach my $key (sort keys %hash) {
     # print "$key: $hash{$key} \n";
# }


my @keys = sort keys %hash;
print "\n\n","@keys";

my @values = values %hash;
print "\n\n","@values";

print "\n\n",%hash;
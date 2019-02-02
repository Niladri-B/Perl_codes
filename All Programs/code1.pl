#!/usr/bin/env perl
use strict;
use warnings;
use List::Util qw(max);

#Code to compute max from each row, then find Mean Max ( max total/total rows)

#Input filename
my $file = 'LSD1chr1AOUT.out';

#Open file
open my $fh, '<', $file or die "Unable to open $file: $!\n";

#Open output file
open OUT,">Max$file.OUT" or die;

my ($total, $num);

while (<$fh>) {
    my @values = split;
    my $max = max(@values[3 .. $#values]);
    #print $values[0],"\t",$values[1],"\t",$max,"\n";
    print OUT $values[0],"\t",$values[1],"\t",$max,"\n";
    
    
    $total += $max;
    $num++;
}

my $average_max = $total / $num;
#print "\n\n","Average max is : ",$average_max;
print OUT "\n\n","Average max is : ",$average_max;

exit;


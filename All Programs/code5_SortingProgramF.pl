#usr/bin/perl-w

use strict;
use warnings;

#This code is being used to sort the data in ascending order

#Assign filename
my $file = 'ShuffleSummation_LSD1_ENCODE2.out';

#Open file
open my $fh,'<', $file or die;

#Open output file
open OUT, ">Sorteddifference$file.out" or die;

#Read in data
my @arr = <$fh>;


@arr = sort { $a <=> $b } @arr;
print OUT @arr,"\n";

#Exit
exit;
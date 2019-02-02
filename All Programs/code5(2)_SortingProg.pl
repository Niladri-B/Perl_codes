#usr/bin/perl-w

use strict;
use warnings;

#This code is being used to sort the data in ascending order

# my @array = ('11.4 2.3', '4.5 7.8');
# 
# print @array;
# print "\n";
# 
# my @sorted = sort @array;
# 
# print @sorted;

my $file = 'Shuffleout_LSD1_ENCODE_10k.out';

open my $fh,'<', $file or die;
open OUT, ">Sorteddifference$file.out" or die;

my @arr = <$fh>;

#print OUT sort @arr;

@arr = sort { $a <=> $b } @arr;
print OUT @arr,"\n";

exit;
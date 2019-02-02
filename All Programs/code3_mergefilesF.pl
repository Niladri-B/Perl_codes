#usr/bin/perl

#Code to Merge 2 datasets into a single array
use strict;
use warnings;

#Open first file
my $file1 = 'LSD1_chrAll_A.out';
open my $fh1, '<', $file1 or die "Unable to open file";

#Open second file
my $file2 = 'LSD1_chrAll_B.out';
open my $fh2,'<', $file2 or die "Unable to open file";

#Open output file
open OUT,">MergedA_B.out" or die;

my @arr1 = <$fh1>;
my @arr2 = <$fh2>;


my @join_arr = (@arr1,"\n",@arr2);
print OUT @join_arr;

#Exit
exit;
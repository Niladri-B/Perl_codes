#usr/bin/perl

use strict;
use warnings;

#Code to Merge 2 datasets into a single array
my $file1 = 'LSD1_setA_G4promoterMOD.txt';

open my $fh1, '<', $file1 or die "Unable to open file";
open OUT,">MergedA_B.out" or die;


my $file2 = 'LSD1_setB_withoutG4promoterMOD.txt';
 
open my $fh2,'<', $file2 or die "Unable to open file";


my @arr1 = <$fh1>;
my @arr2 = <$fh2>;


my @join_arr = (@arr1,"\n",@arr2);

#print "Actual joined array : ","\n";
print @join_arr,"\n\n\n";
print OUT @join_arr;


exit;
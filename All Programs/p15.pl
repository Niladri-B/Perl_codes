#usr/bin/perl

use strict;
use warnings;
use List::Util 'shuffle';

my $file1 = 'test1.data';

open my $fh1, '<', $file1 or die "Unable to open file";
open OUT,">mergesmall.out" or die;

# while(<$fh1>){
	# print $_;
# }
# 
# print "\n\n\n";
# 
 my $file2 = 'test2.data';
 
 open my $fh2,'<', $file2 or die "Unable to open file";
# 
# while(<$fh2>){
	# print $_;
# }

my @arr1 = <$fh1>;
my @arr2 = <$fh2>;

# push @arr1,@arr2;
# 
# print @arr1;

my @join_arr = (@arr1,"\n",@arr2);

#print "Actual joined array : ","\n";
print @join_arr,"\n\n\n";
print OUT @join_arr;

my @shuffled = shuffle(@join_arr);

print @shuffled;




exit;
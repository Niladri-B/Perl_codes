#!/usr/bin/perl

use strict; # includes use strict
use warnings;
use List::Util qw(shuffle max sum);

use constant CARRY => 1; # set behaviour of original code;

my @arr = map {my @arr = split; [@arr[3..$#arr]]} <DATA>;

my ($acc1, $get1) = make_accumulator(1);
my ($acc2, $get2) = make_accumulator(2);


 for (1 .. 5){
    my @shuffled = shuffle @arr;

    my $halfway = int (@shuffled / 2);
    my @arr1 = @shuffled[0 .. $halfway];
    my @arr2 = @shuffled[$halfway .. $#shuffled];

    my $average_max1 = $acc1->(@arr1);
    my $average_max2 = $acc2->(@arr2);

    printf "running: %.2f %.2f\n", average($get1->()), average($get2->());
    say " ";
}


 
 
# ####################
# #Subroutine 1
# ####################

use constant CARRY => 1;
 
 sub make_accumulator {
     my $group = shift;
     my ($max, $num) = (0, 0) if CARRY;
     my @acc;
     my $acc = sub {
        my ($max, $num) = (0, 0) unless CARRY;
         for (@_) {
             $max += max @$_;
             $num++;
         }
         my $avg = $max / $num;
         push @acc, $avg;
         printf "Average max in set %d is %.2f\n", $group, $avg;
         $avg;
     };
     my $get = sub { @acc };
     ($acc, $get);
 }
 
 
# 
# ###############
# #Subroutine 2
# ################

sub average { sum(@_) / @_ };
 
 
 
 
_DATA_
NR_046018   DDX11L1 ,   0   0   1   1   1   1   1   1   1      1    0   0   0   0   1.44    2.72    3.84    4.92
NR_047520   LOC643837   ,   3   2.2 0.2 0   0   0.28    1   1   1   1   2.2 4.8 5   5.32    5   5   5   5   3
NM_001005484    OR4F5   ,   2   2   2   1.68    1   0.48    0   0.92    1   1.8 2   2   2   2.04    3.88    3
NR_028327   LOC100133331    ,   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
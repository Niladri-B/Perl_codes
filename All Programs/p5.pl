use strict;
use warnings;

#Assign filename
my $file1 = 'lsdpeakmid.txt';
my $file2 = 'pg4mid.txt';


my @file2;
open my $fh2, "<", $file2 or die $!;
while (<$fh2>) {
  my (undef, $num) = split;
  die "the number contains illegal characters" if $num =~ /\D/;
  push @file2, $num;
}


open my $fh1, "<", $file1 or die $!;
while (<$fh1>) {
  my ($chr, $num) = split;
  die "the number contains illegal characters" if $num =~ /\D/;
  my ($lo, $hi) = find($num, \@file2); #$num is here the value from 1st FILE # \@file2 contains values of 2nd FILE #What is returned is however LOW & HIGH
  print join("\t", $chr, $num, $hi-$num, $lo-$num), "\n";#$num will be 10227, 447989, 535362 etc
}


sub find {
  my ($num, $arrayref) = @_;                                            #$num gets passed i.e for eg. 10227 #the entire array of FILE2 gets passed
  my ($lo, $hi) = (1, $#$arrayref);                                     #...  $#$arrayref PROBABlY gets the last index of the array , here it will be 9 probably
  my $i = int(($lo+$hi)/2);                                             #...  (1+9)/2 = 5 # int converts decimal to lower integer
                                                                        # until($arrayref->[$i-1] <= $num and $num <= $arrayref->[$i]) { # -> DEREFENCING AN ARRAY like $$arrayname
   
   
   until($$arrayref[$i-1] <= $num and $num <= $$arrayref[$i]){          #until 4th value of arrayref <= 10227 AND 10227 <= 5th element of arrayref     
     if ($$arrayref[$i] < $num) {                                                                        #if ($arrayref->[$i] < $num) {
      $lo = $i; # value of $i assigned to $lo ie 5
      $i  = int(($i+$hi)/2); #value of $hi assigned
    } elsif($num < $$arrayref[$i-1]){                                                                    #elsif ($num < $arrayref->[$i-1]) {
       
       $i  = int(($i+$lo)/2); # 5+1/2 = 3
       $hi = $i; #value of $i assigned to $hi ie 5
    } else { die "illegal state" }
  }
  return @{$arrayref}[$i-1, $i];
}


#amon
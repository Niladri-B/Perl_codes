#!/usr/bin/perl
use strict; use warnings;


#Assign filename
my $file1 = 'Midval_peak_chr1.out';#'lsdpeakmid.txt';
my $file2 = 'Midpg4chr1.out' ;#'pg4mid.txt';

#Open Output file
open OUT, ">Amon_g4_lsd1_distance.out" or die $!;

my @file2;

open my $fh2, "<", $file2 or die $!;
while (<$fh2>) {
  my (undef, $num) = split;
  die "the number contains illegal characters" if $num =~ /\D/;
  push @file2, $num;
}
#@file2 = sort {$a <=> $b} @file2; # sort ascending
# remove previous line if sorting is already guaranteed.


open my $fh1, "<", $file1 or die $!;
while (<$fh1>) {
  my ($chr, $num) = split;
  die "the number contains illegal characters" if $num =~ /\D/;
  if (my ($lo, $hi) = find($num, \@file2)) { #$num is here the value from 1st FILE # \@file2 contains values of 2nd FILE #What is returned is however LOW & HIGH
    if ($hi == $num) {
      print OUT join("\t", $chr, $num, "Yes"), "\n";
    } else {
      print OUT join("\t", $chr, $num, "No", $hi-$num, $lo-$num), "\n";
    }
  } else {
    # no matching numbers were found in file 2
    print OUT join("\t", $chr, $num, "No-match"), "\n";
  }
}


sub find {
  my ($num, $arrayref) = @_;

  # exit if array is too small
  return unless @$arrayref >= 2;
  # exit if $num is outside the values of this array (-1 is last element)
  return if $num <= $arrayref->[0] or $arrayref->[-1] < $num;

   my ($lo, $hi) = (1, $#$arrayref);
  my $i = int(($lo+$hi)/2); # start in the middle

  # iterate until
  #   a) the previous index contains a number that is smaller than $num and
  #   b) the current index contains a number that is greater or equal to $num.
  until($arrayref->[$i-1] < $num and $num <= $arrayref->[$i]) {
    # make $i the next lower or upper bound.
    # instead of going into an infinite loop (which would happen if we
    # assign $i to a variable that already holds the same value), we discard
    # the value and move on towards the middle.
          # $i is too small
    if    ($num >  $arrayref->[$i]  ) { $lo = ($lo == $i ? $i+1 : $i) }
          # $i is too large
    elsif ($num <= $arrayref->[$i-1]) { $hi = ($hi == $i ? $i-1 : $i) }
          # in case I made an error:
    else                              { die "illegal state" }
    # calculate the next index
    $i  = int(($lo+$hi)/2);
  }
  return @{$arrayref}[$i-1, $i];
}

#Amon
#!/usr/bin/perl
#use strict;
use 5.014;
use warnings;
use List::Util qw(first);   

#Assign filename
my $file1 = 'Midval_peak_chr1.out';#'lsdpeakmid.txt';
my $file2 = 'Midpg4chr1.out' ;#'pg4mid.txt';


$\="\n";


open my $fh1,'<',$file1 or die $!;
open my $fh2,'<',$file2 or die $!;

open OUT, ">g4_lsd1_distance_chr1.out" or die $!;
my %h1;

while(<$fh2>){
        chomp;
        my ($k,$v)=split(/\s+/);
        push @{$h1{$k}}, $v;
}

# foreach my $k (keys%h1){
        # @{$h1{$k}}=sort {$a <=> $b}@{$h1{$k}};
# }

close $fh2;

while (<$fh1>){
        chomp;
        my ($k, $v)=split(/\s+/);
        local $,="\t";
        say $k, $v,(first{$_ > $v}@{$h1{$k}})-$v,(first{$_ < $v}reverse @{$h1{$k}})-$v ;
        say OUT $k, $v, (first{$_ > $v}@{$h1{$k}})-$v, (first{$_ < $v}reverse @{$h1{$k}})-$v;
}
close $fh1;
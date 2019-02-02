#!/usr/bin/perl
use strict;
use warnings;
use List::Util qw(first);

#Assign filename
my $file1 = 'Midval_peak_chr1.out';#'lsdpeakmid.txt';
my $file2 = 'Midpg4chr1.out' ;#'pg4mid.txt';



open my $fh1,'<',$file1 or die $!;
open my $fh2,'<',$file2 or die $!;

open OUT ,">LSD1_chr1_g4_distance.out" or die $!;

my %h1;

while(<$fh2>){
        chomp;
        my ($k,$v)=split(/\s+/);
        push @{$h1{$k}}, $v;
}
close $fh2;

while (<$fh1>){
        chomp;
        my ($k, $v)=split(/\s+/);
        my $bef=(first{$_ >= $v}@{$h1{$k}})-$v;
        my $aft=(first{$_ <= $v}reverse @{$h1{$k}})-$v;
        my $str=sprintf("%-8s %-10d %-5s %-6s %-6s",$k, $v,$bef?"No":"Yes",$bef?$bef:"",$aft?$aft:"");
        print OUT $str, "\n";
}
close $fh1;

#Guru
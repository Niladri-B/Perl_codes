#!/usr/bin/perl
use 5.014;
use warnings;
use List::Util qw(first);

#Assign filename
for(my $i = 1; $i<=23 ; $i++){
my $file1 = "MidVal_peak_chr$i.out";#'lsdpeakmid.txt'; #case insensitive
my $file2 = "TSS_chr$i.out" ;#'pg4mid.txt';

open my $fh1,'<',$file1 or die $!;
open my $fh2,'<',$file2 or die $!;

open OUT, ">REST_TSS_distance_$i.out" or die $!;

my %h1;

while(<$fh2>){
        chomp;
        my ($k,$v)=split(/\s+/);#split on whitespace
        push @{$h1{$k}}, $v;#push into array of values, $v
}
close $fh2;

while (<$fh1>){
        chomp;
        my ($k, $v)=split(/\s+/); #split on whitespace
        my $bef=first{$_ >= $v}@{$h1{$k}}; #first greater value
        $bef=defined $bef?$bef-$v:"No match"; #If value before ? TRUE, do stuff before :, ELSE do stuff after :
        my $aft=first{$_ <= $v}reverse @{$h1{$k}};#last smaller value
        $aft=defined $aft?$aft-$v:"No match"; 
        my $str=sprintf("%-8s %-10d %-5s %-8s %-8s",$k, $v,$bef?"No":"Yes",$bef?$bef:"",$aft?$aft:""); #$v = number, hence %d used, others have strings as input hence &s is used
        say OUT $str; #%-8s means Left Justified(throw values on left and put a space) by 8 space, %-10s ,means Left Justified decimal by 10 space
}
close $fh1;
}






#Guru
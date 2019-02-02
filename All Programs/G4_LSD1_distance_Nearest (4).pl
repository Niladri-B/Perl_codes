#!/usr/bin/perl
use 5.014;
use warnings;
use List::Util qw(first);

#Assign filename
my $file1 = 'Midval_peak_chrY.out';#'lsdpeakmid.txt'; #case insensitive
my $file2 = 'Midpg4chrY.out' ;#'pg4mid.txt';

open my $fh1,'<',$file1 or die $!;
open my $fh2,'<',$file2 or die $!;

open OUT, ">LSD1_chrY_g4_NEAREST.out" or die $!;

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
        my $bef=first{$_ >= $v}@{$h1{$k}}; #first greater or equal value
        $bef=defined $bef?$bef-$v:"No match"; #If value before ? TRUE, do stuff before :, ELSE do stuff after : #if equal value found, $bef-$v = 0
        my $aft=first{$_ <= $v}reverse @{$h1{$k}};#last smaller or equal value
        $aft=defined $aft?$aft-$v:"No match"; 
        my $str=sprintf("%-8s %-10d %-5s %-8s %-8s",$k, $v,$bef?"No":"Yes",$bef?$bef:"",$aft?$aft:""); #$v = number, hence %d used, others have strings as input hence &s is used
        #say OUT $str; #%-8s means Left Justified(throw values on left and put a space) by 8 space, %-10s ,means Left Justified decimal by 10 space #For equal values, 0 is counted as FALSE and hence YES is displayed
        my $nearest = $bef - abs $aft;
        if ($nearest > 0){
                say OUT abs $aft;
        }elsif($nearest < 0) {
                say OUT $bef;
        }
        
        
}
close $fh1;






#Guru
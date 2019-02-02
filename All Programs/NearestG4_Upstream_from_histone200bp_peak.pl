#!/usr/bin/perl
use 5.014;
use warnings;
use List::Util qw(first);

#Code to determine nearest G4

#Assign filenames
my $file1 = '200Peak_Start_chrY.out';#'lsdpeakmid.txt'; #case insensitive
my $file2 = '+_chrY_G4_end.out' ;#'pg4mid.txt';

#Open files
open my $fh1,'<',$file1 or die $!;
open my $fh2,'<',$file2 or die $!;

#Open Output File
open OUT, ">H3K4me2_nearest_Upg4_chrY.out" or die $!;

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
        my $bef=first{$_ <= $v} reverse @{$h1{$k}}; #first($_) greater value from hash greater than LSD1 $v value
        $bef=defined $bef?$bef-$v:"No match"; #If value before ? TRUE, do stuff before :, ELSE do stuff after :
        # my $aft=first{$_ <= $v}reverse @{$h1{$k}};#last smaller value
        # $aft=defined $aft?$aft-$v:"No match"; 
        my $str=sprintf("%-8s %-10d %-5s %-8s",$k, $v,$bef?"No":"Yes",$bef?$bef:""); #$v = number, hence %d used, others have strings as input hence &s is used    ,$aft?$aft:""
        say OUT $str; #%-8s means Left Justified(throw values on left and put a space) by 8 space, %-10s ,means Left Justified decimal by 10 space
}
close $fh1;

#Exit
exit;





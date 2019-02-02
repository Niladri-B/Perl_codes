#!/usr/bin/perl
use strict;
use warnings;
use List::Util qw(first);

for(my $j = 1; $j <= 2; $j++){
        #for(my $i = 1, my $k = 1	; 	$i <= 24 && $k <= 24 	; 		$i++, $k++){ #Note FANTASTIC LOOP INITIALIZATION ie MULTIPLE LOOPS TOGETHER
        for(my $i =1 ; $i <= 24; $i++){
        	#We want to run multiple loops together here for comparing LSD1 & G4 file together
        	#A Nested loop would not accomplish that as for each LSD1 it would look at all 24 G4 files and then move to 2nd LSD1 file
        	
        	open OUT, ">LSD1_g4_distance_trial_$j=chr$i.out" or die $!;
        	
                my $file1 = "SortedMid_Random_LSD1_trial_$j=chr$i.out.out";
                my $file2 = "Midpg4chr$i.out";




		#Assign filename
		#my $file1 = 'SortedMid_Random_LSD1_trial_1=chr1.out';#'lsdpeakmid.txt'; #case insensitive
		#my $file2 = 'Midpg4chr1.out' ;#'pg4mid.txt';

		open my $fh1,'<',$file1 or die $!;
		open my $fh2,'<',$file2 or die $!;

		

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
			my $bef=first{$_ >= $v}@{$h1{$k}}; #first($_) greater value from hash greater than LSD1 $v value
			$bef=defined $bef?$bef-$v:"No_match"; #If value before ? TRUE, do stuff before :, ELSE do stuff after :
			my $aft=first{$_ <= $v}reverse @{$h1{$k}};#last smaller value
			$aft=defined $aft?$aft-$v:"No_match"; 
			my $str=sprintf("%-8s %-10d %-5s %-8s %-8s",$k, $v,$bef?"No":"Yes",$bef?$bef:"",$aft?$aft:""); #$v = number, hence %d used, others have strings as input hence &s is used
			print OUT $str,"\n"; #%-8s means Left Justified(throw values on left and put a space) by 8 space, %-10s ,means Left Justified decimal by 10 space
		}
		close $fh1;
		
		}
	}







#Guru
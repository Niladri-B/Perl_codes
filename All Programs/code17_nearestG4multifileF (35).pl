#!/usr/bin/perl
use strict;
use warnings;
use List::Util qw(first);

#Initialize the loops
#for(my $j = 1; $j <= 2; $j++){#Loop for file number
        for(my $i =1 ; $i <= 24; $i++){#Loop for chromosome & G4 file
        	
        	#Open output file
        	#open OUT, ">h3k4me2_g4_distance_trial_$j=chr$i.out" or die $!;
        	open OUT, ">h3k4me2_nearest_g4_chr$i.out" or die $!;
        	
        	#Assign filenames
                #my $file1 = "SortedMid_Random_h3k4me2_trial_$j=chr$i.out.out";
                my $file1 = "MidVal_peak_chr$i.out";
                my $file2 = "Sorted_All_mid_pg4_chr$i.out.out";# Sorted_All_mid_pg4_chr1.out

		#Read in files
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
			my $bef=first{$_ >= $v}@{$h1{$k}}; #first($_) greater value from hash greater than h3k4me2 $v value
			$bef=defined $bef?$bef-$v:"No_match"; #If value before ? TRUE, do stuff before :, ELSE do stuff after :
			my $aft=first{$_ <= $v}reverse @{$h1{$k}};#last smaller value
			$aft=defined $aft?$aft-$v:"No_match"; 
			my $str=sprintf("%-8s %-10d %-5s %-8s %-8s",$k, $v,$bef?"No":"Yes",$bef?$bef:"0",$aft?$aft:"0"); #$v = number, hence %d used, others have strings as input hence %s is used
			print OUT $str,"\n"; #%-8s means Left Justified(throw values on left and put a space) by 8 space, %-10s ,means Left Justified decimal by 10 space
		}
		close $fh1;
		
		}
	#}

#Exit
exit;







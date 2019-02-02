use strict;
use warnings;
use List::Util qw(max shuffle);

#Pseudocode
#
#Take the merged data file
#Shuffle in a loop
##Each shuffled array divided into 2 halves
###compute total of each row for each half, find average total for each half
#Shuffle the merged data a 2nd time
##Repeat above process 1000/10,000 times

#This code prints difference between set1 and set2
#This code is now being modified to loop 10,000 times

#Open input file
my $file = 'MergedA_B.out';
open my $fh,'<',$file or die "Unable to open file";

#Open output file
open OUT,">Shuffleout_LSD1_ENCODE_10k.out" or die;

#Read in file
my @arr = <$fh>;


	my $i = 9999; #Change to 999 to generate 1000 values
	while($i){
		my @arr1 = (); #array 1
		my @arr2 = (); #array 2
	
		my @shuffled = shuffle(@arr); #shuffle main array containing merged data
	
		push @arr1,(@shuffled[0..16793]);#working
		push @arr2,(@shuffled[16794..$#shuffled]);#working

	#Find average max of @arr1
		my ($total1, $num1);
			foreach $_(@arr1){
			my @val1 = split;
			my $max1 = max(@val1[8..$#val1]);
			
			
		          $total1 += $max1;
			  $num1++;
		 }
	
	my $average_max1 = $total1 /  $num1;
	#print "\n\n";
	
	#Find average max of @arr2
		my ($total2, $num2);
		 foreach $_(@arr2){
			 my @val2 = split;
			 my $max2 = max(@val2[8..$#val2]);
		
					
			   $total2 += $max2;
			   $num2++;
		 }
	
		
		 my $average_max2 =  $total2 /  $num2;
				
		 #Compute difference between the 2 mean average maxes
		 my $avgdiff = $average_max1-$average_max2;
		
		 print OUT $avgdiff,"\n";
	
		$i--;
		
	}

	#Exit
	exit;



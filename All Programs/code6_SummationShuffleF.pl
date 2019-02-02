use strict;
use warnings;
use List::Util qw(max sum shuffle);

#Pseudocode
#
#Take the merged data file
#Shuffle in a loop
##Each shuffled array divided into 2 halves
###compute total of each row for each half, find average total for each half
#Shuffle the merged data a 2nd time
##Repeat above process 1000/10,000 times


#Open input file
my $file = 'MergedA_B.out';
open my $fh,'<',$file or die "Unable to open file";

#Open output file
open OUT,">ShuffleSummation_LSD1_ENCODE.out" or die;

#Read in file
my @arr = <$fh>;


	my $i = 9999; #Change to 999 to generate 1000 values
	while($i){
		my @arr1 = (); #array 1
		my @arr2 = (); #array 2
	
		my @shuffled = shuffle(@arr); #shuffle main array containing merged data
	
		push @arr1,(@shuffled[0..16793]);#working
		push @arr2,(@shuffled[16794..$#shuffled]);#working

	#Find average summation of @arr1
		my ($total1, $num1);
			foreach $_(@arr1){
			my @val1 = split;
			my $summation1 = sum(@val1[8..$#val1]);
			
			
		          $total1 += $summation1;
			  $num1++;
		 }
	
	my $average_summation1 = $total1 /  $num1;
	#print "\n\n";
	
	#Find average summation of @arr2
		my ($total2, $num2);
		 foreach $_(@arr2){
			 my @val2 = split;
			 my $summation2 = sum(@val2[8..$#val2]);
		
					
			   $total2 += $summation2;
			   $num2++;
		 }
	
		
		 my $average_summation2 =  $total2 /  $num2;
				
		 #Compute difference between the 2 mean average summation
		 my $avgdiff = $average_summation1 - $average_summation2;
		
		 print OUT $avgdiff,"\n";
	
		$i--;
		
	}

	#Exit
	exit;



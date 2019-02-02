#pseudocode
#
#Take the merged data file
#Shuffle in a loop
##Each shuffled array divided into 2 halves
###compute total of each row for each half, find average total for each half
#Shuffle the merged data a 2nd time
##Repeat above process 1000/10,000 times

#This code prints difference between set1 and set2
#This code is now being modified to loop 10,000 times

use strict;
use warnings;
#use List::Util 'shuffle';
use List::Util qw(max sum shuffle);

my $file = 'MergedA_B.out';

open my $fh,'<',$file or die "Unable to open file";
open OUT,">ShuffleSummationsmall.out" or die;

my @arr = <$fh>;


	my $i = 10; #Change to 1000 to generate 1000 values
	while($i){
		my @arr1 = (); #array 1
		my @arr2 = (); #array 2
	
		my @shuffled = shuffle(@arr); #shuffle main array containing merged data
	
		push @arr1,(@shuffled[0..23557]);#working
		push @arr2,(@shuffled[23558..$#shuffled]);#working

		my ($total1, $num1);
	#Find average max of @arr1
		foreach $_(@arr1){
			my @val1 = split;
			#my $max1 = max(@val1[3..$#val1]);
			#print "Max1 of rows in set1 : ", $max1,"\n";
			#print OUT $max1;
			#print "\n",@val1,"\n";
			my $summation1 = sum(@val1[3..$#val1]);
			# print OUT $summation,"\n";
			#print  "\nSummation 1st set : ",$summation1;
				
			$total1 += $summation1;
			$num1++;
			#print "\nTotal1 : ", $total1;
		
		          # $total1 += $max1;
			  # $num1++;
		  }
	
		#print "Total1 : ", $total1,"\n";
		 #my $average_max1 = $total1 /  $num1;
		# print "\n\n","Average max 1st set is : ",$average_max1;
		# print OUT "\n\nAverage max 1st set is : ",$average_max1;
		
		 my $average_summation1 = $total1 / $num1;
		 #print "\n", "Average summation 1st set is : ",$average_summation1;         
		
		
	
		#Find average max of @arr2
		
		#print "\n\n";
		
		my ($total2, $num2);
		 foreach $_(@arr2){
			 my @val2 = split;
			 #my $max2 = max(@val2[3..$#val2]);
			#print "Max2 of rows in set 2 : ", $max2,"\n";
			# #print OUT $max2;
			my $summation2 = sum(@val2[3..$#val2]);
			#print "\nSummation 2nd set is : ",$summation2;
			   
			   $total2 += $summation2;
			   $num2++;
			   #print "\nTotal2 : ",$total2;
			   
			   # $total2 += $max2;
			   # $num2++;
		 }
	
		#print "Total2 : ", $total2,"\n";
		 #my $average_max2 =  $total2 /  $num2;
		# print "\n\n","Average max 2nd set is : ",$average_max2;
		# print OUT "\t","Average max 2nd set is : ",$average_max2,"\n\n";
		
		my $average_summation2 = $total2 / $num2;
		#print "\nAverage summation 2 is : ", $average_summation2; 
		
		#print "\n\n";
		
		# #Compute difference between the 2 mean average maxes
		my $avgdiff = $average_summation1 - $average_summation2;
		
		print OUT $avgdiff,"\n";
	
		$i--;
		
	}

	
	
	


	exit;



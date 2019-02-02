#pseudocode
#
#Take the merged data file
#Shuffle in a loop
##Each shuffled array divided into 2 halves
###compute max average for each half, store it
#Shuffle the merged data a 2nd time
##Repeat above process 1000 times

#This code prints difference between set1 and set2
#This code is now being modified to loop 10,000 times##DONE
#Back to 1000 iterations#TOO MUCH VARIATION

#use strict;
use warnings;
use List::Util 'shuffle';
use List::Util qw(max);

my $file = 'MergedA_B.out';

open my $fh,'<',$file or die "Unable to open file";
open OUT,">ShuffleMOD_Atenk.out" or die;

my @arr = <$fh>;

#for(my $x =0 ; $x<=1; $x++){
	my $i = 10000;
	while($i){
		my @arr1 = ();
		my @arr2 = ();
	
		my @shuffled = shuffle(@arr);
	
		push @arr1,(@shuffled[0..23558]);#working
		push @arr2,(@shuffled[23559..$#shuffled]);#working

		
	
		foreach $_(@arr1){
			my @val1 = split;
			my $max1 = max(@val1[3..$#val1]);
			#print $max1;
			#print OUT $max1;
		
			 $total1 += $max1;
			 $num1++;
		}
	
		my $average_max1 = $total1 /  $num1;
		#print "\n\n","Average max 1st set is : ",$average_max1;
		#print OUT "Average max 1st set is : ",$average_max1;
		
		
		
	
		# my $totalavg1 += $average_max1;
		
		
		foreach $_(@arr2){
			my @val2 = split;
			my $max2 = max(@val2[3..$#val2]);
		
			print "\n\n";
			#print $max2;
			#print OUT $max2;
		
			 $total2 += $max2;
			 $num2++;
		}
	
		my $average_max2 =  $total2 /  $num2;
		#print "\n\n","Average max 2nd set is : ",$average_max2;
		#print OUT "\t","Average max 2nd set is : ",$average_max2,"\n\n";
		
		# $totalavg2 += $average_max2;
		$avgdiff = $average_max1-$average_max2;
		
		print OUT $avgdiff,"\n";
	
		$i--;
		
	}

	
	
	#$totalavg1 += $average_max1;
	#$totalavg2 += $average_max2;
	
	# $avg_of_avgsetA = $totalavg1/2 ;
	# $avg_of_avgsetB = $totalavg2/2;
	# 
	# print OUT  "Shuffled avg A = " , $avg_of_avgsetA,"\n";
	# print OUT  "Shuffled avg B = " , $avg_of_avgsetB,"\n\n";
	
	# print OUT "\n\n\n";
	# print OUT "Sum average 1 : ",$totalavg1,"\n";
	# print OUT "Average of sum averages 1 : ",$avg_of_avgsetA,"\n";
# 
	# print OUT "Sum average 2 : ",$totalavg2,"\n";
	# print OUT "Average of sum averages 2 : ",$avg_of_avgsetB,"\n";

	
#}



	exit;



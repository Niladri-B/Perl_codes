#!/usr/bin/perl

#Code to find mean summation of each set of LSD1 data

use strict;
use warnings;
use List::Util qw(max shuffle sum);

my $file = 'LSD1_setB_withoutG4promoterMOD.txt';

open my $fh,'<',$file or die qw (Unable to open file);
open OUT, ">SummationAvg_B.out" or die;


my($total1, $num1);

while(<$fh>){

			my @val1 = split;
			#my $max1 = max(@val1[3..$#val1]);
			#print "Max1 of rows in set1 : ", $max1,"\n";
			#print OUT $max1;
			#print "\n",@val1,"\n";
			my $summation1 = sum(@val1[3..$#val1]);
			print OUT $val1[0],"\t",$val1[1],"\t",$summation1,"\n";
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
		 #print 
		 
		 print OUT "\n\n\n",$average_summation1;
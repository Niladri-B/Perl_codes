#!/usr/bin/perl

#Code to find mean summation of each set of LSD1 data

use strict;
use warnings;
use List::Util qw(max shuffle sum);

#Input filename
my $file = 'LSD1_chrAll_A_+_-_2kb_of_TSS.txt';

#Open file
open my $fh,'<',$file or die qw (Unable to open file);

#Open output file
open OUT, ">SummationAvg_$file.out" or die;


my($total1, $num1);

while(<$fh>){

			my @val1 = split;
			
			my $summation1 = sum(@val1[8..$#val1]);
			print OUT $val1[6],"\t",$val1[7],"\t",$summation1,"\n";
							
			$total1 += $summation1;
			$num1++;
			
		  }
	
my $average_summation1 = $total1 / $num1;
print OUT "\n\n\n",$average_summation1;

#Exit
exit;
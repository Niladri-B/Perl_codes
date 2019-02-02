##Code to push chromosomal data into different text files
###This uses SAY function

#pseudocode
##read each line of file
#if 1st element is chromosome1, print OUT that element
#if 1st element is chromosome2, exit

#For parsing out PG4 Chromosome wise

use strict;
use warnings;
use 5.010;

my $file = 'all_PG4_UCSC_hg19.txt';

open my $fh, '<', $file or die qw( Cannot open input file);
open OUT1,">pg4chr1.out" or die;
open OUT2,">pg4chr2.out" or die;
open OUT3,">pg4chr3.out" or die;
open OUT4,">pg4chr4.out" or die;
open OUT5,">pg4chr5.out" or die;
open OUT6,">pg4chr6.out" or die;
open OUT7,">pg4chr7.out" or die;
open OUT8,">pg4chr8.out" or die;
open OUT9,">pg4chr9.out" or die;
open OUT10,">pg4chr10.out" or die;
open OUT11,">pg4chr11.out" or die;
open OUT12,">pg4chr12.out" or die;
open OUT13,">pg4chr13.out" or die;
open OUT14,">pg4chr14.out" or die;
open OUT15,">pg4chr15t.out" or die;
open OUT16,">pg4chr16.out" or die;
open OUT17,">pg4chr17.out" or die;
open OUT18,">pg4chr18.out" or die;
open OUT19,">pg4chr19.out" or die;
open OUT20,">pg4chr20.out" or die;
open OUT21,">pg4chr21.out" or die;
open OUT22,">pg4chr22.out" or die;
open OUT23,">pg4chrX.out" or die;
open OUT24,">pg4chrY.out" or die;

while(<$fh>){
	my @val = split;
	if($val[0] eq 'chr1'){
		#print "@val \n";
		 say OUT1 join ("\t",@val);
		
	}elsif($val[0] eq 'chr2'){
		say OUT2 join("\t",@val);
		
	}elsif($val[0] eq 'chr3'){
		say OUT3 join("\t",@val);
		
	}elsif($val[0] eq 'chr4'){
		say OUT4 join("\t",@val);
		
	}elsif($val[0] eq 'chr5'){
		say OUT5 join("\t",@val);
	
	}elsif($val[0] eq 'chr6'){
		say OUT6 join("\t",@val);
	
	}elsif($val[0] eq 'chr7'){
		say OUT7 join("\t",@val);
	
	}elsif($val[0] eq 'chr8'){
		say OUT8 join("\t",@val);
	
	}elsif($val[0] eq 'chr9'){
		say OUT9 join("\t",@val);
	
	}elsif($val[0] eq 'chr10'){
		say OUT10 join("\t",@val);
		
	}elsif($val[0] eq 'chr11'){
		say OUT11 join("\t",@val);
	
	}elsif($val[0] eq 'chr12'){
		say OUT12 join("\t",@val);
		
	}elsif($val[0] eq 'chr13'){
		say OUT13 join("\t",@val);
	
	}elsif($val[0] eq 'chr14'){
		say OUT14 join("\t",@val);
	
	}elsif($val[0] eq 'chr15'){
		say OUT15 join("\t",@val);
	
	}elsif($val[0] eq 'chr16'){
		say OUT16 join("\t",@val);
	
	}elsif($val[0] eq 'chr17'){
		say OUT17 join("\t",@val);
	
	}elsif($val[0] eq 'chr18'){
		say OUT18 join("\t",@val);
	
	}elsif($val[0] eq 'chr19'){
		say OUT19 join("\t",@val);
	
	}elsif($val[0] eq 'chr20'){
		say OUT20 join("\t",@val);
	
	}elsif($val[0] eq 'chr21'){
		say OUT21 join("\t",@val);
	
	}elsif($val[0] eq 'chr22'){
		say OUT22 join("\t",@val);
	
	}elsif($val[0] eq 'chrX'){
		say OUT23 join("\t",@val);
	
	}else{
		say OUT24 join("\t",@val);
	}
	
	
}
	
exit;
	
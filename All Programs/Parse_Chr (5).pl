##Code to push chromosomal data into different text files
###This uses SAY function

#pseudocode
##read each line of file
#if 1st element is chromosome1, print OUT that element
#if 1st element is chromosome2, exit

#For parsing out Without_Alu_ Chromosome wise

use strict;
use warnings;
use 5.010;

my $file = 'Unique_Promoters_Without_Alu_all.out';

open my $fh, '<', $file or die qw( Cannot open input file);
open OUT1,">Without_Alu_chr1.out" or die;
open OUT2,">Without_Alu_chr2.out" or die;
open OUT3,">Without_Alu_chr3.out" or die;
open OUT4,">Without_Alu_chr4.out" or die;
open OUT5,">Without_Alu_chr5.out" or die;
open OUT6,">Without_Alu_chr6.out" or die;
open OUT7,">Without_Alu_chr7.out" or die;
open OUT8,">Without_Alu_chr8.out" or die;
open OUT9,">Without_Alu_chr9.out" or die;
open OUT10,">Without_Alu_chr10.out" or die;
open OUT11,">Without_Alu_chr11.out" or die;
open OUT12,">Without_Alu_chr12.out" or die;
open OUT13,">Without_Alu_chr13.out" or die;
open OUT14,">Without_Alu_chr14.out" or die;
open OUT15,">Without_Alu_chr15.out" or die;
open OUT16,">Without_Alu_chr16.out" or die;
open OUT17,">Without_Alu_chr17.out" or die;
open OUT18,">Without_Alu_chr18.out" or die;
open OUT19,">Without_Alu_chr19.out" or die;
open OUT20,">Without_Alu_chr20.out" or die;
open OUT21,">Without_Alu_chr21.out" or die;
open OUT22,">Without_Alu_chr22.out" or die;
open OUT23,">Without_Alu_chr23.out" or die;
open OUT24,">Without_Alu_chr24.out" or die;

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
	
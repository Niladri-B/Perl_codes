##Code to push chromosomal data into different text files
###This uses SAY function

#pseudocode
##read each line of file
#if 1st element is chromosome1, print OUT that element
#if 1st element is chromosome2, exit

#For parsing out Unique Exon Co-ordinates chromosome wise

use strict;
use warnings;
use 5.010;

my $file = 'Unique_LSD1_in_all_Introns_mod.out';

open my $fh, '<', $file or die qw( Cannot open input file);
open OUT1,">Unique_LSD1_Coordinates_Introns_chr1.out" or die;
open OUT2,">Unique_LSD1_Coordinates_Introns_chr2.out" or die;
open OUT3,">Unique_LSD1_Coordinates_Introns_chr3.out" or die;
open OUT4,">Unique_LSD1_Coordinates_Introns_chr4.out" or die;
open OUT5,">Unique_LSD1_Coordinates_Introns_chr5.out" or die;
open OUT6,">Unique_LSD1_Coordinates_Introns_chr6.out" or die;
open OUT7,">Unique_LSD1_Coordinates_Introns_chr7.out" or die;
open OUT8,">Unique_LSD1_Coordinates_Introns_chr8.out" or die;
open OUT9,">Unique_LSD1_Coordinates_Introns_chr9.out" or die;
open OUT10,">Unique_LSD1_Coordinates_Introns_chr10.out" or die;
open OUT11,">Unique_LSD1_Coordinates_Introns_chr11.out" or die;
open OUT12,">Unique_LSD1_Coordinates_Introns_chr12.out" or die;
open OUT13,">Unique_LSD1_Coordinates_Introns_chr13.out" or die;
open OUT14,">Unique_LSD1_Coordinates_Introns_chr14.out" or die;
open OUT15,">Unique_LSD1_Coordinates_Introns_chr15.out" or die;
open OUT16,">Unique_LSD1_Coordinates_Introns_chr16.out" or die;
open OUT17,">Unique_LSD1_Coordinates_Introns_chr17.out" or die;
open OUT18,">Unique_LSD1_Coordinates_Introns_chr18.out" or die;
open OUT19,">Unique_LSD1_Coordinates_Introns_chr19.out" or die;
open OUT20,">Unique_LSD1_Coordinates_Introns_chr20.out" or die;
open OUT21,">Unique_LSD1_Coordinates_Introns_chr21.out" or die;
open OUT22,">Unique_LSD1_Coordinates_Introns_chr22.out" or die;
open OUT23,">Unique_LSD1_Coordinates_Introns_chr23.out" or die;
open OUT24,">Unique_LSD1_Coordinates_Introns_chr24.out" or die;

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
	
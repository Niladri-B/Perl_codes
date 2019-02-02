##Code to push chromosomal data into different text files

#pseudocode
##read each line of file
#if 1st element is chromosome1, print OUT that element
#if 1st element is chromosome2, exit

use strict;
use warnings;

my $file = 'a.wig.txt';

open my $fh, '<', $file or die qw( Cannot open input file);
open OUT1,">chr1trial.out" or die;
open OUT2,">chr2trial.out" or die;
open OUT3,">chr3trial.out" or die;
open OUT4,">chr4trial.out" or die;
open OUT5,">chr5trial.out" or die;
open OUT6,">chr6trial.out" or die;
open OUT7,">chr7trial.out" or die;
open OUT8,">chr8trial.out" or die;
open OUT9,">chr9trial.out" or die;
open OUT10,">chr10trial.out" or die;
open OUT11,">chr11trial.out" or die;
open OUT12,">chr12trial.out" or die;
open OUT13,">chr13trial.out" or die;
open OUT14,">chr14trial.out" or die;
open OUT15,">chr15trial.out" or die;
open OUT16,">chr16trial.out" or die;
open OUT17,">chr17trial.out" or die;
open OUT18,">chr18trial.out" or die;
open OUT19,">chr19trial.out" or die;
open OUT20,">chr20trial.out" or die;
open OUT21,">chr21trial.out" or die;
open OUT22,">chr22trial.out" or die;
open OUT23,">chrXtrial.out" or die;
open OUT24,">chrYtrial.out" or die;

while(<$fh>){
	my @val = split;
	if($val[0] eq 'chr1'){
		#print "@val \n";
		print OUT1 join ("\t",@val,"\n");
		
	}elsif($val[0] eq 'chr2'){
		print OUT2 join("\t",@val, "\n");
		
	}elsif($val[0] eq 'chr3'){
		print OUT3 join("\t",@val, "\n");
		
	}elsif($val[0] eq 'chr4'){
		print OUT4 join("\t",@val, "\n");
		
	}elsif($val[0] eq 'chr5'){
		print OUT5 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr6'){
		print OUT6 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr7'){
		print OUT7 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr8'){
		print OUT8 join("\t",@val,  "\n");
	
	}elsif($val[0] eq 'chr9'){
		print OUT9 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr10'){
		print OUT10 join("\t",@val, "\n");
		
	}elsif($val[0] eq 'chr11'){
		print OUT11 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr12'){
		print OUT12 join("\t",@val, "\n");
		
	}elsif($val[0] eq 'chr13'){
		print OUT13 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr14'){
		print OUT14 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr15'){
		print OUT15 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr16'){
		print OUT16 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr17'){
		print OUT17 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr18'){
		print OUT18 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr19'){
		print OUT19 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr20'){
		print OUT20 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr21'){
		print OUT21 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chr22'){
		print OUT22 join("\t",@val, "\n");
	
	}elsif($val[0] eq 'chrX'){
		print OUT23 join("\t",@val, "\n");
	
	}else{
		print OUT24 join("\t",@val,"\n");
	}
	
	
}
	
exit;
	
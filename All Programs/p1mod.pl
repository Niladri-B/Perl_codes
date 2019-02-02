##Code to push chromosomal data into different text files
###This uses SAY function

#pseudocode
##read each line of file
#if 1st element is chromosome1, print OUT that element
#if 1st element is chromosome2, exit

use strict;
use warnings;
use 5.010;

my $file = 'aMOD.wig.txt';

open my $fh, '<', $file or die qw( Cannot open input file);
open OUT1,">chr1trialS.out" or die;
open OUT2,">chr2trialS.out" or die;
open OUT3,">chr3trialS.out" or die;
open OUT4,">chr4trialS.out" or die;
open OUT5,">chr5trialS.out" or die;
open OUT6,">chr6trialS.out" or die;
open OUT7,">chr7trialS.out" or die;
open OUT8,">chr8trialS.out" or die;
open OUT9,">chr9trialS.out" or die;
open OUT10,">chr10trialS.out" or die;
open OUT11,">chr11trialS.out" or die;
open OUT12,">chr12trialS.out" or die;
open OUT13,">chr13trialS.out" or die;
open OUT14,">chr14trialS.out" or die;
open OUT15,">chr15trialS.out" or die;
open OUT16,">chr16trialS.out" or die;
open OUT17,">chr17trialS.out" or die;
open OUT18,">chr18trialS.out" or die;
open OUT19,">chr19trialS.out" or die;
open OUT20,">chr20trialS.out" or die;
open OUT21,">chr21trialS.out" or die;
open OUT22,">chr22trialS.out" or die;
open OUT23,">chrXtrialS.out" or die;
open OUT24,">chrYtrialS.out" or die;

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
	
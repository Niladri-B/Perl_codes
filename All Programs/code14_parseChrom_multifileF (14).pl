use strict;
use warnings;

#Code to parsing out LSD1 START & END Co-ordinates chromosome wise from 1000 files

#Open files
for(my $i = 1; $i <= 2; $i++){
	my $i = "Random_LSD1_trial_$i.bed";
	print $i;
	
	#Open file
	open my $fh, '<', $i or die $!;



	#Open output files
	open OUT1,">Peaks_$i=chr1.out" or die;
	open OUT2,">Peaks_$i=chr2.out" or die;
	open OUT3,">Peaks_$i=chr3.out" or die;
	open OUT4,">Peaks_$i=chr4.out" or die;
	open OUT5,">Peaks_$i=chr5.out" or die;
	open OUT6,">Peaks_$i=chr6.out" or die;
	open OUT7,">Peaks_$i=chr7.out" or die;
	open OUT8,">Peaks_$i=chr8.out" or die;
	open OUT9,">Peaks_$i=chr9.out" or die;
	open OUT10,">Peaks_$i=chr10.out" or die;
	open OUT11,">Peaks_$i=chr11.out" or die;
	open OUT12,">Peaks_$i=chr12.out" or die;
	open OUT13,">Peaks_$i=chr13.out" or die;
	open OUT14,">Peaks_$i=chr14.out" or die;
	open OUT15,">Peaks_$i=chr15.out" or die;
	open OUT16,">Peaks_$i=chr16.out" or die;
	open OUT17,">Peaks_$i=chr17.out" or die;
	open OUT18,">Peaks_$i=chr18.out" or die;
	open OUT19,">Peaks_$i=chr19.out" or die;
	open OUT20,">Peaks_$i=chr20.out" or die;
	open OUT21,">Peaks_$i=chr21.out" or die;
	open OUT22,">Peaks_$i=chr22.out" or die;
	open OUT23,">Peaks_$i=chr23.out" or die;
	open OUT24,">Peaks_$i=chr24.out" or die;

	while(<$fh>){
		my @val = split;
		if($val[0] eq 'chr1'){
			print OUT1 join ("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr2'){
			print OUT2 join("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr3'){
			print OUT3 join("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr4'){
			print OUT4 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr5'){
			print OUT5 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr6'){
			print OUT6 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr7'){
			print OUT7 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr8'){
			print OUT8 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr9'){
			print OUT9 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr10'){
			print OUT10 join("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr11'){
			print OUT11 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr12'){
			print OUT12 join("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr13'){
			print OUT13 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr14'){
			print OUT14 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr15'){
			print OUT15 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr16'){
			print OUT16 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr17'){
			print OUT17 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr18'){
			print OUT18 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr19'){
			print OUT19 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr20'){
			print OUT20 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr21'){
			print OUT21 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr22'){
			print OUT22 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chrX'){
			print OUT23 join("\t",@val,"\n");
	
		}else{
			print OUT24 join("\t",@val,"\n");
	 }
	
	
     }

}
	
#Exit	
exit;
	
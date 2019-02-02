use strict;
use warnings;

#Code to parsing out LSD1 START & END Co-ordinates chromosome wise from 1000 files

#Open files
#for(my $i = 1; $i <= 1000; $i++){
	my $i = "h3k4me1_with_G4_within_100bp.txt";
	print $i;
	
	#Open file
	open my $fh, '<', $i or die $!;



	#Open output files
	open OUT1,">h3k4me1_coordinates=chr1.out" or die;
	open OUT2,">h3k4me1_coordinates=chr2.out" or die;
	open OUT3,">h3k4me1_coordinates=chr3.out" or die;
	open OUT4,">h3k4me1_coordinates=chr4.out" or die;
	open OUT5,">h3k4me1_coordinates=chr5.out" or die;
	open OUT6,">h3k4me1_coordinates=chr6.out" or die;
	open OUT7,">h3k4me1_coordinates=chr7.out" or die;
	open OUT8,">h3k4me1_coordinates=chr8.out" or die;
	open OUT9,">h3k4me1_coordinates=chr9.out" or die;
	open OUT10,">h3k4me1_coordinates=chr10.out" or die;
	open OUT11,">h3k4me1_coordinates=chr11.out" or die;
	open OUT12,">h3k4me1_coordinates=chr12.out" or die;
	open OUT13,">h3k4me1_coordinates=chr13.out" or die;
	open OUT14,">h3k4me1_coordinates=chr14.out" or die;
	open OUT15,">h3k4me1_coordinates=chr15.out" or die;
	open OUT16,">h3k4me1_coordinates=chr16.out" or die;
	open OUT17,">h3k4me1_coordinates=chr17.out" or die;
	open OUT18,">h3k4me1_coordinates=chr18.out" or die;
	open OUT19,">h3k4me1_coordinates=chr19.out" or die;
	open OUT20,">h3k4me1_coordinates=chr20.out" or die;
	open OUT21,">h3k4me1_coordinates=chr21.out" or die;
	open OUT22,">h3k4me1_coordinates=chr22.out" or die;
	open OUT23,">h3k4me1_coordinates=chr23.out" or die;
	open OUT24,">h3k4me1_coordinates=chr24.out" or die;

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

#}
	
#Exit	
exit;
	
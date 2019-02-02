use strict;
use warnings;

#Code to concatenate all the output files into a single big file

#Initialize loop
#for (my $j = 1; $j <= 1000; $j++){
		my @BigVals;
		
	
		#Open output file	
		#open OUT, ">Random_LSD1_G4_distance_ALL_$j.out" or die $!;
		open OUT, ">LSD1_MidVal_all.out" or die $!;
		for(my $i =1; $i <=23; $i++){
		#Assign filename
		#my $file = "LSD1_nearest_g4_distance_trial_$j=chr$i.out";
		my $file = "MidVal_peak_chr$i.out";
		
		#Read in file
		open my $fh, '<', $file or die $!;
		
		
		while(<$fh>){
			chomp;
			my @val = split;
			#my $upstream = ($val[4] =~/\W/)? $val[4]: "No_Match";
			push @BigVals,$val[0],"\t",$val[1],"\n";#"\t",$val[2],"\t",$val[3],"\t",$val[4],"\n";
		}
	}
	print OUT @BigVals,"\n";
#}
			
#Exit
exit;
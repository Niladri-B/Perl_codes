use strict;
use warnings;

#Code to concatenate all the output files into a single big file

#Initialize loop
for (my $j = 1; $j <= 1000; $j++){
		my @BigVals;
		for(my $i =1; $i <=23; $i++){
	
		#Open output file	
		open OUT, ">Random_LSD1_G4_distance_ALL_$j.out" or die $!;
		
		#Assign filename
		my $file = "H3K4me2_g4_distance_trial_$j=chr$i.out";
		
		#Read in file
		open my $fh, '<', $file or die $!;
		
		
		while(<$fh>){
			chomp;
			my @val = split;
			my $upstream = ($val[4] =~/\W/)? $val[4]: "No Match";
			push @BigVals,$val[0],"\t",$val[1],"\t",$val[2],"\t",$val[3],"\t",$upstream,"\n";
		}
	}
	print OUT @BigVals,"\n";
}
			
#Exit
exit;
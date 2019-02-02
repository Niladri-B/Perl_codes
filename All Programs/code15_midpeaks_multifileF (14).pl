#usr/bin/perl

#Code to compute mid value of start and end co-ordinates 

use strict;
use warnings;

#Initialize loops
#for(my $j = 1; $j <= 1000; $j++){#Loop for file number
	for(my $i = 1; $i <= 24; $i++){#Loop for chromosome number within each file
		
	#Open Output file
	open OUT,">Mid_rest_exonsg4_chr$i.out" or die $!;
	
	#Assign filename	
	my $i = "REST_UniquePeaksExons_chr$i.out";
	print $i;
	
	#Open file
	open my $fh, '<', $i or die $!;

	#Output file must NOT be opened here otherwise you will get an output file like "Mid_Random_COREST_trial_$j=chrPeaks_Random_COREST_trial_$j.bed=chr$i.out"

	#Read in the data
	while (<$fh>){
		my @val = split;
		my  $midval = int (($val[1]+(($val[2]-$val[1])/2)+0.5));
		print OUT $val[0],"\t",$midval,"\n";
	}

    }
#}

#Exit
exit;

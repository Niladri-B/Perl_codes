#usr/bin/perl

#Code to compute mid value of start and end co-ordinates 

use strict;
use warnings;

#Open files
for(my $j = 1; $j <= 1000; $j++){ #$j = COREST trial run	#$i = Chromosome Number
	for(my $i = 1; $i <= 24; $i++){
		
	#Open Output file
	open OUT,">Mid_Random_H3K4me2_trial_$j=chr$i.out" or die $!;#Output file must be opened here otherwise $i becomes NOT JUST the NUMBER but ENTIRE FILENAME as specified below
		
	my $i = "Peaks_Random_H3K4me2_trial_$j.bed=chr$i.out";
	print $i;
	
	#Open file
	open my $fh, '<', $i or die $!;

	#Output file must NOT be present here otherwise you will get an output file like "Mid_Random_COREST_trial_$j=chrPeaks_Random_COREST_trial_$j.bed=chr$i.out"

	#Read in the data
	while (<$fh>){
		my @val = split;
		#say "@val";
	
		#my  $midval = int ($val[1]+(($val[2]-$val[1])/2));
		my  $midval = int (($val[1]+(($val[2]-$val[1])/2)+0.5));
	
		#say $val[0],"\t",$midval;
		print OUT $val[0],"\t",$midval,"\n";
	}

    }
}
exit;
































# my @arr = ('chr1', '10','20');
# my  $midval = $arr[1]+(($arr[2]-$arr[1])/2);
# say $midval;


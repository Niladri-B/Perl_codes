#usr/bin/perl

#Code to compute mid value of start and end co-ordinates 

use 5.014;
use warnings;

#Assign filename to variable
my $file = 'K562_COREST_peak_signal_coordinates.txt';

#Open file
open my $fh, '<', $file or die $!;
#Open output file
open OUT,">Mid&signal_K562_COREST.out" or die $!;

#Read in the data
while (<$fh>){
	my @val = split;
	#say "@val";
	
	#my  $midval = int ($val[1]+(($val[2]-$val[1])/2));
	my  $midval = int (($val[1]+(($val[2]-$val[1])/2)+0.5));
	
	#say $val[0],"\t",$midval;
	say OUT $val[0],"\t",$midval,"\t",$val[3];
}



exit;
































# my @arr = ('chr1', '10','20');
# my  $midval = $arr[1]+(($arr[2]-$arr[1])/2);
# say $midval;


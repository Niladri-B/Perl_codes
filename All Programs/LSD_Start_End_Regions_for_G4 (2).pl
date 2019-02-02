use 5.014;
use warnings;

#Assign file name
my $file = 'LSD_combined_MidVals.txt';

#Open file
open my $fh, '<', $file or die $!;

#Open output file
open OUT, ">LSD_Start_End_Region_for_G4_40kb.out" or die $!;

#Read file
while(<$fh>){
	my @val = split;
	my $start = $val[1]-40000;#Modify to 10000
	my $end = $val[1]+40000;#Modify to 10000
	say OUT $val[0],"\t",$start,"\t",$end;
}

#Exit
exit;
use 5.014;
use warnings;

#Code to extract chr number (val2), -2kb upstream(val4/val5), TSS(val4), Strand(val3), Transcript(val1), Gene(val12) # NOTE: Excel refgene is edited and column order is changed compared to orginal

#Assign file name
my $file = 'refGene_Sorted_via_Excel.txt';

#Open file
open my $fh1, '<', $file or die $!;

#Open output file
open OUT, ">New_Input_$file" or die $!;

#Read in file
while(<$fh1>){
	my @val = split;
	if ($val[3] eq "-"){#If negative strand
		my $start = $val[5]-2000;
		my $end = $val[5]+2000;
		#say OUT join ("\t", $val[2],$start,$val[5],$val[3],$val[1],$val[12]);
		say OUT join ("\t", $val[2],$start,$end,$val[12]);
}else{
	my $start = $val[4]-2000;
	my $end = $val[4]+2000;
	#say OUT join ("\t",$val[2],$start,$val[4],$val[3],$val[1],$val[12]);
	say OUT join ("\t", $val[2],$start,$end,$val[12]);
}
}
##########################################################################################################################################################################################

#Assign new file containing output file
#my $file1 = "Parsed_$file";

#Open file
#open my $fh2, '<', $file1 or die $!;

#Open output file
#open OUT1, ">All_Genes_refGene.out" or die $!;

#Read in file
#while(<$fh2>){
#	my @val = split;
#	say OUT1 $val[5];
#}

#Exit
exit;
use 5.014;
use warnings;

#Code to extract LSD1 and chromosome info from All LSD1 Exon File

#Assign filename
my $file = "All_H3K4me1_in_Exons.out";

#Open filename
open my $fh, '<', $file or die $!;

#Open output
open OUT, ">Extracted_H3K4me1_in_all_Exons.out" or die $!;

#Read in file
while(<$fh>){
	chomp;
	my @val = split;
	if($val[3] eq 'NA'){
		next;
	}else{
		say OUT $val[0],"\t",$val[3];
			}
}

#Exit
exit;
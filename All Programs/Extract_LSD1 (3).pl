use 5.014;
use warnings;

#Code to extract COREST and chromosome info from All COREST Exon File

#Assign filename
my $file = "All_COREST_+-_10kb_TSS.out";

#Open filename
open my $fh, '<', $file or die $!;

#Open output
open OUT, ">Extracted_COREST_from_all_TSS.out" or die $!;

#Read in file
while(<$fh>){
	chomp;
	my @val = split;
	if($val[2] eq 'NA'){
		next;
	}else{
		say OUT $val[0],"\t",$val[2];
			}
}

#Exit
exit;
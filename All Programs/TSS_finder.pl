use 5.014;
use warnings;

#Program to extract TSS from refgene
#For + strand print $val[4]
#For - strand print $val[7]

#Assign filename
my $file = 'refgene2.txt';

#Open file
open my $fh, '<', $file or die $!;

#Open output file
#open OUT, ">Genome_Wide_TSS.out" or die $!;

#Open output files for parsing TSS strand wise
open OUT1, ">Genome_Wide_TSS_+_strand.out" or die $!;
open OUT2, ">Genome_Wide_TSS_-_strand.out" or die $!;

#Read in file
while(<$fh>){
	my @val = split;
	if($val[3] eq '+'){
		say OUT1 $val[1],"\t",$val[2],"\t",$val[3],"\t",$val[4];
	}elsif($val[3] eq '-'){
		say OUT2 $val[1],"\t",$val[2],"\t",$val[3],"\t",$val[7];
	}
}

#Exit
exit;
	
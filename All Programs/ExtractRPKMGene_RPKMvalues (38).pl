use 5.014;
use warnings;

#Code to parse out RPKM genes and RPKM values
#
#Can be basically used to parse out ANY tab delimited file

#Assign filename
my $file = '11007-K562-rep2-directional-RNA-Seq.final.rpkm';

#Open file
open my $fh, '<' , $file or die $!;

#Open output
open OUT, ">RPKM_genes2.out" or die $!;

#Read file
while(<$fh>){
	my @val = split;
	say OUT $val[1],"\t",$val[3];
}

#Exit
exit;
use 5.014;
use warnings;

#Get RPKM genes

open my $fh, '<', 'RPKM_genes2.out' or die $!;

open OUT, ">RPKM_genesonly.out" or die $!;

while(<$fh>){
	my @val = split;
	say OUT $val[0];
}

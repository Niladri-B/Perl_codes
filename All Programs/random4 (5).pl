use strict;
use warnings;
use List::Util qw/shuffle/;

#Code to shuffle sequence

#Assign filename
my $file = 'Galaxy35-[Extract_Genomic_DNA_on_data_15]intronLSD1.bed';
#my $file = 'bed_file_trial.bed';

#Open file
open my $fh, '<', $file or die $!;

#Open Output
open OUT, ">Shuffled$file" or die $!;

#Read in file
while(<$fh>){
	my @val = split;
	my @dna = split '',$val[3];
	my @mutant = shuffle(@dna);
	print OUT $val[0],"\t",$val[1],"\t",$val[2],"\t",@mutant,"\n";
}

#Exit
exit;
	
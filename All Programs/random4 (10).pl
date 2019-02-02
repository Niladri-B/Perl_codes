use strict;
use warnings;
use List::Util qw/shuffle/;

#Code to shuffle sequence

#Assign filename
#my $file = 'Galaxy13-[Extract_Genomic_DNA_on_data_12].bed';
my $file = 'bed_file_trial.bed';

#Open file
open my $fh, '<', $file or die $!;

#Open Output
#open OUT, ">Shuffled$file" or die $!;

#Read in file
while(<$fh>){
	my @val = split;
	my @dna = split '',$val[3];
	my $i = 5;#To create 5 shufflings for each line
	while($i){#5 mutants created for each sequence via while loop
	my @mutant = shuffle(@dna);
	print $val[0],"\t",$val[1],"\t",$val[2],"\t",@mutant,"\n";
	$i--;#While loops ends
}
}

#Exit
exit;
	
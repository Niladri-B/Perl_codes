use 5.014;
use warnings;

#Code to assign Chromosome no. to existing data

#Assign filename
my $file = 'S6chr1.out';

#Open file
open my $fh, '<', $file or die $!;
#Open output
open OUT ,">edited$file" or die;

#Read in file

while ( <$fh> ) {
	my @val = split;
	my $chr = 'chr1';
	#say $chr,"\t",$val[0],"\t",$val[1];
	say OUT $chr,"\t",$val[0],"\t",$val[1];
}


#Exit
exit;
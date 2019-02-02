use 5.014;
use warnings;

#Trial code to assign element to existing data

#Assign filename
my $file = 'S17prac.txt';

#Open file
open my $fh, '<', $file or die $!;
#Open output
open OUT ,">edited$file" or die;

#Read in file

while ( <$fh> ) {
	my @val = split;
	my $chr = 'chr17';
	say $chr,"\t",$val[0],"\t",$val[1];
	say OUT $chr,"\t",$val[0],"\t",$val[1];
}


#Exit
exit;
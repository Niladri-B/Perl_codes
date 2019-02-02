use 5.014;
use warnings;

#Code to parse out Alu elements strand wise

#Assign filename
my $file = 'Simple_repeats.txt';

#Open filename
open my $fh, '<', $file or die $!;

#Open output files
open OUT1 , ">+_$file" or die $!;
open OUT2 , ">-_$file" or die $!;

#Read in file
while(<$fh>){
	my @val = split;
	if ($val[9] eq '+'){
		say OUT1 join ("\t",@val);
	}elsif($val[9] eq '-'){
		say OUT2 join ("\t",@val);
	}
}
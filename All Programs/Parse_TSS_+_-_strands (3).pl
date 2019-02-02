use 5.014;
use warnings;

#Assign filename
my $file = 'LSD1chrXAOUT.out';

#Open file
open my $fh, '<', $file or die $!;

#Open output
open OUTa, ">+_TSS_$file" or die $!;
open OUTb, ">-_TSS_$file" or die $!;

#Read in file
while(<$fh>){
	my @val = split;
	if($val[5] eq '+') {
		say OUTa $val[0],"\t",$val[3];
	}elsif($val[5] eq '-'){
		say OUTb $val[0],"\t",$val[3];
	}
}
	
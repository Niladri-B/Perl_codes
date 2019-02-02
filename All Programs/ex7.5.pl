use 5.014;
use warnings;

#Assign filename
my $file = 'file_ch7.txt';

#Open file
open my $fh, '<', $file || die $!;

#Read in file
while(<$fh>){
	if(/(.)\g{-1}/){ # Modify to (\S) because (.) matches ANY character including spaces EXCEPT New Line. #You need a NON WHITESPACE character
		say $_;
	}
}

#Exit
exit;
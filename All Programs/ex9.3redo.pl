use 5.014;
use warnings;

#Retry

#Assign filename
my $file = "exercisefile.txt";

#Open filename
open my $fh, '<', $file or die $!;

#Open output file
open OUT, ">$file.out" or die $!;

#Read in file
while(<$fh>){
	s/fred/\t/ig;#NOTE: Use of placeholder string # This is imp otherwise fred->wilma->fred. So all become fred.
	s/wilma/Fred/ig;
	s/\t/Wilma/g;
	print OUT; #Here just default print will add new line because while is teratig over each line and printing # Hence no need to add extra /n # Hence no need to write SAY
}

#Exit
exit;

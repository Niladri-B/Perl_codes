use 5.014;
use warnings;

#Assign file
my $file = 'trial_file.txt';

#Open filename
open my $fh, '<' , $file || die $!;

#Open output file
open OUT, ">OUT_of_$file.out" || die $!;

#Read in file
while(<$fh>){
	chomp;
	my @val = split;
	if($val[3] <= 100){# Value of 1st bin
		print OUT"1\t";
		for (my $i = 9; $i > 0; $i --){
			print OUT "Aa\t";
		}
		
	}print OUT "\n";#Print newline to separate rows
	
}
			
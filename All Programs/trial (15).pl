use 5.014;
use warnings;

open OUT, ">TrialOutput.out" || die $!;
#Trial program to print a set number of zeroes

for (my $i = 10; $i > 0; $i --){ # For data in 11kb, put $i =10 # For data in 10kb, put $i = 9l
	print OUT "Aa\t";
}say OUT "1";# This gets printed in the 10th bin

#print OUT "\n";

my $i = 5;
print OUT "1\t";#If 1st bin contains value, then print 1\t before running the loop
while($i>0){
	print OUT "Aa\t";
	$i--;
}
print OUT "\n";# Print newline to separate rows
#Main problem
#
#How to print value in between a loop ie print 0 for 5 consequtive times, print 1 , print 0 again for 4 times so total of 10 values
#
#Soln: Write a loop to print zeroes which is 1 less than the positive value bin #Follow it up with a loop to print remaining number of zeroes
for (my $i = 4; $i > 0; $i --){ # For data in 5kb, put $i =4 
	print OUT "Aa\t";
}print OUT "1\t";
for (my $i = 5; $i > 0; $i --){
	print OUT "Aa\t";
}

#Exit
exit;
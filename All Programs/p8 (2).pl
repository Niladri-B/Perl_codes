use warnings;

print "Enter dna file to read = ";
$i = <>;
chomp $i;

open(DNA, $i) or die;

while(@dna = <DNA>){
	$dna = join('',@dna);
	$dna =~ s/^\s*//;
	
	@dna1 = split('\n',$dna);
	
	print "Your DNA sequence is = ", @dna1,"\n";
	print "Length of DNA sequence is = ", scalar @dna1, "\n";
	
	
		
		
}

exit;
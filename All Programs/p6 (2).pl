use warnings;

$dna = 'aaattggcc'; #direction is 5' -> 3'$dna;
$complement = $dna;

#to get its complement which also reads as 5' -> 3', we need to reverse the direction
#otherwise the dna will read as 3' -> 5'

$complement =~ tr/atgc/tacg/;
print "Here is your original dna strand = ", $dna, "\n";
print "Here is the complement strand in 3' -> 5' direction = ", $complement, "\n";

#this will print the complement in 5' -> 3' direction
$comp = reverse $complement ;

print "Here is the complement strand in 5' -> 3' direction = ", $comp;

exit;


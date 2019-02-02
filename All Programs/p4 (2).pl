use warnings;

$dna = 'aattggcc';
$dna = $compdna;
$revdna = reverse $dna;
$compdna =~ tr/acgt/tgca/;

print "Dna is $dna\n\n";
print "Reverse is $revdna\n\n";
print "Complement is $compdna \n\n";

exit;
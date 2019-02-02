use warnings;
#transcribe dna to rna
$dna = 'AATTTGGCC';
$rna = $dna;

$rna =~ s/T/U/g;

print "DNA is = ", $dna,"\n\n";
print "RNA is = ", $rna,"\t";

exit;
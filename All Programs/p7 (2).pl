use warnings;

#opens protein file by user prompt and displays total no. of amino acids
print "Please enter protein file to open = ";
$in = <>;
chomp $in;

open(PROTEIN, $in);

@protein = <PROTEIN>;

#convert to string and remove whitespace to get contiguos protein sequence
$protein = join('',@protein);
$protein =~ s/^\s*$//;

#explode string into array elements to be able to count total length of protein sequence

@protein2 = split('',$protein);

$lpro = scalar @protein2;

print "Length of protein sequence is = ",$lpro, "\t";

exit;
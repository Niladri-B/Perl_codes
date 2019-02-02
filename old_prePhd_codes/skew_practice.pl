use 5.014;
use warnings;

#$_ = "GTCGA";#example
#$_ = "CATGGGCATCGGCCATACGCC";#data in exercise break
#$_ = "GAGCCACCGCGATA";#input for exercise break
$_ = "TAAAGACTGCCGAGAGGCCAACACGAGTGCTAGAACGAGGGGCGTAAACGCGGGTCCGAT";

my @data = split "";#It is essential to denote whitespace with "", simply writing split won't do
# say $data[0];
# say $data[1];
# say $data[2];
# say $data[3];
# say $data[4],"\n\n\n";

my $g = 0;
my $c = 0; #these should be kept here # if inside while loop, they will reset $g,$c to 0 everytime thru the loop


my $i = 0;
my @skew;
push @skew, 0;

while ($data[$i]){
	say $data[$i];
	
	#last if $data[$i] > $#data; #Not needed

	
	if ($data[$i] eq "G"){
		say "G found";
		$g++;
	}elsif ($data[$i] eq "C"){
		say "C found";
		$c++;
	}
	my $gc_difference = $g - $c;
	push @skew, $gc_difference;
	$i++;#keepin it here is essential, otherwise if gets executed later and first G is missed
		
}

open OUT , ">Output_skew_finding_exercise_break.out" or die $!;
say OUT "@skew";
#Exit
exit;
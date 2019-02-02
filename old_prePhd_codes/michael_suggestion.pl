use 5.014;
use warnings;

$_ = "TFKQVAPGTEGLQV";#"IAQMLFYCKVATN";#"LEQN";#"NQEL";#"GAS";#"ABCDE"; 
my $string = $_.$_;
my $len = length $_;

#say $_;
say $string;

my $i = 0;

my @pep;
my @weight = qw/0/;
my $input_peptide_weight = subMass($_);
push @weight, $input_peptide_weight;


while($i < $len ) {
	say "I = $i";
	my $j = 1;# Reset $j back to 1 as otherwise it's value remains at 3 and the following loop exits	
	
	while ($j < $len ){
		print "J = $j\n";
	my $substr = substr $string, $i, $j;
	push @pep, $substr;
	my $weight = subMass ($substr);
	push @weight, $weight;
	#say $substr;
	$j++;
	
	}
	
	
	$i++;
}
	
	
say "@pep";
open OUT, ">Output_Theoretical_Spectrum.out" or die $!;
say OUT join "\t", sort {$a <=> $b } @weight;	



####################
#Subroutine
####################

sub subMass {
	
	my ($input) = @_;
	
	my @amino_acids = split "", $input;
	my $sum ;
	
	foreach (@amino_acids){
		
		if ($_ eq 'G'){
			$sum += 57;
		}elsif($_ eq 'A'){
			$sum += 71 ;
		}elsif($_ eq 'S'){
			$sum += 87;
		}elsif($_ eq 'P'){
			$sum += 97;
		}elsif($_ eq 'V'){
			$sum += 99;
		}elsif($_ eq 'T'){
			$sum += 101;
		}elsif($_ eq 'C'){
			$sum += 103;
		}elsif($_ eq 'I'){
			$sum += 113;
		}elsif($_ eq 'L'){
			$sum += 113;
		}elsif($_ eq 'N'){
			$sum += 114;
		}elsif($_ eq 'D'){
			$sum += 115;
		}elsif($_ eq 'K'){
			$sum += 128;
		}elsif($_ eq 'Q'){
			$sum += 128;
		}elsif($_ eq 'E'){
			$sum += 129;
		}elsif($_ eq 'M'){
			$sum += 131;
		}elsif($_ eq 'H'){
			$sum += 137;
		}elsif($_ eq 'F'){
			$sum += 147;
		}elsif($_ eq 'R'){
			$sum += 156;
		}elsif($_ eq 'Y'){
			$sum += 163;
		}elsif($_ eq 'W'){
			$sum += 186;
		}
	}
		
	return $sum;
	
	}
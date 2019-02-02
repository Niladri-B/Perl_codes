use 5.014;
use warnings;

#code to enter lsdpeak and pg4 data into hash with KEYS as the numerical values, VALUE as 1

#Assign filename
my $file1 = 'lsdpeakmid.txt';
my $file2 = 'pg4mid.txt';

#Open file
open my $fh1, '<', $file1 or die $!;
open my $fh2, '<', $file2 or die $!;

#Read in file linewise
my %hash1;
while(<$fh1>){
	
	my $key1 = (split)[1];
	$hash1{$key1} = 1;
	#say $val1[0],"\t",$val1[1];
	#say $key1;
}

print "\n\n";
	my %hash2;
	while(<$fh2>){
		my $key2 = (split)[1];
		#say $val2[0],"\t",$val2[1];
		$hash2{$key2} = 1;
		#say $key2;
	}

# say "First hash is : ", %hash1;
# say "Second hash is : ",%hash2;

foreach my $key1 (sort keys %hash1){
	
	foreach my $key2 (sort keys %hash2){
		
	say $key2-$key1;
	
	}

}
	

























# #Read file
# my @arr1 = <$fh1>;
# my @arr2 = <$fh2>;

# #Test if file is printing properly
# say @arr1,"\n";
# say @arr2;


#Exit
exit;

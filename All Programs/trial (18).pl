use 5.014;
use warnings;
#Extract signal given midpoint coordinate

#Assign filename

for (my $i = 1; $i <= 23; $i++){
my $file1 = "LSD1_within_CoREST_&REST_chr$i.out";
my $file2 = "MidVal_peak_chr$i.out";

#Open file
open my $fh1,'<', $file1 or die $!;
open my $fh2, '<', $file2 or die $!;

#Open output
open OUT, ">with_signals_$file1" or die $!;

my %h2;
while (<$fh2>){
	my ($key, $val) = (split) [1,2];
	$h2{$key} = $val;
}

while(<$fh1>){
	my @val = split;
	foreach my $key (keys %h2){
		if ($val[1] eq $key ) {
			say OUT join  ("\t", "chr$i", $key, $h2{$key});
		}
	}
}
}

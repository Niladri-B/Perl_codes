use 5.014;
use warnings;
#Extract signal given midpoint coordinate

#Assign filename

for (my $i = 1; $i <= 23; $i++){
my $file1 = "MidVal_peak_chr$i.out";
my $file2 = "Peak_Start_End_chr$i.out ";

#Open file
open my $fh1,'<', $file1 or die $!;
open my $fh2, '<', $file2 or die $!;

#Open output
open OUT, ">CoREST_peaks_with_LSD1_$file1" or die $!;

my %h2;
while (<$fh2>){
	my ($key, $val) = (split) [1,2];
	$h2{$key} = $val;
	#say  OUT $key, "\t",$h2{$key};
}

#Print hash
# while((my $k,my $v) = each %h2){
	# say OUT $k, "\t",$v;
# }

while(<$fh1>){
	 my @val = split;
	 foreach my $key (keys %h2){
		 if ($val[1] >= $key && $val[1] <= $h2{$key}) {
			 say OUT join  ("\t", "chr$i", $key, $h2{$key});#$val[1] contains LSD1 midpoint # If you want corest peaks, write $key, $h2{$key}
		}
	 }
 }
 }

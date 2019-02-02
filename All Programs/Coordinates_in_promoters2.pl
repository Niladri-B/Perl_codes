#Code to find PG4 coordinates in promoters

use 5.014;
use warnings;

#Assign filenames
my $file1 = '+_chr10_SA.txt' || die $!;#TSS
my $file2 = 'Midpg4chr10.out' || die $!;#G4

#Open files
open my $fh1, '<' , $file1 || die $!;
open my $fh2, '<' , $file2 || die $!;

#Open output
open OUT, ">G4_coordinates_promoters_2_$file1.out" || die $!;


#Read files
while(<$fh1>){
	chomp ;
	my %data1; #File containing TSS
	my ($key1, $val1) = (split) [1,3];
	$data1{$key1} = $val1;
	
}	
	
	 while(<$fh2>){
	 chomp ;
	 # my %data2; #File containing G4 coordinates
	 # my ($key2,$val2) = (split) [1,2];
	 # $data2{$val2} = $key2;
	 say $_;
	
	}
	
	






#Exit
exit;
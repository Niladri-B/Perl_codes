use 5.014;
use warnings;


#Input files
my $file1 = "Introns_Start_End_chr1.out";
my $file2 = "Midpg4chr1.out";

#Open files
open my $fh1, '<', $file1;
open my $fh2, '<', $file2;

#Open output files
open OUT1, ">Introns_with_g4_chr1.out" or die $!;
open OUT2, ">Introns_without_g4_chr1.out" or die $!;

#Read in files
my %introns;
while (<$fh1>){
	my ($key, $val) = (split) [1,2];
	$introns{$key}=$val;	
	}
	
my %g4_hash;
my $g4;	
while (<$fh2>){
	$g4 = (split) [1];
	$g4_hash{$g4} = undef;
}
	
foreach (keys %introns){
	 if ($g4 >> $_ && $g4 << $introns{$_}){
	 	say OUT1 $_,"\t",$introns{$_};
	 }else{
	 	say OUT2 $_, "\t", $introns{$_};
	 }
	
		
}
	

	
	
#Exit
exit;
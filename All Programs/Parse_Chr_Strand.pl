#Code to parse out + and - strand information
#$val[5] for chrY_SA/SB files
#$val[4] for all_PG4_UCSC_hg19.txt

use 5.014;
use warnings;

#Assign filename
my $file = 'all_PG4_UCSC_hg19.txt';

#Open file
open my $fh,'<', $file or die $!;

#Open outputfile
open OUT1, ">+_chrY_G4_end.out" or die $!;
open OUT2, ">-_chrY_G4_end.out" or die $!;

#Read in file data
while(<$fh>){
	chomp;
	my @val = split;
	if (($val[0] eq 'chrY') && ($val[4] eq '+')){
		say OUT1 join("\t",$val[0],$val[2]);
	}elsif(($val[0] eq 'chrY') && ($val[4] eq '-')){
		say OUT2 join("\t",$val[0],$val[2]);
	}
}

#Exit
exit;
		
	
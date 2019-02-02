#Code to parse out + and - strand information
#$val[5] for chr1_SA/SB files
#$val[4] for all_PG4_UCSC_hg19.txt

use 5.014;
use warnings;

#Assign filename
my $file = 'all_PG4_UCSC_hg19.txt';

#Open file
open my $fh,'<', $file || die $!;

#Open outputfile
open OUT1, ">+_chr1$file" || die $!;
open OUT2, ">-_chr1$file" || die $!;

#Read in file data
while(<$fh>){
	chomp;
	my @val = split;
	if (($val[0] eq 'chr1') && ($val[4] eq '+')){
		say OUT1 join("\t",@val);
	}elsif(($val[0] eq 'chr1') && ($val[4] eq '-')){
		say OUT2 join("\t",@val);
	}
}

#Exit
exit;
		
	
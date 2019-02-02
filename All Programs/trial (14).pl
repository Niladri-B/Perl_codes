use 5.014;
use warnings;

#Trial code

open OUT1, ">Trial_s.out" or die $!;
open OUT2, ">Trial_e.out" or die $!;

my @file_start;
my @file_end;
{
	open my $fh, '<', '+_chr1all_PG4_UCSC_hg19.txt' or die $!;#G4 file
	while(<$fh>){
		chomp;
		push @file_start, (split /\t/)[1];
		push @file_end, (split /\t/)[2];
	}
}

say OUT1 join ("\t",@file_start);
say OUT2 join ("\t",@file_end);


#Open histone file

#Exit
exit;
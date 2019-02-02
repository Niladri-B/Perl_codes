use 5.014;
use warnings;

#Trial code

open OUT1, ">Trial_s1.out" or die $!;
open OUT2, ">Trial_e1.out" or die $!;

my %file_s;
my %file_e;
{
	open my $fh, '<', '+_chr1all_PG4_UCSC_hg19.txt' or die $!;#G4 file
	while(<$fh>){
		chomp;
		# push @file_start, (split /\t/)[1];
		# push @file_end, (split /\t/)[2];
		my @val = split;
		my $k1 = $val[0];
		my $v1 = $val[1];
		my $k2 = $val[0];
		my $v2 = $val[2];
		
		push @{$file_s{$k1}},$v1;
		push @{$file_e{$k2}},$v2;
		
		
	}
}

say OUT1 join ("\t",%file_s);
say OUT2 join ("\t",%file_e);


#Open histone file

#Exit
exit;
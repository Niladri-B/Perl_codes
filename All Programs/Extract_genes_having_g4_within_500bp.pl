use 5.014;
use warnings;

my $file1 = "Mod_SA_new_TSS_+_-_500bp.txt";
my $file2 = "Unique_tss+-500bp_with_g4.out";

open my $fh1, '<', $file1 or die $!;
open my $fh2, '<', $file2 or die $!;

open OUT , ">Output_genes_with_g4_within_500bp_tss.out" or die $!;

my @g4_tss;
while(<$fh2>){
	my $start_coord = "";
	$start_coord = (split)[1];
	push @g4_tss, $start_coord;
}
#say OUT "@g4_tss";

my @new;
while(<$fh1>){
	my @val = split;
	foreach (@g4_tss){
		#say OUT join ("\t",@val) if $_ eq $val[3];
		say OUT join ("\t", $val[9]) if $_ eq $val[3];
	}
}

#Exit
exit;
		
	
use 5.014;
use warnings;

#Assign filename
my $file = 'TSS-10kb_chr24_mod.out';

#Open file
open my $fh, '<', $file or die $!;

#Open output
open OUT, ">Sorted$file.out" or die $!;#Output file template
	
	

	my @mid;#Initialize array to store midvalues, which will then be sorted in ascending order
	while (<$fh>){
		my @val = split;
	
		push @mid,$val[1];#Push the midvalues into @mid
	}
#print OUT sort @arr;

	@mid = sort { $a <=> $b } @mid;#Sort
	print OUT "chrY\t", join ("\nchrY\t",@mid);#"chr1\t" needs to be written as otherwise the 1st entry is not showing it # Also NOTE special join command which I made :)

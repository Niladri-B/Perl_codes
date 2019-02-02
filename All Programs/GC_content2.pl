use 5.014;
use warnings;

#Assign filename
my $file = 'GC_sample.txt';

#Open file
open my $fh, '<', $file or die $!;

#Read in file
my %hash;
my($key,$seq);
my @keys;
my @sequences;

while(<$fh>){
	
	if(/^>Rosalind_[0-9]*\n/){
		#say "Yes";
		#say $_;
		#push @keys, $_;
		my ($key) = $_;
		$hash{$key} = /^[ATGC]*/;
		
	}elsif(/^[ATGC]*/){
		#$hash{$key} = $_;
	}
}



# say @keys;
# say @sequences;
say   %hash;
#Exit
exit;
use 5.014;
use warnings;

#Testing functionality of input record separator : $/

#Assign filename
my $file = 'GC_sample.txt';

#Open file
open my $fh, '<', $file or die $!;

$/ = ">";
my @key;
my @values;

#Read in file
while(<$fh>){
	chomp;#Removes first instance of >
	#say $_;
	 if (/^Rosalind_[0-9]*\n/){
	  #say "Aaa";
	  push @key, $&;
	 }
	if(/([ATGC]*\n[ATGC]*)*/){
	 push @values, $& ;
	}
	
}

say @key;

say @values;

#Exit
exit;
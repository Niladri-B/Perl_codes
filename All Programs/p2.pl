#usr/bin/perl

#Trial code to subtract values from 2 hashes and mention upstream/downstream

use 5.014;
use warnings;

my %hash1 = (
	
	'chr1' => '1',
	'chr2' => '10',
	'chr3' => '20'
);

say %hash1;

my %hash2 =  (

	'chr1' => '5',
	'chr2' => '18',
	'chr3' => '13',
	);

print "\n";
say %hash2;

foreach my $key (keys %hash1) {
	my $value = $hash1{$key} - $hash2{$key};
	if ($value > 0) {
	say "Upstream :\t ", $value;
}else{
	say "Downstream :\t",$value;
}
}


#Exit
exit;
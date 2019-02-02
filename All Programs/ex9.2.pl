use 5.014;
use warnings;

my $i = $ARGV[0];

if (defined $i){
	open OUT, ">$i.out" or die $!;
}

while(<>){
	s/fred/Larry/i;#i is for case insensitive #g is for ALL instances 
	say OUT;
}
	
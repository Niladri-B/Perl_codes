use 5.014;
use warnings;

#This doesn't work

my $i = $ARGV[0];

if(defined $i){
	open OUT, ">$i-mod.out" or die $!;
}

while(<>){
	s/(fred).*(wilma)/Wilma.*Fred/ig;
	print OUT;
}

#Exit
exit;
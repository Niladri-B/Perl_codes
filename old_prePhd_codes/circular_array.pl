use 5.014;
use warnings;

#Implementing circular loop

my @arr = qw/A B C D/;#qw/A T G C/;
my $substr = substr $arr[0],0,1;
	say "Substr = $substr";

my $i = 0; say $i;

# for( my $i = 0; $i <= $#arr; $i++ ){	
	# unshift(@arr, pop(@arr));
	# say "@arr";
# }

say "#########################";
while($i <= $#arr ){
	unshift(@arr, pop(@arr) );
	say "@arr";
	
	my $x = 0;
	my $y = 1;
	my $z = 2;
	
		
	
	foreach (@arr){
		
		say "Element : $_";
		say "2 elements: $arr[$x]$arr[$y] " if exists $arr[$y];
		#say "3 elements: $arr[$x]$arr[$y]$arr[$z]" if exists $arr[$y] && $arr[$z];
		say "2 elements: ", join "", (0..$arr[2]);
		$x++;
		$y++;
	}
		
	
	
	
	$i++;
}
	

	


#Exit
exit;
use 5.014;
use warnings;

#my @elements = qw/A B C D E/;
my @elements = qw/100 110 120 130/;
#say "@elements";
my @expand; my @expand2;

my $i = 0;
my $j = 0;# this is implmntd in FOR loop
# while (@elements){
	
	
	 # push @expand, join "-", $elements[$i],$elements[$i+2];
	 # push @elements, $elements[$i];
	
	
	
	
	 # last if $#elements == 10;
	
	 # $i++;
#}


# for (my $i = 0; $i <= $#elements; $i++){
	# for (my $j = 0; $j <= $#elements; $j++){
		# push @expand, join "-", $elements[$i],$elements[$j];
	# }
# }

while ($i <= $#elements){
	say "I= $i \t=$elements[$i]";
	my $j = 0;# J needs to be here otherwise it is not incrementing # Because here it acts to reset value of j back to 0 once the j loop exits with j= 4 # if this is not here, j remains at 4 and only i loop gets executed
	while ($j <= $#elements){
		say "J = $j";
		push @expand, join "-", $elements[$i],$elements[$j];
		$j++;
	}
	$i++;
}


#say "@elements";
#say "@expand";

say "#"x50;

foreach (@expand){
	foreach my $val (@elements){
	push @expand, join "++", $_,$val;
	last if $#expand == 20;
}
}

say join "\n",@expand2;
#Exit
exit;
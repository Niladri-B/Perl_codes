use warnings;

#Practice to append stuff with subroutine (derived from eg 6.1)

$a = "I am ... ";

$longa = addto($a);

print $longa,"\n";

#########################

#Define
sub addto{
	
	my ($name) = @_; #$name can be anything, it just represents the nature of the data in @_
	
	print "Are you a male or female ? ";
	$i = <>;
	chomp $i;
	
	if ($i eq 'male'){
		print "\n\nWhat is your name sire? = ";
	}else{
		print "\n\nWhat is your name O Lady? = ";
	}
	
	$b =<>;
	chomp $b; 
	
	#$b = 'Niladri';
	
	$name .= $b;
	return $name;
	
}
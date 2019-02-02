use 5.014;
use warnings;

if ("Hello there, neighbour" =~ /\s(\w+),/) { # Not direct matching without string variable
	say "That actually matched '$&' which is \$& while \$1 is : '$1'";
	
	#$& Whole Pattern Match
	#$1 The pattern within ()
	
	say "The orginal string was :'$`$&$''";
}
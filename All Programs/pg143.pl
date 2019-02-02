use 5.014;
use warnings;

$_ = "Hello there, neighbour";

if (/\s([a-zA-Z]+),/) { # Remove the \ before (a-zA-Z) to make it work
	say "the word was $1";#Working now
}

if (/(\S+) (\S+), (\S+)/) {
	say "words were $1 $2 $3";
}

	

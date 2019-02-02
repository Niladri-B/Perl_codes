use 5.014;
use warnings;

$_ = 'brontosaurus  steak';#keep 2 spaces for regex to work without BBQ #Weird

if(/(?:bronto)?saurus (?:BBQ)? (steak|burger)/){
	say "Fred wants a $1";
}
use 5.014;
use warnings;

$^I = ".bak";

while(<>){
	print;
	if (eof){
		print "\n#";
	}
}

#Exit
exit;
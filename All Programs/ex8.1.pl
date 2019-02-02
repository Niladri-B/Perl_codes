use 5.014;
use warnings;

my $var ='beforematchafter';

if($var =~ /match/ ){
	say "Pattern matched : $`<$&>$'";
}else{
	say "Pattern did not match";
}



#Exit
exit;
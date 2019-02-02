use 5.014;
use warnings;

#Regex fun

$_ = 'I am a rockstar';
if(/([aA-zZ])\s([aA-zZ]+)\s([aA-zZ])\s([aA-zZ]+)/){
	say "It matched: '$1' '$2' '$3' '$4'"; #parentheses helps capture groups # back references helps in substitution for eg s/(regex/\1/;
}

#Exit
exit;
use 5.014;
use warnings;

my $names = 'Fred or Barney';
if( $names =~ m/(\w+) (?:and|or) (\w+)/ ) {
	say "I saw $1 and $2";
}


say "\nNext method utilizes a hash called \"%+\"\n";
#Syntax 
#(?<label>pattern_match)
##To Extract : $+{label} where + is the hash name and $ is string reference ie $hash{key}

if ($names =~ m/(?<name2>\w+) (?:and|or) (?<name1>\w+)/ ){
	say "I saw $+{name1} and $+{name2} ";
}
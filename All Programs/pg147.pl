use 5.014;
use warnings;

my $names = 'Fred Flintstone and Wilma Flintstone';

if ( $names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/ ){ #Utilization of Named back reference
	say "I saw the $+{last_name}s";# Notice how I add an 's' at end to denote Flintstones
}

say "\nNow the second approach\n";

if( $names =~ m/(?<last_name>\w+) and \w+ \k<last_name>/ ){#\k<label> instead of \g{label}
	say "I saw $+{last_name}";
}
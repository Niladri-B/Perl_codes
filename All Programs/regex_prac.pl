use 5.014;
use warnings;

#Practice code to test out regex 

@_ = qw/yabba dabba doo/;
say "@_";

$_ = "yabba dabba doo";
say $_;

#Regex always works with STRINGS
#So we will be using the string variable

if ( /abba/ ) {
	say "it matched\;";#can write as simply "it matched;"
	say "Pattern \"abba\" exists in \$_";
}

#Append \ to \ to get a real backslash
$_ = "a real \\ backslash";#NOTE: here $_ replaces earlier instance of $_
			  #Also: No need to declare 'my' for $_ or @_;
say $_;

exit;


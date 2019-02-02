use 5.014;
use warnings;

if ("Hello there , neighbour" =~ /\s(\w+)\s?,/p) {# Use /p modifier to subsitute $&, $`, $' with ${^MATCH},${^PREMATCH}, ${^POSTMATCH} respectively

	say "That actually matched '${^MATCH}'.";
	say "And the full sentence was : ${^PREMATCH}${^MATCH}${^POSTMATCH}"
}
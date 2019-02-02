use 5.014;
use warnings;

#Practice code to use m// in List context ie a list of items ie multiple items

$_ = "hello there neighbour";
say $_;

my($first, $second, $third) = /(\S+) (\S+) (\S+)/;#multiple matches #each match assigned to a specific variable
say $second," is my ",$third;
#OR
say "$second is my $third";

my $text = "Fred dropped a 5 ton granite block on Mr. Slate";
my @words = ($text =~ /([a-z]+)/ig);#Essential to keep $text # Anything else shows error of non declaration #Also we cannot directly assign to array as it shows error of assign to scalar @array
say "Result: @words\n";

my $data = "Barney Rubble Fred Flintstone Wilma Flintstone";
my %last_name = ($data =~ /(\w+)\s+(\w+)/g);
say %last_name;
say keys %last_name;
say values %last_name;
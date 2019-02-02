use 5.014;
use warnings;

#printf program
my @items = qw/wilma dino pebbles/;
my $format = "The items are:\n" . ("%10s\n" x @items);
#print "the format is >>$format<<\n";#debugging puposes
printf $format,@items;

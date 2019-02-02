use 5.014;
use warnings;

$_ = "green scaly dinosaur";
say $_;

#Interchange scaly and green
s/(\w+) (\w+)/$2 $1/;
say $_;

#Insert 'huge, ' at the beginning of the string
s/^/huge, /;
say $_;

#Remove ', green'
s/,.*en//;
say $_;

#Failed substitution
s/green/red/;
say $_;

#Insert before last word '\w+', the word before that with! '$`!'
s/\w+$/($`!) $&/;#$&= dinosaur
say $_;#When you say it, you get $`, $`! $&

#Substitute whitespace followed by a character(!) followed by 1 or more non word character with !+non word character
s/\s+(!\W+)/$1/;
say $_;

#Substitute huge with gigantic
s/huge/gigantic/;
say $_;

my $var = "fred flintstone";
say "Successfully replaced fred avec wilma" if($var =~ s/fred/wilma/);

#Use of global modifier ie s///g;
$_ = "home, sweet home!";
s/home/cave/;#Only 1st instance is changed
say $_;

my $var1 = "home, sweet home!";
$var =~ s/home/cave/g;#all instances get changed
say $var1;

$_ = "Input data\t ,may have   extra whitespace.";#Removing extra whitespace
say $_;
s/\s+/ /g;
say $_;

$_ = " Input data\t ,may have   extra whitespace.";#Removing leading whitespace
say $_;
s/^\s//;
say $_;

$_ = " Input data\t ,may have   extra whitespace. ";#Removing trailing whitespace
say $_;
s/\s$//;
say $_;

$_ = " Input data\t ,may have   extra whitespace.  ";#Removing extra,leading,training whitespace
say $_;
s/(^\s).*(\s+).*(\s$)/( )( )( )/g;
say "Last :", $_;#Did not work

$_ = " Input data\t ,may have   extra whitespace. ";#Removing leading and trailing whitespace
say $_;
s/(^\s|\s$)//;
say $_;

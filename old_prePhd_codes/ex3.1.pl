use 5.014;
use warnings;

print "Please enter data separated by newlines. When finished type Ctrl+Z if WINDOWS else Ctrl+D if UNIX";

my @in = <stdin>;
my @reverse = reverse @in;
print @reverse;

#Exit
exit;
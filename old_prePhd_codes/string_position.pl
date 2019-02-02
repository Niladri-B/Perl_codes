use 5.014;
use warnings;

$_ = 'GATATATGCATATACTT';#'ATGCGCATGC';#
my $length_input = length $_;

my $pattern = 'ATAT';
my $length_pattern = length $pattern;

say $length_input, "\t", $length_pattern;


my $i = 0;
my @posn =();

# if (/$pattern/){
	# say "$-[N]";
# }



 for ($i = 0; $i< $length_input; $i++){
	 my $substr = substr $_, $i, $length_pattern;
	 my $found = index $_, $substr,$i;
	 push @posn, $found if $substr =~ /$pattern/;
	}
	
#say "@posn";

#my %k_mer;

while ($i< $length_input){
	# #say "Aa";
	 my $substr = substr $_, $i, $length_pattern;
	 my $found = index  $_,$substr,$i;
	 #say "YABBA :$found";	
	  push @posn, $found if $substr =~ /$pattern/;
		
	 $i++
 }

 say "MEOW :@posn";

#Exit
exit;

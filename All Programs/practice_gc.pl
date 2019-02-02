use 5.014;
use warnings;
use List::Util qw/max/;

my $x = "Rosalind_1100 ATTCGCTGCTC Rosalind_1111 ATGTGTGCTGT Rosalind_54353 GATGCTGA";

my %hash = ($x =~ /(\w+)\s(\w+)/g);
my $keys = keys %hash;
my @gc_content;
my $gc_percent ;
#say %hash;
# say keys %hash;
# say values %hash;
#foreach my $keys (keys %hash){# makes loop run 9 times because 3 keys x 3 values
	foreach my $values (values %hash){
		#say $values;#Displays sequence
		my @seq = split "",$values;#Split into individual strings
		my ($a,$t,$g,$c) = 0;#Initialize count variables
		foreach (@seq){
			if(/A/){
				$a++;
			}elsif(/T/){
				$t++;
			}elsif(/G/){
				$g++;
			}elsif(/C/){
				$c++;
			}
			#say "A = $a, T = $t, G = $g, C = $c";# Don't keep it here as the remaining values are uninitialized because at a time only one letter is being read
		}
		#say "A = $a, T = $t, G = $g, C = $c"; #Can be put here no issues
		my $total = $a+$a+$g+$c;
		$gc_percent = (($g+$c)/$total)*100;
			
		say "Sequence = $values \n A = $a\n T = $t\n G = $g\n C = $c\n GC Content = $gc_percent\n";
		push @gc_content, $gc_percent;
		#say "Sequence = $values, GC Content = $gc_percent";
	}
	
	say "@gc_content";
	say max(@gc_content);
	
#}
use 5.014;
use warnings;
#Code for named capture usage

#Assign filename
my $file = 'file_ch7.txt';

#Open file
open my $fh, '<', $file or die $!;

#Read in file
while(<$fh>){
	chomp;
	# if(/\s?(\w+a)\b/){
		# say $&,"::::",$1; 
	# }
	if(/(?<name1>\s?(\w+a)\b)(?<name2>.{0,5})/){ #To use named capture, syntax: (?<LABEL>PATTERN_MATCH)
		say "1st Named capture :: [$+{name1}] and 2nd Named capture :: [$+{name2}]";#To display capture, syntax : $+{LABEL} where %+ is the hash and LABEL is KEY displaying PATTERN_MATCH as VALUE
	}
}
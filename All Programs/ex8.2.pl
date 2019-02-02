use 5.014;
use warnings;

#Assign filename
my $file = 'file_ch7.txt';

#Open filename
open my $fh, '<', $file or die $!;

#Read file
while (<$fh>){
	chomp;
	
	if (/\s?.*a\b/){#If you want any character before 'a' #If you want only word modify to \b\w*a\b
		say "($&)";#modify to $1 for ex 8.2.pl #Also note: To use $1 you MUST use PARENTHESES
	}
}

#Exit
exit;
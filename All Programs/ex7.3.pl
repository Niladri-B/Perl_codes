use 5.014;
use warnings;

#Assign filename
my $file = 'file_ch7.txt';

#Open file
open my $fh, '<', $file || die $!;

#Read in file
while(<$fh>){
	if(/\./){
		say $_;
	}
}

#Exit
exit;
use 5.014;
use warnings;

#Assign filename
my $file = 'file_ch7.txt';

#Open filename
open my $fh, '<', $file or die $!;

#Read in filename
while(<$fh>){
	if(/.+\s\z/){#Book answer is even simpler # Simply type : /\s\z/
		say "$_*";
	}
}
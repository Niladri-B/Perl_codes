use 5.014;
use warnings;

#Trial code to calculate values in bins

#Assign filename
my $file = 'dstrm1.txt';
say $file;
#Open file
open my $fh, '<', $file or die $!;

#Initialize count variables
my $count250 = 0;
my $count500 = 0;

#Read in file
while(<$fh>){
	
	if($_ <= 250){
		$count250++;
	}elsif($_ >250 && $_ <= 500){
		$count500++;
	}
}


say $count250;
say $count500;


#Exit
exit;
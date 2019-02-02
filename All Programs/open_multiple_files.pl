use 5.014;
use warnings;

#Trial code to open multiple files at once

#Open output file
open OUT, ">Dstrm_multiple_files.out" or die $!;

#Open files
for(my $i = 0; $i <= 1; $i++){
	my $i = "dstrm$i.txt";
	say $i;
	
	#Open file
	open my $fh, '<', $i or die $!;

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


	say $count250,"\t",$count500;
	say OUT $count250,"\t",$count500;
	#say $count500;

	
	
}
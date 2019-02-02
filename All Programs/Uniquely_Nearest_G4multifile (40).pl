use strict;
use warnings;

#Code to select uniquely nearest G4

#Intialize loop
for(my $i = 1; $i <= 1; $i++){

		#Assign filename
		my $file = "Random_LSD1_G4_distance_ALL_$i.out";

		#Open file
		open my $fh, '<', $file or die $!;

		#Open output file
		open OUT, ">Uniquely_Nearest_G4_LSD1_$i.out" or die $!;

		#Read in file
		while(<$fh>){
			my @val = split;
			if($val[3] eq "No Match"){
				next;
			}elsif($val[4] eq "No Match"){
				next;
			}elsif($val[3] eq "Yes"){
				print OUT join("\t",$val[0],$val[1],$val[2],"0"),"\n";
			}elsif($val[3]<abs $val[4]){
				print OUT join("\t",$val[0],$val[1],$val[2],$val[3]), "\n";
			}else{
				print OUT join("\t",$val[0],$val[1],$val[2],$val[4]),"\n";
			}
		}

}
#Exit
exit;
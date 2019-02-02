use strict;
use warnings;

#Code to select uniquely nearest G4

#Intialize loop
#for(my $i = 1; $i <= 1000; $i++){

		#Assign filename
		my $file = "All_REST_TSS_distance.out";
		#my $file = "Random_LSD1_G4_distance_ALL_$i.out";		

		#Open file
		open my $fh, '<', $file or die $!;

		#Open output file
		#open OUT, ">Uniquely_Nearest_G4_LSD1_$i.out" or die $!;
		 open OUT, ">Uniquely_Nearest_REST_TSS.out" or die $!;

		#Read in file
		while(<$fh>){
			my @val = split;
			if($val[3] eq "No_Match" && defined $val[4]){
				print OUT join("\t",$val[0],$val[1],$val[2],$val[4]), "\n";
			}elsif($val[2] eq "Yes"){
				print OUT join("\t",$val[0],$val[1],$val[2],"0"),"\n";
			}elsif($val[3]<abs $val[4] && $val[4] ne "No_Match"){
				 print OUT join("\t",$val[0],$val[1],$val[2],$val[3]), "\n";
			}elsif(defined $val[3] && $val[4] eq "No_match"){
				print OUT join("\t",$val[0],$val[1],$val[2],$val[3]), "\n";
			}else{
				print OUT join("\t",$val[0],$val[1],$val[2],$val[4]),"\n";
			}
		}

#}
#Exit
exit;
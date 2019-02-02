use 5.014;
use warnings;

#Code to select uniquely nearest G4

#Assign filename
my $file = "Nearest G4_in_LSD1_around_20kb_Introns.out";

#Open file
open my $fh, '<', $file or die $!;

#Open output file
open OUT, ">Uniquely_$file.out" or die $!;

#Read in file
while(<$fh>){
	my @val = split;
	if($val[3] eq "No Match"){
		next;
	}elsif($val[4] eq "No Match"){
		next;
	}elsif($val[3] eq "Yes"){
		say OUT join("\t",$val[0],$val[1],$val[2],"0");
	}elsif($val[3]<abs $val[4]){
		say OUT join("\t",$val[0],$val[1],$val[2],$val[3]);
	}else{
		say OUT join("\t",$val[0],$val[1],$val[2],$val[4]);
	}
}

#Exit
exit;
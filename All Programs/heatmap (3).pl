use 5.014;
use warnings;

#Trial code to make a grid for heat map

#Assign filename
my $file = 'LSD_combined_g4_dist.txt' || die $!;

#Open file
open my $fh, '<', $file || die $!;
#Open output file
open OUT,">heatmap_grid_ALL.out" || die $!;

#Read in filedata

while (<$fh>){
	chomp;
	my @val = split;
	#say $val[3],"\t",$val[4];
	if ($val[3] <= 1000){
	       	#say OUT "0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","  ","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
		say OUT "  ","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	
	}elsif($val[3] <= 2000){
		say OUT "  ","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 3000){
		say OUT "  ","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 4000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 5000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 6000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 7000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 8000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 9000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 10000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 11000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 12000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 13000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 14000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 15000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 16000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 17000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 18000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 19000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 20000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 21000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 22000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 23000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 24000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 25000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 26000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 27000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 28000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 29000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 30000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 31000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 32000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 33000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 34000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 35000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 36000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 37000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t"
	}elsif($val[3] <= 38000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t"
	}elsif($val[3] <= 39000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t"
	}elsif($val[3] <= 40000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t"
	}
}

#Exit
exit;
	
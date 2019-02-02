use 5.014;
use warnings;

#Code to make a grid for heat map
#Displays data upto 40kb ~37000 LSDs
#~6000LSDs have G4s >40kb so they are not in the output file

#Assign filename
my $file = 'LSD_-_strandNEAREST.txt' || die $!;

#Open file
open my $fh, '<', $file || die $!;
#Open output file
open OUT,">heatmap_grid_chr-_NEARESTG4.out" || die $!;

#Read in filedata

while (<$fh>){
	chomp;
	my @val = split;
	#say $val[3],"\t",$val[4];
	if ($val[0] <= 1000){
	       	#say OUT "0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","  ","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
		say OUT "  ","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	
	}elsif($val[0] >1000 && $val[0] <= 2000){
		say OUT "  ","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >2000 && $val[0] <= 3000){
		say OUT "  ","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >3000 && $val[0] <= 4000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >4000 && $val[0] <= 5000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >5000 && $val[0] <= 6000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >6000 && $val[0] <= 7000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >7000 && $val[0] <= 8000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >8000 && $val[0] <= 9000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >9000 && $val[0] <= 10000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >10000 && $val[0] <= 11000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >11000 && $val[0] <= 12000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >12000 && $val[0] <= 13000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >13000 && $val[0] <= 14000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >14000 && $val[0] <= 15000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >15000 && $val[0] <= 16000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >16000 && $val[0] <= 17000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >17000 && $val[0] <= 18000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >18000 && $val[0] <= 19000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >19000 && $val[0] <= 20000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >20000 && $val[0] <= 21000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >21000 && $val[0] <= 22000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >22000 && $val[0] <= 23000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >23000 && $val[0] <= 24000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >24000 && $val[0] <= 25000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >25000 && $val[0] <= 26000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >26000 && $val[0] <= 27000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >27000 && $val[0] <= 28000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >28000 && $val[0] <= 29000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >29000 && $val[0] <= 30000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >30000 && $val[0] <= 31000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >31000 && $val[0] <= 32000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >32000 && $val[0] <= 33000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >33000 && $val[0] <= 34000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >34000 && $val[0] <= 35000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >35000 && $val[0] <= 36000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >36000 && $val[0] <= 37000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t","0","\t"
	}elsif($val[0] >37000 && $val[0] <= 38000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t","0","\t"
	}elsif($val[0] >38000 && $val[0] <= 39000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t","0","\t"
	}elsif($val[0] >39000 && $val[0]<= 40000){
		say OUT "  ","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","0","\t","1","\t"
	}
}

#Exit
exit;
	
use 5.014;
use warnings;

use constant SAMPLE_SIZE = 40_000;
use constant BIN_SIZE = 1000;

#Trial code to make a grid for heat map

#Assign filename
my $file = 'heatmap_trial.txt' || die $!;

#Open file
open my $fh, '<', $file || die $!;
#Open output file
open OUT,">heatmap_grid.out" || die $!;

#Read in filedata
while(<$fh>){
	chomp;
	my @grid_dstrm;
	my @grid_ustrm;
	
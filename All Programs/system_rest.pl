use strict;
use warnings;

#Trial code to call another program
#system 'date';


for( my $i = 1; $i <= 1000; $i++){
#my $j=$i+1;
system("bedtools shuffle -i K562_REST_peak_coordinates.bed -g chromInfo_edited.txt > Random_REST_trial_$i.bed");
}

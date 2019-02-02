use strict;
use warnings;

#Code to call another program 1000 times


for( my $i = 1; $i <= 1000; $i++){
#my $j=$i+1;
system("bedtools shuffle -i LSD1_Peaks_TSS.out -g chromInfo_edited.txt > Random_LSD1_trial_$i.bed");
}

#Exit
exit;
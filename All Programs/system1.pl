use strict;
use warnings;

#Trial code to call another program
#system 'date';


for( my $i = 0; $i <= 1; $i++){
my $j=$i+1;
system ' bedtools shuffle -i LSD1_broadpeak.bed -g chromInfo_edited.txt > Random_LSD1_trial_$j.bed';
}
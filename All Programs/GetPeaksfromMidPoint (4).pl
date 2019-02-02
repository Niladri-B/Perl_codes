use 5.014;
use warnings;
#use autodie;

#Code to extract LSD1 peaks given LSD1 midpoints [THIS IS FOR BEDTOOLS INPUT]
open OUT, ">LSD1_UniquePeaksExons_chr23.out" or die $!;#Modify to desired output file

my @file2;
{
  open my $fh, '<', 'Unique_LSD1_Coordinates_Introns_chr23.out';#Modify to Midpg4chr*.out
  while (<$fh>) {
    chomp;
    push @file2, (split /\t/)[1];
  }
}

open my $fh, '<', 'LSD1_Mid&Peak__Start_End_chrX.out';#File with start co-ordinates viz the minimum positions

while (<$fh>) {
  chomp;
  my @fields = split /\t/;

  
  for my $val (@file2) {
    #last if $val > $fields[3];
    
    say OUT $fields[0],"\t",$fields[2],"\t",$fields[3] if $val == $fields[1];
    
  }
 






  
}

#pseudocode
#
#To find relative position of LSD1 peak from nearest G4 position
#
#for a given LSD1 peak => find nearest G4 ; Assign 0 for complete overlap (i.e $LSD1[index] = $G4[index] )
#
#for every $LSD[index] if $LSD[index] > 0, find 1st $G4[index] >0 
##
##
##
#if $LSD[index] == 0; print '-'
#if $LSD[index] >0, find FIRST $G4[index]


use 5.014;
use warnings;

#Assign filenames 
my $file1 = 'g4.txt';
my $file2 = 'a.txt';

#Open files
open my $fh1, '<', $file1 or die $!;
open my $fh2, '<', $file2 or die $!;

#Check if files being read properly
my @file1 = <$fh1>;
my @file2 = <$fh2>;

#Print the files
say @file1;
say @file2;

#Exit
exit;
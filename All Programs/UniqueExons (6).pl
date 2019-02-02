#use 5.014;
use warnings;

#Code to count unique peaks containing G4 within them

#Assign filename
my $file = "All_3UTR_Coordinates.txt";#This program is used twice # Once in beginning and once at end to extract unique 5utr etc and unique LSD1 respectively

#Open file
open my $fh, '<' , $file or die $!;

#Open output
open OUT, ">Unique_3UTR_Coordinates.out" or die $!;

#Read in file into array
my @data = <$fh>;


#say @data;

#Extract unique elements from array
my @unique = grep(!$seen{$_}++,@data);

print OUT @unique;

#Exit
exit;
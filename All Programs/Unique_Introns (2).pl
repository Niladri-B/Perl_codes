#use 5.014;
use warnings;

#Code to count unique peaks containing G4 within them

#Assign filename
my $file = "Introns_without_g4_chrAll.out";

#Open file
open my $fh, '<' , $file or die $!;

#Open output
open OUT, ">Unique_Introns_without_g4.out" or die $!;

#Read in file into array
my @data = <$fh>;


#say @data;

#Extract unique elements from array
my @unique = grep(!$seen{$_}++,@data);

print OUT @unique;

#Exit
exit;
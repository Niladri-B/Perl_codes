#use 5.014;
use warnings;

#Code to count unique peaks containing G4 within them

#Assign filename
my $file = "Input_for_extract_unique_tss+-500bp.out";

#Open file
open my $fh, '<' , $file or die $!;

#Open output
open OUT, ">Unique_tss+-500bp_with_g4.out" or die $!;

#Read in file into array
my @data = <$fh>;


#say @data;

#Extract unique elements from array
my @unique = grep(!$seen{$_}++,@data);

print OUT @unique;

#Exit
exit;
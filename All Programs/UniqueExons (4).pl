#use 5.014;
use warnings;

#Code to count unique peaks containing G4 within them

#Assign filename
my $file = "Extracted_REST_from_all_TSS.out";

#Open file
open my $fh, '<' , $file or die $!;

#Open output
open OUT, ">Unique_REST_in_all_TSS.out" or die $!;

#Read in file into array
my @data = <$fh>;


#say @data;

#Extract unique elements from array
my @unique = grep(!$seen{$_}++,@data);

print OUT @unique;

#Exit
exit;
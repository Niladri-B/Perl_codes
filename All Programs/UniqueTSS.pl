#use 5.014;
use warnings;

#Code to count unique peaks containing G4 within them

#Assign filename
my $file = "Genome_Wide_TSS_Sorted_with_Repeated_TSS.txt";

#Open file
open my $fh, '<' , $file or die $!;

#Open output
open OUT, ">Unique_TSS.out" or die $!;

#Read in file into array
my @data = <$fh>;


#say @data;

#Extract unique elements from array
my @unique = grep(!$seen{$_}++,@data);

print OUT @unique;

#Exit
exit;
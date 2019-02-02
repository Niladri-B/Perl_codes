#use 5.014;
use warnings;

#Code to count unique peaks containing G4 within them

#Assign filename
my $file = "gene_list_complex_WithoutG4.txt";

#Open file
open my $fh, '<' , $file or die $!;

#Open output
open OUT, ">Unique_Genes_with_LSD1_complex_withoutG4.out" or die $!;

#Read in file into array
my @data = <$fh>;


#say @data;

#Extract unique elements from array
my @unique = grep(!$seen{$_}++,@data);

print OUT @unique;

#Exit
exit;
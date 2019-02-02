use 5.014;
use warnings;

#Trial code to print out difference between exon end and exon start

#Assign filenames
my $file1 = "Exon_start_coordinates.out";
my $file2 = "Exon_end_coordinates.out";

#Open files
open my $fh1, '<', $file1 or die $!;
open my $fh2, '<', $file2 or die $!;

#Open output
open OUT, ">Output_exon_lengths.out" or die $!;

#Smash into arrays
my @a1 = <$fh1>;
my @a2 = <$fh2>; #We need to smash into arrays because order of elements is important, so we cannot use Hash <--- NOTE

#Loop and perform
my @diff = map {$a2[$_] - $a1[$_]} 1..$#a2;     #Map difference of each element from exon end from exon start # Use 1st element & not 0th element because 0th element = exon start and expn end header     
say OUT join ("\n",@diff);


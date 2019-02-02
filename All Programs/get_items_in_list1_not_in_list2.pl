use strict;
use warnings;
use List::Compare;

#Enter filenames
my $file1 = "RPKM_setB_genes.out";
my $file2 = "Common_LSD1_COREST_REST_H3K4me1_H3K4me2_B_genes.out";

#Open files
open my $fh1, '<', $file1 or die $!;
open my $fh2, '<', $file2 or die $!;

#Read files into arrays
my @a1 = <$fh1>;
my @a2 = <$fh2>;

#Create constructor
my $lc = List::Compare-> new(\@a1, \@a2);

#Get items in 1st list not found in 2nd list
my @first_only = $lc->get_unique;

#Print out
open OUT, ">Non_LSD1_complex_set_B_genes.out" or die $!;
print OUT @first_only;


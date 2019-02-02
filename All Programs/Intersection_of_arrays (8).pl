use strict;
use warnings;

use List::Compare;
#use Data::Dumper;

#Assign filenames
my $file1 = 'LSD1_+-500bp_A_genes.out';
my $file2 = 'COREST_+-500bp_A_genes.out';
my $file3 = 'REST_+-500bp_A_genes.out';
my $file4 = 'H3K4me1_+-500bp_A_genes.out';
my $file5 = 'H3K4me2_+-500bp_A_genes.out';
my $file6 =  'Output_genes_with_g4_within_500bp_tss.out';

#Open files
open my $fh1, '<', $file1 or die $!;
open my $fh2, '<', $file2 or die $!;
open my $fh3, '<', $file3 or die $!;
open my $fh4, '<', $file4 or die $!;
open my $fh5, '<', $file5 or die $!;
open my $fh6, '<', $file6 or die $!;

#Read in files into arrays
my @a1 = <$fh1>;
my @a2 = <$fh2>;
my @a3 = <$fh3>;
my @a4 = <$fh4>;
my @a5 = <$fh5>;
my @a6 = <$fh6>;

 # my @array1=('a','2','3','2');
 # my @array2=('1','2','3','2');

#Open output file
open OUT, ">Common_LSD1_COREST_REST_H3K4me1_H3K4me2_G4_+-500bp_A_genes.out" or die $!;


my $lc = List::Compare->new(\@a1, \@a2, \@a3, \@a4, \@a5, \@a6);

# Get those items which appear at least once in both lists (their intersection).
my @intersection = $lc->get_intersection;
    
#print Dumper \@intersection;
print OUT @intersection;
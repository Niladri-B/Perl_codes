use strict;
use warnings;

use List::Compare;
use Data::Dumper;

#Assign filenames
my $file1 = 'Unique_All_Genes_refGene.out';
my $file2 = 'RPKM_genesonly.out';
#my $file3 = 'REST_genes.txt';

#Open files
open my $fh1, '<', $file1 or die $!;
open my $fh2, '<', $file2 or die $!;
#open my $fh3, '<', $file3 or die $!;

#Read in files into arrays
my @a1 = <$fh1>;
my @a2 = <$fh2>;
#my @a3 = <$fh3>;

 # my @array1=('a','2','3','2');
 # my @array2=('1','2','3','2');

#Open output file
open OUT, ">Common_refGenes_AND_RPKM_genes.out" or die $!;


my $lc = List::Compare->new(\@a1, \@a2);

# Get those items which appear at least once in both lists (their intersection).
my @intersection = $lc->get_intersection;
    
#print Dumper \@intersection;
print OUT @intersection;
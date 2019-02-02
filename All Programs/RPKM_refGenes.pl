use 5.014;
use warnings;
#use autodie;

#Code to extract LSD1 peaks given LSD1 midpoints [THIS IS FOR BEDTOOLS INPUT]


  open OUT, ">RPKM_refGenes.out" or die $!;#Modify to desired output file

  my @file2;
  {
    open my $fh, '<', "Unique_All_Genes_refGene.out";#Modify to Midpg4chr*.out
    while (<$fh>) {
      chomp;
      push @file2, $_; #(split /\t/)[1];
    }
  }
#say OUT join ("\n",@file2);

   open my $fh, '<', "RPKM_genes2.out";#File with start co-ordinates viz the minimum positions

   while (<$fh>) {
    chomp;
    my @fields = split /\t/;

   for my $val (@file2) {
  #last if $val > $fields[3];
    
       say OUT $fields[0],"\t",$fields[1] if $val eq $fields[0];
       #say OUT $fields[0] if $val eq $fields[0];
    
    }
  } 


use 5.014;
use warnings;
#use autodie;

#Code to extract me1 genes given RPKM genes [THIS IS FOR BEDTOOLS INPUT]


  #open OUT, ">me1_COREST_REST_H3K4me1_H3K4me2_B_RPKM.out" or die $!;#Modify to desired output file
  open OUT, ">RPKM_me1_250bp_g4_A.out" or die $!;

  my @file2;
  {
    open my $fh, '<', "me1_A_250bp_g4_genes.out";#"Common_me1_COREST_REST_H3K4me1_H3K4me2_B_genes.out";#Modify to Midpg4chr*.out
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


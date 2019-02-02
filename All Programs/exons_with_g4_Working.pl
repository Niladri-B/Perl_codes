use 5.014;
use warnings;
#use autodie;


for (my $i = 1; $i <= 23; $i++){

open OUT1, ">Exons_with_g4_chr$i.out" or die $!;#Modify to desired output file
open OUT2, ">Exons_without_g4_chr$i.out" or die $!;

my @g4;#@file2 => @g4
{
  open my $fh, '<', "Midpg4chr$i.out" or die $!;#Modify to Midpg4chr*.out
  while (<$fh>) {
    chomp;
    push @g4, (split /\t/)[1];
  }
}

open my $fh, '<', "Exons_Start_End_chr$i.out";#File with start co-ordinates viz the minimum positions

while (<$fh>) {
  chomp;
  my @introns = split /\t/;#@fields => @introns

  my $min = $introns[1];
  my $max = $introns[2] ;

  my @introns_with_g4;#@values => @introns_with_g4
  for my $val (@g4) {
    last if $val > $max;
    push @introns_with_g4, $val if $val >= $min;
  }
  push @introns_with_g4, 'NA' unless @introns_with_g4;

  for my $val (@introns_with_g4) {
    
    if( $val =~ /\A[0-9]/){#\A beginning of string #^ won't work because it is "beginning of line" operator
    say OUT1 join("\t", @introns) ;
  }elsif( $val eq 'NA'){
    say OUT2 join("\t", @introns);
  }
  
    #$_ = '' for @fields;
  }
}

}



# while (<$fh>) {
  # chomp;
  # my @fields = split /\t/;

  # my $min = $fields[1];
  # my $max = $fields[3] + 2000;

  # for my $val (@file2) {
    # last if $val > $max;
    # if ($val >= $min) {
      # say OUT join("\t", @fields, $val);
      # $_ = '' for @fields;
    # }
  # }
# }
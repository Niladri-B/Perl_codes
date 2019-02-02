use strict;
use warnings;

use Data::Dump;

my $file1 =  'MidVal_peak_chr1.out';#'lsdpeakmid.txt';
my $file2 = 'Midpg4chr1.out';#'pg4mid.txt';

open OUT,">Borodin_g4_lsd_distance.out" or die $!;

my @boundaries = do {
  open my $fh, '<', $file2 or die $!;
  map { (split)[1] } <$fh>;
};

open my $fh, '<', $file1 or die $!;

while (my $line = <$fh>) {
  chomp $line;
  my @vals = split ' ', $line;
  my $val = $vals[-1];
  for my $i (1 .. $#boundaries) {
    if ($boundaries[$i] > $val) {
      print OUT join(' ', @vals, $boundaries[$i] - $val, $boundaries[$i-1] - $val), "\n";
      last;
    }
  }
}

#Borodin
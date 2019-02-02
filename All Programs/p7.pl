use strict;
use warnings;

use Data::Dump;

my $file1 = 'lsdpeakmid.txt';
my $file2 = 'pg4mid.txt';

my @boundaries = do {
  open my $fh, '<', $file2 or die $!;
  map { (split)[1] } <$fh>;
};

open my $fh, '<', $file1 or die $!;

LINE:
while (my $line = <$fh>) {
  chomp $line;
  my @vals = split ' ', $line;
  my $val = $vals[-1];
  for my $i (1 .. $#boundaries) {
    if ($boundaries[$i] > $val) {
      print join("\t", @vals, $boundaries[$i] - $val, $boundaries[$i-1] - $val), "\n";
      next LINE;
    }
  }
}

#Borodin
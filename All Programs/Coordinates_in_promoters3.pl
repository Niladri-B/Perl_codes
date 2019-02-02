use 5.014;
use warnings;
#use autodie;

open OUT, ">Borodin_output1.out" or die $!;#Modify to desired output file

my @file2;
{
  open my $fh, '<', 'LSD1_coordinates_promoters+_chr10_SA.txt.out';#Modify to Midpg4chr*.out
  while (<$fh>) {
    chomp;
    push @file2, (split /\t/)[1];
  }
}

open my $fh, '<', '+_chr10_SA.txt';

while (<$fh>) {
  chomp;
  my @fields = split /\t/;

  my $min = $fields[1];
  my $max = $fields[3] + 2000;

  my @values;
  for my $val (@file2) {
    last if $val > $max;
    push @values, $val if $val >= $min;
  }
  push @values, 'NA' unless @values;

  for my $val (@values) {
    say OUT join("\t", @fields, $val);
    $_ = '' for @fields;
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
use 5.014;
use warnings;

#Code to smash input a string

my $file = 'GC_sample.txt';

open my $fh,'<', $file or die $!;

my @data = <$fh>;
#say @data;

my $data = join "\n",@data;
say $data;
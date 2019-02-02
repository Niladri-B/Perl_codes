use 5.014;
use warnings;

my $file = "Thermotoga-petrophila_OriC.txt";
open my $fh, '<' , $file or die $!;

my @in = <$fh>;
say @in;

my $data = join "",@in;
say $data;

my @data = split "\n", $data;
say @data;

$_ = join "", @data;
say $_;
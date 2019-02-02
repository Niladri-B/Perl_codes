use 5.014;
use warnings;

#Trial code to compute GC content

#Assign filename
my $file = 'GC_Sample.txt';

#Open filename
open my $fh, '<', $file or die $!;

#Smash file into array

my @data = <$fh>;
say @data;
say $data[0];

foreach (@data){
	my @header;
	push @header, $data[0];

# $_ = 'atggcccccccccgg';
# my $g = tr/gG//;
# my $c = tr/cC//;
# say "G = $g \t C = $c";
# my $n = tr/aAgGcCtT//;
# my $gc = (($g+$c)/$n)*100;
# say "GC content = $gc ";

#Exit
exit;
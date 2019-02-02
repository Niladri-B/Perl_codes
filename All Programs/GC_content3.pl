use strict;

local $/ = "\n>";

#Assign filename
my $file = 'GC_sample.txt';

#Open file
open my $fh, '<', $file or die $!;


while( <$fh> ) {
    chomp;
    my( $label, $data ) = m[\A>?(.*?)\n(.*)$]sm;
    $data =~ tr[\n][]d;
    printf "%20s : %s\n", $label, $data;
}
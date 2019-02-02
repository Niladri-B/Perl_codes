use 5.014;
use warnings;

#Assign filename
my $file = 'hars.txt';

#Open filename
open my $fh, '<', $file or die $!;

#Open output
open OUT, ">hars_coordinates.out" or die $!;

#Read in file
while(<$fh>){
	my @arr = split /\t/, $_;
	next if $arr[0] eq "Name";
	next if $arr[3] eq "Last Band Structure";
	my @chr = split /:/, $arr[1];
	my @chr_coord = split /-/, $chr[1];
	say OUT join "\t", $arr[0], $chr[0], $chr_coord[0], $chr_coord[1];
}
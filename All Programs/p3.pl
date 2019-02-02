#usr/bin/perl

use 5.014;
use diagnostics;

#Code to find how far G4 start point is from LSD1 mid point ( from file2 to file1)

#Assign filenames
my $file1 = 'mid_small.txt';
my $file2 = 'pg4_small.txt';

#Open files
#open my $fh1,'<',$file1 or die $!;
open my $fh2,'<',$file2 or die $!;

#Open output files (purely for testing purposes)
#open OUT, ">$file2.out" or die $!;


#Read file data

my %data2;
{
  open my $fh2, '<', $file2 or die $!;

  while (<$fh2>) {
    my $key = $_ ; #Assign each row as key
    $data2{$key} = '1'; #Creat hash and assign value to key
  }
}
say  %data2;












# my %data2 ;
# {
	# open my $fh2,'<',$file2 or die $!;
	
	
	# while ( <$fh2> ){
		# my ($key, $val) = (split)[0,1]; #Very important to have (split) and not split
		# $data2{$key} = $val;
	# }
# say %data2;
# }



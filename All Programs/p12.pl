use strict;
use warnings;

#take in data
print "Please enter file name = ";
my $in = <>;
chomp $in;

#open data and output file
open(DATA,$in) or die;
#open OUT,">$in.OUTPUT";

#read in data
my @array = <DATA>;

print "\n\n",@array,"\n\n";

foreach my $line(@array){
	
	if ($line =~ /(chr[0-9])/){
	#push (my @array1,$line);
	#print  @array1;
	print $line;
	next;
}
}



exit;
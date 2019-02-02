use 5.014;
use warnings;

#Code to compute MidVal of chr wise PG4

#Assign filename
my $file = 'pg4chrY.out' ;

#Open file
open my $fh, '<', $file or die $!;

#Open output file
open OUT, ">Mid$file-Modified.out" or die $!;

#Read in the data
while (<$fh>){
	my @val = split;
	#say "@val";
	
	#my  $midval = int ($val[1]+(($val[2]-$val[1])/2));
	my  $midval = int (($val[1]+(($val[2]-$val[1])/2)+0.5));
	
	#say $val[0],"\t",$midval;
	say OUT $val[0],"\t",$midval,"\t","1";
}



exit;

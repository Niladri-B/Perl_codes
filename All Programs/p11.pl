#use strict;
use warnings;
use List::Util  qw(max);

#Code to assign multiple values to a key-value pair using HASHES
#
#To assign multiple values, use ['x','y',...] to define the various values associated with a particular key

my %hash = (
		'Niladri' => ['4.95','4.75','4.52','4.47'],
		'Abhijay' => ['4.30','4.44','4.29','3.99'],
		'Asafa' => ['3.92','3.85','3.72','3.75']
		);

my @keys = keys %hash;
print "The various sprinters are @keys\n\n";

#Now to get the list of values associated with each key
#Do the following

foreach $key(keys %hash){ #get the name of the players
	$name = $key; #assign name to $name #redundant step #but helps add clarity
	
	print "The various timings of $name are : "; #can use $key as well
	foreach $_(@{$hash{$name}}){ #NOTE: there is an @array comprising the values defined by the statement $hash{$name}}
		print $_,",";
	}
	
	print "\n";
	$max = max @{$hash{$name}};
	print "Maximum value is $max \n\n\n";
}


exit;
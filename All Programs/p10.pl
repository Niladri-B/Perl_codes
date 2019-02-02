use 5.014;
use warnings;

#Test script to concatenate arrays

#Assign filename
my $f1 = 'test1.txt';
my $f2 = 'test2.txt';

#Open
open my $fh1,'<', $f1 || die $!;
open my $fh2,'<', $f2 || die $!;

#Read into array
my @a1 = <$fh1>;
my @a2 = <$fh2>;
my @a3 = (@a1,@a2);

#Say 
say @a1;
say @a2;
say @a3;

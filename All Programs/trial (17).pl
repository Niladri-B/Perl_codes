use warnings;

print "Please enter file name = ";
$i = <>;
chomp $i;

open(FILE,$i) or die;

@data = <FILE>;

print "The data in the file is = \n",@data, "\n\n";
print "The number of elements in the file are = ", scalar @data,"\n\n"
;

exit;


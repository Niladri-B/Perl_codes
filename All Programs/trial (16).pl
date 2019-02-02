#use warnings;
use List::Util 'max';

print "Please enter file name = ";
$i = <>;
chomp $i;

open(FILE,$i) or die;

@data = <FILE>;

print "The data in the file is = \n",@data, "\n\n";
print "The number of elements in the file are = ", scalar @data,"\n\n";

#foreach element in @array
#store the element in a new array
#split the elements in the new array
#compute maximum value in each new array created

for($i =0; $i <= scalar @data; $i++){
	@array1 = $data[$i];
	print @array1;
	
	 $array1 = split ('',@array1);
	@array2 = join  ('',$array1);
	print "Array is : @array2";
}

exit;


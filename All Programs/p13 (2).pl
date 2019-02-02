#use warnings;
use List::Util qw(min max);

#Program to read file from within the code and parse out data
#through comma into keys and values
$file = 'LSD1_setA_G4promoterMOD.txt';
#$file = 'test1.data';
open I, '<', $file or die;


# while ($line = <I>){
	# chop $line;
	# #print $line;
	# push (@lines, $line);
# }
# 
# #print @lines;
# @lines = grep(!/^$/, @lines);
# foreach my $line(@lines){
	# my ($key, $val) = split /\s*,\s*/,$_,2;
	# $hash{$key} = $val;
# }

# while (my $line = <I>) {
    # chop $line;
    # print $line;
    # my ($name, $addr) = split /\s*,\s*/,$_,2;
    # $hash{$name} = $addr;
# }

chop (%hash = map { split /\s*,\s*/,$_,2 } grep (!/^$/,<I>));

print "$_ => $hash{$_}\n" for keys %hash;

# @keys = keys %hash;
# foreach $key(@keys){
	# print "The key values are : ",$key,"\n";
# }
# 
# print "\n\n\n";
# 
# @values = values %hash;
# foreach $value(@values){
	# print "The values are : ", $value,"\n";
# }
# 
# print "\n\n\n";
# print "The first array element in \@values array is : ", $values[0],"\n";
# print "The second array element in \@values array is : ", $values[1], "\n";
# 
# print "\n\n"; 
# 
# # $values_string = join('',@values);
# # print $values_string;
# # 
# # @values_array =
# 
# 
# 
 # 
  # foreach $value(@values){
	  # @array = $value;
	  # print "The new array is @array\n";
	  # # foreach $element(@array){
	 	 # # print "The elements in the array are : $element\n";
	        # 
	       # 
	        	# 
	        # 
	  # }
	  # 
	   # print "kachra", $array[0];
	 # # 
	 # # $array_split = split ('\t',@array);
	 # # print $array_split;
	 # 
	# # $array_split = split('',@array);
	# # @array_join = join ('',$array_split);
	# # 
	# #print "The second new array is : ",@array_join,"\n";
	# # foreach $array(@array){
	# # $max = max @array;
	# # print "Maximum value in this array is : ", $max,"\n";
# #}
# 
# 


exit;
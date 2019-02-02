@array = ('1 2 3', '4 5 6', '7 8 9');
#print @array;

for ($i = 0; $i < scalar@array; $i++){
	#print $array[$i];
	push(@array1, $array[$i]);
	
}
print @array1;

#The bottom approach also works

# foreach $element(@array){
	# push (@array1, $element);
# }
# 
# print @array1;
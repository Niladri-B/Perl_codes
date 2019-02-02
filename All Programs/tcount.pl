#!/usr/bin/perl-w

#test program for counting unique id

#Input filename
print "Please enter file name: ";
$name =<>;
chomp $name;

open OUT ,">.$name.OUTPUT";

open(FASTA,$name) or die;

@data =<FASTA>;
# print "Full data: @data\n\n";
# print "1st element : $data[0]\n";
# print "2nd element : $data[1]\n";
# print "3rd element : $data[2]\n";
# print "4th element : $data[3]\n";
# print "5th element : $data[4]\n";

$data = join('',@data); #Convert to string
#print "Dollar data is : $data";

@data2 = split('\n',$data); #Explode on newline into array elements

@unique = grep(!$seen{$_}++,@data2); #Extract unique elements from @data2
 #print "\n\n",@unique;

$unique = join('',@unique); #Convert to string
@uniqueid = split('',$unique); #explode string back into individual array elements. ##These 2 steps are important an program won't function without it
 print "\n\n\n\n",@uniqueid;
 
 
 $countid=0;
 
 foreach $id(@uniqueid){
 if($id eq "N"){
 ++$countid;
 }
 }
 
 print "\n\nNumber of transcripts is : $countid";
 print OUT "Number of unique transcripts is : $countid";
	
 
 



# 
# $i=0;
# while($data[$i]){
	# ++$i;
# }
# 
# print "\n\n",$i;
# 


exit;
use warnings;
#To open and read file from command line
#To use this type cmd at run, type e: to switch drive, use cd to come to Perl folder and type perl p5.pl
#Search for a motif if so desired

#Take filename
print 'Please enter file name = ';

$in = <>;
chomp $in;

#open file with filehandle
open (PROTEINFILE, $in) or die;

#open output file to write in
open OUTPUT, ">Output.txt" or die; #can write OUT simply instead of OUTPUT


#read from filehandle
@protein = <PROTEINFILE>;

#print protein
print @protein,"\n\n\n";

#protein file by defalut has newline so automatically a new line is generated to print each element, untill you give command to print reverse
print "Here is the first line of the protein = ", $protein[0],"\n";
print "Here is the second line of the protein = ", $protein[1],"\n";
print "Here is the third line of the protein = ", $protein[2],"\n\n";
print "Here is the protein in reverse = ", reverse @protein,"\n";
print "Here is the length of the protein ie no. of elements = ", scalar @protein,"\n\n";

($a,$b,$c) = @protein; #List context ie creating a list of array elements

print $a,"\n",$b,"\n",$c."\n\n\n\n";

#Motif searching

$protein = join('',@protein);
#-> convert to string and remove whitespace to obtain contiguous protein sequence
print "Do you want to perform motif searching? Answer yes or no = ";
$ans =  <>;
chomp $ans;
print OUTPUT $ans,"\n\n";

if($ans eq 'yes'){
	
	do{
		print "Enter motif to search = ";
		$motif =<>;
		chomp $motif;
	
			if($protein =~ /$motif/){
				print "Motif was found = $motif";
				print OUTPUT "Motif was found = $motif";
			}else{
				print "Sorry coudn't find it :( ";
			}
			
			#exit on empty user input
		}until ($motif =~ /^\s*$/);
}else{
	print "Ok! Tata bye bye!";
	print OUTPUT "Ok! Tata bye bye!"; #can write simple OUT instead of OUTPUT
		}


exit;
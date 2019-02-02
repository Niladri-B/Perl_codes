use 5.014;
use warnings;

#Trial code to open multiple files at once & compute dstrm values

#Open output file
open OUT, ">Dstrm_multiple_files1.out" or die $!;

#Open files
for(my $i = 0; $i <= 1; $i++){
	my $i = "dstrm$i.txt";
	say $i;
	
	#Open file
	open my $fh, '<', $i or die $!;

	#Initialize count variables
	my $count250 = 0;
	my $count500 = 0;

	#Read in file
	while(<$fh>){
		if(/^No\sMatch$/){#It is CRITICAl that No Match is the 1st Condition & we skipt to NEXT iteration of loop # Otherwise, it Perl treats literal string in numeric context as FALSE ie 0 and adds it in 0 to 250 bin
			next;#This can be confirmed by now writing any other literal string & changing range below to >=1
		}elsif($_ >=0 && $_ <= 250){
			$count250++;
		}elsif($_ >250 && $_ <= 500){
			$count500++;
		}
	}


	say $count250,"\t",$count500;
	say OUT $count250,"\t",$count500;
	#say $count500;

	
	
}
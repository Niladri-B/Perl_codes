use 5.014;
use warnings;

#Trial code to open multiple files at once & compute dstrm & ustrm values

#Open output file
open OUT, ">Dstrm_Ustrm_multiple_files.out" or die $!;

#Open files
for(my $i = 0; $i <= 1; $i++){
	my $i = "dstrm_ustrm_$i.txt";
	say $i;
	
	#Open file
	open my $fh, '<', $i or die $!;

	#Initialize count variables
	my $dcount250 = 0;
	my $dcount500 = 0;
	my $ucount250 = 0;
	my $ucount500 = 0;

	#Read in file
	while(<$fh>){
		my @val = split;
		if($val[0] eq "No_Match"){#It is CRITICAl that No Match is the 1st Condition & we skipt to NEXT iteration of loop # Otherwise, it Perl treats literal string in numeric context as FALSE ie 0 and adds it in 0 to 250 bin
			next;#This can be confirmed by now writing any other literal string & changing range below to >=1
		}elsif($val[0] >=0 &&  $val[0] <= 250){
			$dcount250++;
		}elsif($val[0] >250 && $val[0] <= 500){
			$dcount500++;
		}elsif($val[1] eq "No_match"){
			next;
		}elsif($val[1] >= 0 && $val[1] <= 250){
			say $val[1];
			$ucount250++;
		}elsif($val[1] > 250 && $val[1] <= 500){
			say $val[1];
			$ucount500++;
		}
	}


	say $ucount500,"\t",$ucount250; #,"\t",$dcount250,"\t",$dcount500;
	say OUT $ucount500,"\t",$ucount250,"\t",$dcount250,"\t",$dcount500;
	#say $count500;

	
	
}
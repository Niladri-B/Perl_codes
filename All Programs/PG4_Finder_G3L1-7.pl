print" \n----\*\* A Programme to find G-Quardruplex motif within the Input Sequence \*\*---\n\n\n"; 

print "Enter Chromosome Name file List: ";
chomp($Chr_Name=<STDIN>);
print "\n\nEnter Output File Name: ";
chomp($Output=<STDIN>);

open(OUT,">$Output") or die $!;


		open (CHRDATA , "$Chr_Name") or die "Sorry to open individual File\n";
		@DATA = <CHRDATA>;
		foreach $data (@DATA)
			{
			chomp($data);
			@arr = split (/\t/ , $data);
			
			$Chr_No = shift (@arr);
			$Start_Cord = shift (@arr);
			$End_Cord = shift (@arr);
			#$ID = shift (@arr);
			#$Peak_Start = shift (@arr);
			#$Gene_ID = shift (@arr);
			#$TSS_Ref = shift (@arr);
			$Sequence = shift (@arr);
		
		   while($Sequence=~/G{3}[ATGC]{1,7}G{3}[ATGC]{1,7}G{3}[ATGC]{1,7}G{3}/ig)
	                 {
					   $tempmotif=$&;
					   $End= pos $Sequence;
					   $Len = length $tempmotif;
					   $Start= $End-$Len;
					   $Cord_Start = $Start_Cord + $Start;
					   $Cord_End = $Cord_Start + $Len;
					   #print  "$Chr_No\t$Start_Cord\t$End_Cord\t$tempmotif\t$Cord_Start\t$Cord_End\t$Len\n";
					   print OUT "$Chr_No\t$Start_Cord\t$End_Cord\t$tempmotif\t$Cord_Start\t$Cord_End\t$Len\n";
				     my $Sequence='';
				     my $End=0;
				     my $Len=0;
				     my $Start=0;$tempmotf="";
					 }
	while($Sequence=~/C{3}[ATGC]{1,7}C{3}[ATGC]{1,7}C{3}[ATGC]{1,7}C{3}/ig)
	                 {
					   $tempmotif=$&;
					   $End= pos $Sequence;
					   $Len = length $tempmotif;
					   $Start= $End-$Len;
					   $Cord_Start = $Start_Cord + $Start;
					   $Cord_End = $Cord_Start + $Len;
					  
					   #print  "$Chr_No\t$Start_Cord\t$End_Cord\t$ID\t$tempmotif\t$Cord_Start\t$Cord_End\t$Len\n";
					   print OUT "$Chr_No\t$Start_Cord\t$End_Cord\t$ID\t$tempmotif\t$Cord_Start\t$Cord_End\t$Len\n";
				     my $Sequence='';
				     my $End=0;
				     my $Len=0;
				     my $Start=0;$tempmotf="";
					 }
			}
	


close(OUT);
close(CHRDATA);
exit;
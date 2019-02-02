use strict;
use warnings;

#Trial code to open multiple files at once & compute dstrm & ustrm values

#Open output file
open OUT, ">Ustrm_multiple_files.out" or die $!;

#Open files
for(my $i = 1; $i <= 1000; $i++){
	my $i = "Random_REST_G4_distance_ALL_$i.out";
	print $i;
	
	#Open file
	open my $fh, '<', $i or die $!;

	#Initialize count variables
	my $count250 = 0;
	my $count500 = 0;
	my $count750 = 0;
	my $count1000 = 0;
	my $count1250 = 0;
	my $count1500 = 0;
	my $count1750 = 0;
	my $count2000 = 0;
	my $count2250 = 0;
	my $count2500 = 0;
	my $count2750 = 0;
	my $count3000 = 0;
	my $count3250 = 0;
	my $count3500 = 0;
	my $count3750 = 0;
	my $count4000 = 0;
	my $count4250 = 0;
	my $count4500 = 0;
	my $count4750 = 0;
	my $count5000 = 0;
	my $count5250 = 0;
	my $count5500 = 0;
	my $count5750 = 0;
	my $count6000 = 0;
	my $count6250 = 0;
	my $count6500 = 0;
	my $count6750 = 0;
	my $count7000 = 0;
	my $count7250 = 0;
	my $count7500 = 0;
	my $count7750 = 0;
	my $count8000 = 0;
	my $count8250 = 0;
	my $count8500 = 0;
	my $count8750 = 0;
	my $count9000 = 0;
	my $count9250 = 0;
	my $count9500 = 0;
	my $count9750 = 0;
	my $count10000 = 0;
	my $count10000_plus = 0;
	
	#Read in file
	while(<$fh>){
		my @val = split;
		#say $val[4];
		if($val[4] eq "No_Match"){#It is CRITICAl that No Match is the 1st Condition & we skipt to NEXT iteration of loop # Otherwise, it Perl treats literal string in numeric context as FALSE ie 0 and adds it in 0 to 250 bin
			next;#This can be confirmed by now writing any other literal string & changing range below to >=1
		}elsif($val[4] =~ /\s/){
			next;
		}elsif($val[4] >=1 &&  $val[4] <= 250){
			$count250++;
		}elsif($val[4] >250 && $val[4] <= 500){
			$count500++;
		}elsif($val[4] >500 && $val[4] <= 750){
			$count750++;
		}elsif($val[4] >750 && $val[4] <= 1000){
			$count1000++;
		}elsif($val[4] > 1000 && $val[4] <= 1250){
			$count1250++;
		}elsif($val[4] > 1250 && $val[4] <= 1500){
			$count1500++;
		}elsif($val[4] > 1500 && $val[4] <= 1750){
			$count1750++;
		}elsif($val[4] > 1750 && $val[4] <= 2000){
			$count2000++;
		}elsif($val[4] > 2000 && $val[4] <= 2250){
			$count2250++;
		}elsif($val[4] > 2250 && $val[4] <= 2500){
			$count2500++;
		}elsif($val[4] > 2500 && $val[4] <= 2750){
			$count2750++;
		}elsif($val[4] > 2750 && $val[4] <= 3000){
			$count3000++;
		}elsif($val[4] > 3000 && $val[4] <= 3250){
			$count3250++;
		}elsif($val[4] > 3250 && $val[4] <= 3500){
			$count3500++;
		}elsif($val[4] > 3500 && $val[4] <= 3750){
			$count3750++;
		}elsif($val[4] > 3750 && $val[4] <= 4000){
			$count4000++;
		}elsif($val[4] > 4000 && $val[4] <= 4250){
			$count4250++;
		}elsif($val[4] > 4250 && $val[4] <= 4500){
			$count4500++;
		}elsif($val[4] > 4500 && $val[4] <= 4750){
			$count4750++;
		}elsif($val[4] > 4750 && $val[4] <= 5000){
			$count5000++;
		}elsif($val[4] > 5000 && $val[4] <= 5250){
			$count5250++;
		}elsif($val[4] > 5250 && $val[4] <= 5500){
			$count5500++;
		}elsif($val[4] > 5500 && $val[4] <= 5750){
			$count5750++;
		}elsif($val[4] > 5750 && $val[4] <= 6000){
			$count6000++;
		}elsif($val[4] > 6000 && $val[4] <= 6250){
			$count6250++;
		}elsif($val[4] > 6250 && $val[4] <= 6500){
			$count6500++;
		}elsif($val[4] > 6500 && $val[4] <= 6750){
			$count6750++;
		}elsif($val[4] > 6750 && $val[4] <= 7000){
			$count7000++;
		}elsif($val[4] > 7000 && $val[4] <= 7250){
			$count7250++;
		}elsif($val[4] > 7250 && $val[4] <= 7500){
			$count7500++;
		}elsif($val[4] > 7500 && $val[4] <= 7750){
			$count7750++;
		}elsif($val[4] > 7750 && $val[4] <= 8000){
			$count8000++;
		}elsif($val[4] > 8000 && $val[4] <= 8250){
			$count8250++;
		}elsif($val[4] > 8250 && $val[4] <= 8500){
			$count8500++;
		}elsif($val[4] > 8500 && $val[4] <= 8750){
			$count8750++;
		}elsif($val[4] > 8750 && $val[4] <= 9000){
			$count9000++;
		}elsif($val[4] > 9000 && $val[4] <= 9250){
			$count9250++;
		}elsif($val[4] > 9250 && $val[4] <= 9500){
			$count9500++;
		}elsif($val[4] > 9500 && $val[4] <= 9750){
			$count9750++;
		}elsif($val[4] > 9750 && $val[4] <= 10000){
			$count10000++;
		}elsif($val[4] > 10000 ){
			$count10000_plus++;
		}	
	}


	# say $ucount500,"\t",$ucount250; #,"\t",$dcount250,"\t",$dcount500;
	# say OUT $ucount500,"\t",$ucount250,"\t",$dcount250,"\t",$dcount500;
	#say $count500;
	#print OUT $count250,"\t",$count500,"\t",$count750,"\t",$count1000,"\t",$count1250,"\t",$count1500,"\t",$count1750,"\t",$count2000,"\t",$count2250,"\t",$count2500,"\t",$count2750,"\t",$count3000,"\t",$count3250,"\t",$count3500,"\t",$count3750,"\t",$count4000,"\t",$count4250,"\t",$count4500,"\t",$count4750,"\t",$count5000,"\t",$count5250,"\t",$count5500,"\t",$count5750,"\t",$count6000,"\t",$count6250,"\t",$count6500,"\t",$count6750,"\t",$count7000,"\t",$count7250,"\t",$count7500,"\t",$count7750,"\t",$count8000,"\t",$count8250,"\t",$count8500,"\t",$count8750,"\t",$count9000,"\t",$count9250,"\t",$count9500,"\t",$count9750,"\t",$count10000,"\n";
	print OUT $count10000	,"\t",	$count9750	,"\t",	$count9500	,"\t",	$count9250	,"\t",	$count9000	,"\t",	$count8750	,"\t",	$count8500	,"\t",	$count8250	,"\t",	$count8000	,"\t",	$count7750	,"\t",	$count7500	,"\t",	$count7250	,"\t",	$count7000	,"\t",	$count6750	,"\t",	$count6500	,"\t",	$count6250	,"\t",	$count6000	,"\t",	$count5750	,"\t",	$count5500	,"\t",	$count5250	,"\t",	$count5000	,"\t",	$count4750	,"\t",	$count4500	,"\t",	$count4250	,"\t",	$count4000	,"\t",	$count3750	,"\t",	$count3500	,"\t",	$count3250	,"\t",	$count3000	,"\t",	$count2750	,"\t",	$count2500	,"\t",	$count2250	,"\t",	$count2000	,"\t",	$count1750	,"\t",	$count1500	,"\t",	$count1250	,"\t",	$count1000	,"\t",	$count750	,"\t",	$count500	,"\t",	$count250,"\n";

	
}
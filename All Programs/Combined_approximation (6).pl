use strict;
use warnings;

#Code to parsing out LSD1 START & END Co-ordinates chromosome wise from 1000 files

#Open files
for(my $i = 1; $i <= 1; $i++){
	my $i = "total_pooled.segmented.broadPeak";
	print $i;
	
	#Open file
	open my $fh, '<', $i or die $!;



	#Open output files
	open OUT1,">Peaks_$i=chr1.out" or die;
	open OUT2,">Peaks_$i=chr2.out" or die;
	open OUT3,">Peaks_$i=chr3.out" or die;
	open OUT4,">Peaks_$i=chr4.out" or die;
	open OUT5,">Peaks_$i=chr5.out" or die;
	open OUT6,">Peaks_$i=chr6.out" or die;
	open OUT7,">Peaks_$i=chr7.out" or die;
	open OUT8,">Peaks_$i=chr8.out" or die;
	open OUT9,">Peaks_$i=chr9.out" or die;
	open OUT10,">Peaks_$i=chr10.out" or die;
	open OUT11,">Peaks_$i=chr11.out" or die;
	open OUT12,">Peaks_$i=chr12.out" or die;
	open OUT13,">Peaks_$i=chr13.out" or die;
	open OUT14,">Peaks_$i=chr14.out" or die;
	open OUT15,">Peaks_$i=chr15.out" or die;
	open OUT16,">Peaks_$i=chr16.out" or die;
	open OUT17,">Peaks_$i=chr17.out" or die;
	open OUT18,">Peaks_$i=chr18.out" or die;
	open OUT19,">Peaks_$i=chr19.out" or die;
	open OUT20,">Peaks_$i=chr20.out" or die;
	open OUT21,">Peaks_$i=chr21.out" or die;
	open OUT22,">Peaks_$i=chr22.out" or die;
	open OUT23,">Peaks_$i=chr23.out" or die;
	open OUT24,">Peaks_$i=chr24.out" or die;

	while(<$fh>){
		my @val = split;
		if($val[0] eq 'chr1'){
			print OUT1 join ("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr2'){
			print OUT2 join("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr3'){
			print OUT3 join("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr4'){
			print OUT4 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr5'){
			print OUT5 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr6'){
			print OUT6 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr7'){
			print OUT7 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr8'){
			print OUT8 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr9'){
			print OUT9 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr10'){
			print OUT10 join("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr11'){
			print OUT11 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr12'){
			print OUT12 join("\t",@val,"\n");
		
		}elsif($val[0] eq 'chr13'){
			print OUT13 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr14'){
			print OUT14 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr15'){
			print OUT15 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr16'){
			print OUT16 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr17'){
			print OUT17 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr18'){
			print OUT18 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr19'){
			print OUT19 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr20'){
			print OUT20 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr21'){
			print OUT21 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chr22'){
			print OUT22 join("\t",@val,"\n");
	
		}elsif($val[0] eq 'chrX'){
			print OUT23 join("\t",@val,"\n");
	
		}else{
			print OUT24 join("\t",@val,"\n");
	 }
	
	
     }

}
	
	
########################################################################################################################################################################################	
	
#Code 15 for Midpoint generation from Peaks

#Initialize loops
for(my $j = 1; $j <= 1; $j++){#Loop for file number
	for(my $i = 1; $i <= 24; $i++){#Loop for chromosome number within each file
		
	#Open Output file
	open OUT,">Mid_Random_LSD1_trial_$j=chr$i.out" or die $!;
	
	#Assign filename	
	my $i = "Peaks_total_pooled.segmented.broadPeak=chr$i.out";
	print $i;
	
	#Open file
	open my $fh, '<', $i or die $!;

	#Output file must NOT be opened here otherwise you will get an output file like "Mid_Random_COREST_trial_$j=chrPeaks_Random_COREST_trial_$j.bed=chr$i.out"

	#Read in the data
	while (<$fh>){
		my @val = split;
		my  $midval = int (($val[1]+(($val[2]-$val[1])/2)+0.5));
		print OUT $val[0],"\t",$midval,"\n";
	}

    }
}


########################################################################################################################################################################################		

#Code 16 for Sorting in midpoints in ascending order


#Initialize loop
for(my $j = 1; $j <= 1; $j++){ #Loop for file number
	for(my $i = 1; $i <= 24; $i++){#Loop for chromosome number

	my $file = "Mid_Random_LSD1_trial_$j=chr$i.out"; #Input file template

	open OUT, ">Sorted$file.out" or die $!;#Output file template
	open my $fh,'<', $file or die $!;
	

	my @mid;#Initialize array to store midvalues, which will then be sorted in ascending order
	while (<$fh>){
		my @val = split;
	
		push @mid,$val[1];#Push the midvalues into @mid
	}


	@mid = sort { $a <=> $b } @mid;#Sort
	print OUT "chr$i\t", join ("\nchr$i\t",@mid);#"chr1\t" needs to be written as otherwise the 1st entry is not showing it # Also NOTE special join command
	}
}



########################################################################################################################################################################################	

#Code 17 for comparing nearest upstream & downstream G4 # Requires G4 files from Midpg4chr1---Midpg4chr24.out

use List::Util qw(first);

#Initialize the loops
for(my $j = 1; $j <= 1; $j++){#Loop for file number
        for(my $i =1 ; $i <= 24; $i++){#Loop for chromosome & G4 file
        	
        	#Open output file
        	open OUT, ">LSD1_g4_distance_trial_$j=chr$i.out" or die $!;
        	
        	#Assign filenames
                my $file1 = "SortedMid_Random_LSD1_trial_$j=chr$i.out.out";
                my $file2 = "Midpg4chr$i.out";

		#Read in files
		open my $fh1,'<',$file1 or die $!;
		open my $fh2,'<',$file2 or die $!;

		

		my %h1;

		while(<$fh2>){
			chomp;
			my ($k,$v)=split(/\s+/);#split on whitespace
			push @{$h1{$k}}, $v;#push into array of values, $v
		}	
		close $fh2;

		while (<$fh1>){
			chomp;
			my ($k, $v)=split(/\s+/); #split on whitespace
			my $bef=first{$_ >= $v}@{$h1{$k}}; #first($_) greater value from hash greater than LSD1 $v value
			$bef=defined $bef?$bef-$v:"No_match"; #If value before ? TRUE, do stuff before :, ELSE do stuff after :
			my $aft=first{$_ <= $v}reverse @{$h1{$k}};#last smaller value
			$aft=defined $aft?$aft-$v:"No_match"; 
			my $str=sprintf("%-8s %-10d %-5s %-8s %-8s",$k, $v,$bef?"No":"Yes",$bef?$bef:"",$aft?$aft:""); #$v = number, hence %d used, others have strings as input hence %s is used
			print OUT $str,"\n"; #%-8s means Left Justified(throw values on left and put a space) by 8 space, %-10s ,means Left Justified decimal by 10 space
		}
		close $fh1;
		
		}
	}


########################################################################################################################################################################################	

#Code 18 for joining all 24 chromosome files of nearest G4


#Initialize loop
for (my $j = 1; $j <= 1; $j++){
		my @BigVals;
		for(my $i =1; $i <=23; $i++){
	
		#Open output file	
		open OUT, ">Random_LSD1_G4_distance_ALL_$j.out" or die $!;
		
		#Assign filename
		my $file = "LSD1_g4_distance_trial_$j=chr$i.out";
		
		#Read in file
		open my $fh, '<', $file or die $!;
		
		
		while(<$fh>){
			chomp;
			my @val = split;
			my $upstream = ($val[4] =~/\W/)? $val[4]: "No Match";
			push @BigVals,$val[0],"\t",$val[1],"\t",$val[2],"\t",$val[3],"\t",$upstream,"\n";
		}
	}
	print OUT @BigVals,"\n";
}
			

########################################################################################################################################################################################	

#Code 19 for Uniquely nearest G4

#Intialize loop
for(my $i = 1; $i <= 1; $i++){

		#Assign filename
		my $file = "Random_LSD1_G4_distance_ALL_$i.out";

		#Open file
		open my $fh, '<', $file or die $!;

		#Open output file
		open OUT, ">Uniquely_Nearest_G4_LSD1_$i.out" or die $!;

		#Read in file
		while(<$fh>){
			my @val = split;
			if($val[3] eq "No Match"){
				next;
			}elsif($val[4] eq "No Match"){
				next;
			}elsif($val[3] eq "Yes"){
				print OUT join("\t",$val[0],$val[1],$val[2],"0"),"\n";
			}elsif($val[3]<abs $val[4]){
				print OUT join("\t",$val[0],$val[1],$val[2],$val[3]), "\n";
			}else{
				print OUT join("\t",$val[0],$val[1],$val[2],$val[4]),"\n";
			}
		}

}

########################################################################################################################################################################################	

#Code 20 for downstream G4 frequency distribution


#Open output file[HERE: Because we want one consolidated file]
open OUT, ">Output_Dstrm_Consolidated.out" or die $!;


#Intialize loops
for(my $i = 1; $i <= 1; $i++){

#Assign filename
my $file = "Uniquely_Nearest_G4_LSD1_$i.out" ;

#Open file
open my $fh, '<', $file or die $!;


#Intialize count variables 
my $Dcount50;
my $Dcount100;
my $Dcount150;
my $Dcount200;
my $Dcount250;
my $Dcount300;
my $Dcount350;
my $Dcount400;
my $Dcount450;
my $Dcount500;
my $Dcount550;
my $Dcount600;
my $Dcount650;
my $Dcount700;
my $Dcount750;
my $Dcount800;
my $Dcount850;
my $Dcount900;
my $Dcount950;
my $Dcount1000;
my $Dcount1050;
my $Dcount1100;
my $Dcount1150;
my $Dcount1200;
my $Dcount1250;
my $Dcount1300;
my $Dcount1350;
my $Dcount1400;
my $Dcount1450;
my $Dcount1500;
my $Dcount1550;
my $Dcount1600;
my $Dcount1650;
my $Dcount1700;
my $Dcount1750;
my $Dcount1800;
my $Dcount1850;
my $Dcount1900;
my $Dcount1950;
my $Dcount2000;
my $Dcount2050;
my $Dcount2100;
my $Dcount2150;
my $Dcount2200;
my $Dcount2250;
my $Dcount2300;
my $Dcount2350;
my $Dcount2400;
my $Dcount2450;
my $Dcount2500;
my $Dcount2550;
my $Dcount2600;
my $Dcount2650;
my $Dcount2700;
my $Dcount2750;
my $Dcount2800;
my $Dcount2850;
my $Dcount2900;
my $Dcount2950;
my $Dcount3000;
my $Dcount3050;
my $Dcount3100;
my $Dcount3150;
my $Dcount3200;
my $Dcount3250;
my $Dcount3300;
my $Dcount3350;
my $Dcount3400;
my $Dcount3450;
my $Dcount3500;
my $Dcount3550;
my $Dcount3600;
my $Dcount3650;
my $Dcount3700;
my $Dcount3750;
my $Dcount3800;
my $Dcount3850;
my $Dcount3900;
my $Dcount3950;
my $Dcount4000;
my $Dcount4050;
my $Dcount4100;
my $Dcount4150;
my $Dcount4200;
my $Dcount4250;
my $Dcount4300;
my $Dcount4350;
my $Dcount4400;
my $Dcount4450;
my $Dcount4500;
my $Dcount4550;
my $Dcount4600;
my $Dcount4650;
my $Dcount4700;
my $Dcount4750;
my $Dcount4800;
my $Dcount4850;
my $Dcount4900;
my $Dcount4950;
my $Dcount5000;
my $Dcount5050;
my $Dcount5100;
my $Dcount5150;
my $Dcount5200;
my $Dcount5250;
my $Dcount5300;
my $Dcount5350;
my $Dcount5400;
my $Dcount5450;
my $Dcount5500;
my $Dcount5550;
my $Dcount5600;
my $Dcount5650;
my $Dcount5700;
my $Dcount5750;
my $Dcount5800;
my $Dcount5850;
my $Dcount5900;
my $Dcount5950;
my $Dcount6000;
my $Dcount6050;
my $Dcount6100;
my $Dcount6150;
my $Dcount6200;
my $Dcount6250;
my $Dcount6300;
my $Dcount6350;
my $Dcount6400;
my $Dcount6450;
my $Dcount6500;
my $Dcount6550;
my $Dcount6600;
my $Dcount6650;
my $Dcount6700;
my $Dcount6750;
my $Dcount6800;
my $Dcount6850;
my $Dcount6900;
my $Dcount6950;
my $Dcount7000;
my $Dcount7050;
my $Dcount7100;
my $Dcount7150;
my $Dcount7200;
my $Dcount7250;
my $Dcount7300;
my $Dcount7350;
my $Dcount7400;
my $Dcount7450;
my $Dcount7500;
my $Dcount7550;
my $Dcount7600;
my $Dcount7650;
my $Dcount7700;
my $Dcount7750;
my $Dcount7800;
my $Dcount7850;
my $Dcount7900;
my $Dcount7950;
my $Dcount8000;
my $Dcount8050;
my $Dcount8100;
my $Dcount8150;
my $Dcount8200;
my $Dcount8250;
my $Dcount8300;
my $Dcount8350;
my $Dcount8400;
my $Dcount8450;
my $Dcount8500;
my $Dcount8550;
my $Dcount8600;
my $Dcount8650;
my $Dcount8700;
my $Dcount8750;
my $Dcount8800;
my $Dcount8850;
my $Dcount8900;
my $Dcount8950;
my $Dcount9000;
my $Dcount9050;
my $Dcount9100;
my $Dcount9150;
my $Dcount9200;
my $Dcount9250;
my $Dcount9300;
my $Dcount9350;
my $Dcount9400;
my $Dcount9450;
my $Dcount9500;
my $Dcount9550;
my $Dcount9600;
my $Dcount9650;
my $Dcount9700;
my $Dcount9750;
my $Dcount9800;
my $Dcount9850;
my $Dcount9900;
my $Dcount9950;
my $Dcount10000;
my$Dcount1000plus;



#Read in file
while(<$fh>){
	my @val = split;
	if( $val[3] eq "No_match" or $val[3] eq "No" or $val[3] eq "Match"){
		next;
		
	}elsif($val[3] >= 0 && $val[3] <= 50){
		$Dcount50++;
	}elsif($val[3] > 50 && $val[3] <= 100){
		$Dcount100++;
	}elsif($val[3] > 100 && $val[3] <= 150){
		$Dcount150++;
	}elsif($val[3] > 150 && $val[3] <= 200){
		$Dcount200++;
	}elsif($val[3] > 200 && $val[3] <= 250){
		$Dcount250++;
	}elsif($val[3] > 250 && $val[3] <= 300){
		$Dcount300++;
	}elsif($val[3] > 300 && $val[3] <= 350){
		$Dcount350++;
	}elsif($val[3] > 350 && $val[3] <= 400){
		$Dcount400++;
	}elsif($val[3] > 400 && $val[3] <= 450){
		$Dcount450++;
	}elsif($val[3] > 450 && $val[3] <= 500){
		$Dcount500++;
	}elsif($val[3] > 500 && $val[3] <= 550){
		$Dcount550++;
	}elsif($val[3] > 550 && $val[3] <= 600){
		$Dcount600++;
	}elsif($val[3] > 600 && $val[3] <= 650){
		$Dcount650++;
	}elsif($val[3] > 650 && $val[3] <= 700){
		$Dcount700++;
	}elsif($val[3] > 700 && $val[3] <= 750){
		$Dcount750++;
	}elsif($val[3] > 750 && $val[3] <= 800){
		$Dcount800++;
	}elsif($val[3] > 800 && $val[3] <= 850){
		$Dcount850++;
	}elsif($val[3] > 850 && $val[3] <= 900){
		$Dcount900++;
	}elsif($val[3] > 900 && $val[3] <= 950){
		$Dcount950++;
	}elsif($val[3] > 950 && $val[3] <= 1000){
		$Dcount1000++;
	}elsif($val[3] > 1000 && $val[3] <= 1050){
		$Dcount1050++;
	}elsif($val[3] > 1050 && $val[3] <= 1100){
		$Dcount1100++;
	}elsif($val[3] > 1100 && $val[3] <= 1150){
		$Dcount1150++;
	}elsif($val[3] > 1150 && $val[3] <= 1200){
		$Dcount1200++;
	}elsif($val[3] > 1200 && $val[3] <= 1250){
		$Dcount1250++;
	}elsif($val[3] > 1250 && $val[3] <= 1300){
		$Dcount1300++;
	}elsif($val[3] > 1300 && $val[3] <= 1350){
		$Dcount1350++;
	}elsif($val[3] > 1350 && $val[3] <= 1400){
		$Dcount1400++;
	}elsif($val[3] > 1400 && $val[3] <= 1450){
		$Dcount1450++;
	}elsif($val[3] > 1450 && $val[3] <= 1500){
		$Dcount1500++;
	}elsif($val[3] > 1500 && $val[3] <= 1550){
		$Dcount1550++;
	}elsif($val[3] > 1550 && $val[3] <= 1600){
		$Dcount1600++;
	}elsif($val[3] > 1600 && $val[3] <= 1650){
		$Dcount1650++;
	}elsif($val[3] > 1650 && $val[3] <= 1700){
		$Dcount1700++;
	}elsif($val[3] > 1700 && $val[3] <= 1750){
		$Dcount1750++;
	}elsif($val[3] > 1750 && $val[3] <= 1800){
		$Dcount1800++;
	}elsif($val[3] > 1800 && $val[3] <= 1850){
		$Dcount1850++;
	}elsif($val[3] > 1850 && $val[3] <= 1900){
		$Dcount1900++;
	}elsif($val[3] > 1900 && $val[3] <= 1950){
		$Dcount1950++;
	}elsif($val[3] > 1950 && $val[3] <= 2000){
		$Dcount2000++;
	}elsif($val[3] > 2000 && $val[3] <= 2050){
		$Dcount2050++;
	}elsif($val[3] > 2050 && $val[3] <= 2100){
		$Dcount2100++;
	}elsif($val[3] > 2100 && $val[3] <= 2150){
		$Dcount2150++;
	}elsif($val[3] > 2150 && $val[3] <= 2200){
		$Dcount2200++;
	}elsif($val[3] > 2200 && $val[3] <= 2250){
		$Dcount2250++;
	}elsif($val[3] > 2250 && $val[3] <= 2300){
		$Dcount2300++;
	}elsif($val[3] > 2300 && $val[3] <= 2350){
		$Dcount2350++;
	}elsif($val[3] > 2350 && $val[3] <= 2400){
		$Dcount2400++;
	}elsif($val[3] > 2400 && $val[3] <= 2450){
		$Dcount2450++;
	}elsif($val[3] > 2450 && $val[3] <= 2500){
		$Dcount2500++;
	}elsif($val[3] > 2500 && $val[3] <= 2550){
		$Dcount2550++;
	}elsif($val[3] > 2550 && $val[3] <= 2600){
		$Dcount2600++;
	}elsif($val[3] > 2600 && $val[3] <= 2650){
		$Dcount2650++;
	}elsif($val[3] > 2650 && $val[3] <= 2700){
		$Dcount2700++;
	}elsif($val[3] > 2700 && $val[3] <= 2750){
		$Dcount2750++;
	}elsif($val[3] > 2750 && $val[3] <= 2800){
		$Dcount2800++;
	}elsif($val[3] > 2800 && $val[3] <= 2850){
		$Dcount2850++;
	}elsif($val[3] > 2850 && $val[3] <= 2900){
		$Dcount2900++;
	}elsif($val[3] > 2900 && $val[3] <= 2950){
		$Dcount2950++;
	}elsif($val[3] > 2950 && $val[3] <= 3000){
		$Dcount3000++;
	}elsif($val[3] > 3000 && $val[3] <= 3050){
		$Dcount3050++;
	}elsif($val[3] > 3050 && $val[3] <= 3100){
		$Dcount3100++;
	}elsif($val[3] > 3100 && $val[3] <= 3150){
		$Dcount3150++;
	}elsif($val[3] > 3150 && $val[3] <= 3200){
		$Dcount3200++;
	}elsif($val[3] > 3200 && $val[3] <= 3250){
		$Dcount3250++;
	}elsif($val[3] > 3250 && $val[3] <= 3300){
		$Dcount3300++;
	}elsif($val[3] > 3300 && $val[3] <= 3350){
		$Dcount3350++;
	}elsif($val[3] > 3350 && $val[3] <= 3400){
		$Dcount3400++;
	}elsif($val[3] > 3400 && $val[3] <= 3450){
		$Dcount3450++;		
	}elsif($val[3] > 3450 && $val[3] <= 3500){
		$Dcount3500++;
	}elsif($val[3] > 3500 && $val[3] <= 3550){
		$Dcount3550++;
	}elsif($val[3] > 3550 && $val[3] <= 3600){
		$Dcount3600++;
	}elsif($val[3] > 3600 && $val[3] <= 3650){
		$Dcount3650++;
	}elsif($val[3] > 3650 && $val[3] <= 3700){
		$Dcount3700++;
	}elsif($val[3] > 3700 && $val[3] <= 3750){
		$Dcount3750++;
	}elsif($val[3] > 3750 && $val[3] <= 3800){
		$Dcount3800++;
	}elsif($val[3] > 3800 && $val[3] <= 3850){
		$Dcount3850++;
	}elsif($val[3] > 3850 && $val[3] <= 3900){
		$Dcount3900++;
	}elsif($val[3] > 3900 && $val[3] <= 3950){
		$Dcount3950++;
	}elsif($val[3] > 3950 && $val[3] <= 4000){
		$Dcount4000++;
	}elsif($val[3] > 4000 && $val[3] <= 4050){
		$Dcount4050++;
	}elsif($val[3] > 4050 && $val[3] <= 4100){
		$Dcount4100++;
	}elsif($val[3] > 4100 && $val[3] <= 4150){
		$Dcount4150++;
	}elsif($val[3] > 4150 && $val[3] <= 4200){
		$Dcount4200++;
	}elsif($val[3] > 4200 && $val[3] <= 4250){
		$Dcount4250++;
	}elsif($val[3] > 4250 && $val[3] <= 4300){
		$Dcount4300++;
	}elsif($val[3] > 4300 && $val[3] <= 4350){
		$Dcount4350++;
	}elsif($val[3] > 4350 && $val[3] <= 4400){
		$Dcount4400++;
	}elsif($val[3] > 4400 && $val[3] <= 4450){
		$Dcount4450++;
	}elsif($val[3] > 4450 && $val[3] <= 4500){
		$Dcount4500++;
	}elsif($val[3] > 4500 && $val[3] <= 4550){
		$Dcount4550++;
	}elsif($val[3] > 4550 && $val[3] <= 4600){
		$Dcount4600++;
	}elsif($val[3] > 4600 && $val[3] <= 4650){
		$Dcount4650++;
	}elsif($val[3] > 4650 && $val[3] <= 4700){
		$Dcount4700++;
	}elsif($val[3] > 4700 && $val[3] <= 4750){
		$Dcount4750++;
	}elsif($val[3] > 4750 && $val[3] <= 4800){
		$Dcount4800++;
	}elsif($val[3] > 4800 && $val[3] <= 4850){
		$Dcount4850++;
	}elsif($val[3] > 4850 && $val[3] <= 4900){
		$Dcount4900++;
	}elsif($val[3] > 4900 && $val[3] <= 4950){
		$Dcount4950++;
	}elsif($val[3] > 4950 && $val[3] <= 5000){
		$Dcount5000++;
	}elsif($val[3] > 5000 && $val[3] <= 5050){
		$Dcount5050++;
	}elsif($val[3] > 5050 && $val[3] <= 5100){
		$Dcount5100++;
	}elsif($val[3] > 5100 && $val[3] <= 5150){
		$Dcount5150++;
	}elsif($val[3] > 5150 && $val[3] <= 5200){
		$Dcount5200++;
	}elsif($val[3] > 5200 && $val[3] <= 5250){
		$Dcount5250++;
	}elsif($val[3] > 5250 && $val[3] <= 5300){
		$Dcount5300++;
	}elsif($val[3] > 5300 && $val[3] <= 5350){
		$Dcount5350++;
	}elsif($val[3] > 5350 && $val[3] <= 5400){
		$Dcount5400++;
	}elsif($val[3] > 5400 && $val[3] <= 5450){
		$Dcount5450++;
	}elsif($val[3] > 5450 && $val[3] <= 5500){
		$Dcount5500++;
	}elsif($val[3] > 5500 && $val[3] <= 5550){
		$Dcount5550++;
	}elsif($val[3] > 5550 && $val[3] <= 5600){
		$Dcount5600++;
	}elsif($val[3] > 5600 && $val[3] <= 5650){
		$Dcount5650++;
	}elsif($val[3] > 5650 && $val[3] <= 5700){
		$Dcount5700++;
	}elsif($val[3] > 5700 && $val[3] <= 5750){
		$Dcount5750++;
	}elsif($val[3] > 5750 && $val[3] <= 5800){
		$Dcount5800++;
	}elsif($val[3] > 5800 && $val[3] <= 5850){
		$Dcount5850++;
	}elsif($val[3] > 5850 && $val[3] <= 5900){
		$Dcount5900++;
	}elsif($val[3] > 5900 && $val[3] <= 5950){
		$Dcount5950++;
	}elsif($val[3] > 5950 && $val[3] <= 6000){
		$Dcount6000++;
	}elsif($val[3] > 6000 && $val[3] <= 6050){
		$Dcount6050++;
	}elsif($val[3] > 6050 && $val[3] <= 6100){
		$Dcount6100++;
	}elsif($val[3] > 6100 && $val[3] <= 6150){
		$Dcount6150++;
	}elsif($val[3] > 6150 && $val[3] <= 6200){
		$Dcount6200++;
	}elsif($val[3] > 6200 && $val[3] <= 6250){
		$Dcount6250++;
	}elsif($val[3] > 6250 && $val[3] <= 6300){
		$Dcount6300++;
	}elsif($val[3] > 6300 && $val[3] <= 6350){
		$Dcount6350++;
	}elsif($val[3] > 6350 && $val[3] <= 6400){
		$Dcount6400++;
	}elsif($val[3] > 6400 && $val[3] <= 6450){
		$Dcount6450++;
	}elsif($val[3] > 6450 && $val[3] <= 6500){
		$Dcount6500++;
	}elsif($val[3] > 6500 && $val[3] <= 6550){
		$Dcount6550++;
	}elsif($val[3] > 6550 && $val[3] <= 6600){
		$Dcount6600++;
	}elsif($val[3] > 6600 && $val[3] <= 6650){
		$Dcount6650++;
	}elsif($val[3] > 6650 && $val[3] <= 6700){
		$Dcount6700++;
	}elsif($val[3] > 6700 && $val[3] <= 6750){
		$Dcount6750++;
	}elsif($val[3] > 6750 && $val[3] <= 6800){
		$Dcount6800++;
	}elsif($val[3] > 6800 && $val[3] <= 6850){
		$Dcount6850++;
	}elsif($val[3] > 6850 && $val[3] <= 6900){
		$Dcount6900++;
	}elsif($val[3] > 6900 && $val[3] <= 6950){
		$Dcount6950++;
	}elsif($val[3] > 6950 && $val[3] <= 7000){
		$Dcount7000++;
	}elsif($val[3] > 7000 && $val[3] <= 7050){
		$Dcount7050++;
	}elsif($val[3] > 7050 && $val[3] <= 7100){
		$Dcount7100++;
	}elsif($val[3] > 7100 && $val[3] <= 7150){
		$Dcount7150++;
	}elsif($val[3] > 7150 && $val[3] <= 7200){
		$Dcount7200++;
	}elsif($val[3] > 7200 && $val[3] <= 7250){
		$Dcount7250++;
	}elsif($val[3] > 7250 && $val[3] <= 7300){
		$Dcount7300++;
	}elsif($val[3] > 7300 && $val[3] <= 7350){
		$Dcount7350++;
	}elsif($val[3] > 7350 && $val[3] <= 7400){
		$Dcount7400++;
	}elsif($val[3] > 7400 && $val[3] <= 7450){
		$Dcount7450++;
	}elsif($val[3] > 7450 && $val[3] <= 7500){
		$Dcount7500++;
	}elsif($val[3] > 7500 && $val[3] <= 7550){
		$Dcount7550++;
	}elsif($val[3] > 7550 && $val[3] <= 7600){
		$Dcount7600++;
	}elsif($val[3] > 7600 && $val[3] <= 7650){
		$Dcount7650++;
	}elsif($val[3] > 7650 && $val[3] <= 7700){
		$Dcount7700++;
	}elsif($val[3] > 7700 && $val[3] <= 7750){
		$Dcount7750++;
	}elsif($val[3] > 7750 && $val[3] <= 7800){
		$Dcount7800++;
	}elsif($val[3] > 7800 && $val[3] <= 7850){
		$Dcount7850++;
	}elsif($val[3] > 7850 && $val[3] <= 7900){
		$Dcount7900++;		
	}elsif($val[3] > 7900 && $val[3] <= 7950){
		$Dcount7950++;		
	}elsif($val[3] > 7950 && $val[3] <= 8000){
		$Dcount8000++;
	}elsif($val[3] > 8000 && $val[3] <= 8050){
		$Dcount8050++;
	}elsif($val[3] > 8050 && $val[3] <= 8100){
		$Dcount8100++;
	}elsif($val[3] > 8100 && $val[3] <= 8150){
		$Dcount8150++;
	}elsif($val[3] > 8150 && $val[3] <= 8200){
		$Dcount8200++;
	}elsif($val[3] > 8200 && $val[3] <= 8250){
		$Dcount8250++;
	}elsif($val[3] > 8250 && $val[3] <= 8300){
		$Dcount8300++;
	}elsif($val[3] > 8300 && $val[3] <= 8350){
		$Dcount8350++;
	}elsif($val[3] > 8350 && $val[3] <= 8400){
		$Dcount8400++;
	}elsif($val[3] > 8400 && $val[3] <= 8450){
		$Dcount8450++;
	}elsif($val[3] > 8450 && $val[3] <= 8500){
		$Dcount8500++;
	}elsif($val[3] > 8500 && $val[3] <= 8550){
		$Dcount8550++;
	}elsif($val[3] > 8550 && $val[3] <= 8600){
		$Dcount8600++;
	}elsif($val[3] > 8600 && $val[3] <= 8650){
		$Dcount8650++;
	}elsif($val[3] > 8650 && $val[3] <= 8700){
		$Dcount8700++;
	}elsif($val[3] > 8700 && $val[3] <= 8750){
		$Dcount8750++;
	}elsif($val[3] > 8750 && $val[3] <= 8800){
		$Dcount8800++;
	}elsif($val[3] > 8800 && $val[3] <= 8850){
		$Dcount8850++;
	}elsif($val[3] > 8850 && $val[3] <= 8900){
		$Dcount8900++;
	}elsif($val[3] > 8900 && $val[3] <= 8950){
		$Dcount8950++;
	}elsif($val[3] > 8950 && $val[3] <= 9000){
		$Dcount9000++;
	}elsif($val[3] > 9000 && $val[3] <= 9050){
		$Dcount9050++;
	}elsif($val[3] > 9050 && $val[3] <= 9100){
		$Dcount9100++;
	}elsif($val[3] > 9100 && $val[3] <= 9150){
		$Dcount9150++;
	}elsif($val[3] > 9150 && $val[3] <= 9200){
		$Dcount9200++;
	}elsif($val[3] > 9200 && $val[3] <= 9250){
		$Dcount9250++;
	}elsif($val[3] > 9250 && $val[3] <= 9300){
		$Dcount9300++;
	}elsif($val[3] > 9300 && $val[3] <= 9350){
		$Dcount9350++;
	}elsif($val[3] > 9350 && $val[3] <= 9400){
		$Dcount9400++;
	}elsif($val[3] > 9400 && $val[3] <= 9450){
		$Dcount9450++;
	}elsif($val[3] > 9450 && $val[3] <= 9500){
		$Dcount9500++;
	}elsif($val[3] > 9500 && $val[3] <= 9550){
		$Dcount9550++;
	}elsif($val[3] > 9550 && $val[3] <= 9600){
		$Dcount9600++;
	}elsif($val[3] > 9600 && $val[3] <= 9650){
		$Dcount9650++;		
	}elsif($val[3] > 9650 && $val[3] <= 9700){
		$Dcount9700++;
	}elsif($val[3] > 9700 && $val[3] <= 9750){
		$Dcount9750++;
	}elsif($val[3] > 9750 && $val[3] <= 9800){
		$Dcount9800++;
	}elsif($val[3] > 9800 && $val[3] <= 9850){
		$Dcount9850++;
	}elsif($val[3] > 9850 && $val[3] <= 9900){
		$Dcount9900++;
	}elsif($val[3] > 9900 && $val[3] <= 9950){
		$Dcount9950++;
	}elsif($val[3] > 9950 && $val[3] <= 10000){
		$Dcount10000++;
	}elsif($val[3] > 10000 ){
		$Dcount1000plus++;
	}
}

print OUT $Dcount50,"\t",	$Dcount100,"\t",	$Dcount150,"\t",	$Dcount200,"\t",	$Dcount250,"\t",	$Dcount300,"\t",	$Dcount350,"\t",	$Dcount400,"\t",	$Dcount450,"\t",	$Dcount500,"\t",	$Dcount550,"\t",	$Dcount600,"\t",	$Dcount650,"\t",	$Dcount700,"\t",	$Dcount750,"\t",	$Dcount800,"\t",	$Dcount850,"\t",	$Dcount900,"\t",	$Dcount950,"\t",	$Dcount1000,"\t",	$Dcount1050,"\t",	$Dcount1100,"\t",	$Dcount1150,"\t",	$Dcount1200,"\t",	$Dcount1250,"\t",	$Dcount1300,"\t",	$Dcount1350,"\t",	$Dcount1400,"\t",	$Dcount1450,"\t",	$Dcount1500,"\t",	$Dcount1550,"\t",	$Dcount1600,"\t",	$Dcount1650,"\t",	$Dcount1700,"\t",	$Dcount1750,"\t",	$Dcount1800,"\t",	$Dcount1850,"\t",	$Dcount1900,"\t",	$Dcount1950,"\t",	$Dcount2000,"\t",	$Dcount2050,"\t",	$Dcount2100,"\t",	$Dcount2150,"\t",	$Dcount2200,"\t",	$Dcount2250,"\t",	$Dcount2300,"\t",	$Dcount2350,"\t",	$Dcount2400,"\t",	$Dcount2450,"\t",	$Dcount2500,"\t",	$Dcount2550,"\t",	$Dcount2600,"\t",	$Dcount2650,"\t",	$Dcount2700,"\t",	$Dcount2750,"\t",	$Dcount2800,"\t",	$Dcount2850,"\t",	$Dcount2900,"\t",	$Dcount2950,"\t",	$Dcount3000,"\t",	$Dcount3050,"\t",	$Dcount3100,"\t",	$Dcount3150,"\t",	$Dcount3200,"\t",	$Dcount3250,"\t",	$Dcount3300,"\t",	$Dcount3350,"\t",	$Dcount3400,"\t",	$Dcount3450,"\t",	$Dcount3500,"\t",	$Dcount3550,"\t",	$Dcount3600,"\t",	$Dcount3650,"\t",	$Dcount3700,"\t",	$Dcount3750,"\t",	$Dcount3800,"\t",	$Dcount3850,"\t",	$Dcount3900,"\t",	$Dcount3950,"\t",	$Dcount4000,"\t",	$Dcount4050,"\t",	$Dcount4100,"\t",	$Dcount4150,"\t",	$Dcount4200,"\t",	$Dcount4250,"\t",	$Dcount4300,"\t",	$Dcount4350,"\t",	$Dcount4400,"\t",	$Dcount4450,"\t",	$Dcount4500,"\t",	$Dcount4550,"\t",	$Dcount4600,"\t",	$Dcount4650,"\t",	$Dcount4700,"\t",	$Dcount4750,"\t",	$Dcount4800,"\t",	$Dcount4850,"\t",	$Dcount4900,"\t",	$Dcount4950,"\t",	$Dcount5000,"\t",	$Dcount5050,"\t",	$Dcount5100,"\t",	$Dcount5150,"\t",	$Dcount5200,"\t",	$Dcount5250,"\t",	$Dcount5300,"\t",	$Dcount5350,"\t",	$Dcount5400,"\t",	$Dcount5450,"\t",	$Dcount5500,"\t",	$Dcount5550,"\t",	$Dcount5600,"\t",	$Dcount5650,"\t",	$Dcount5700,"\t",	$Dcount5750,"\t",	$Dcount5800,"\t",	$Dcount5850,"\t",	$Dcount5900,"\t",	$Dcount5950,"\t",	$Dcount6000,"\t",	$Dcount6050,"\t",	$Dcount6100,"\t",	$Dcount6150,"\t",	$Dcount6200,"\t",	$Dcount6250,"\t",	$Dcount6300,"\t",	$Dcount6350,"\t",	$Dcount6400,"\t",	$Dcount6450,"\t",	$Dcount6500,"\t",	$Dcount6550,"\t",	$Dcount6600,"\t",	$Dcount6650,"\t",	$Dcount6700,"\t",	$Dcount6750,"\t",	$Dcount6800,"\t",	$Dcount6850,"\t",	$Dcount6900,"\t",	$Dcount6950,"\t",	$Dcount7000,"\t",	$Dcount7050,"\t",	$Dcount7100,"\t",	$Dcount7150,"\t",	$Dcount7200,"\t",	$Dcount7250,"\t",	$Dcount7300,"\t",	$Dcount7350,"\t",	$Dcount7400,"\t",	$Dcount7450,"\t",	$Dcount7500,"\t",	$Dcount7550,"\t",	$Dcount7600,"\t",	$Dcount7650,"\t",	$Dcount7700,"\t",	$Dcount7750,"\t",	$Dcount7800,"\t",	$Dcount7850,"\t",	$Dcount7900,"\t",	$Dcount7950,"\t",	$Dcount8000,"\t",	$Dcount8050,"\t",	$Dcount8100,"\t",	$Dcount8150,"\t",	$Dcount8200,"\t",	$Dcount8250,"\t",	$Dcount8300,"\t",	$Dcount8350,"\t",	$Dcount8400,"\t",	$Dcount8450,"\t",	$Dcount8500,"\t",	$Dcount8550,"\t",	$Dcount8600,"\t",	$Dcount8650,"\t",	$Dcount8700,"\t",	$Dcount8750,"\t",	$Dcount8800,"\t",	$Dcount8850,"\t",	$Dcount8900,"\t",	$Dcount8950,"\t",	$Dcount9000,"\t",	$Dcount9050,"\t",	$Dcount9100,"\t",	$Dcount9150,"\t",	$Dcount9200,"\t",	$Dcount9250,"\t",	$Dcount9300,"\t",	$Dcount9350,"\t",	$Dcount9400,"\t",	$Dcount9450,"\t",	$Dcount9500,"\t",	$Dcount9550,"\t",	$Dcount9600,"\t",	$Dcount9650,"\t",	$Dcount9700,"\t",	$Dcount9750,"\t",	$Dcount9800,"\t",	$Dcount9850,"\t",	$Dcount9900,"\t",	$Dcount9950,"\t",	$Dcount10000,"\n";                

}

########################################################################################################################################################################################		
	
#Code 21 for upstream G4 frequency distribution	


#Code to automatically generate frequencies in 50bp bins till 10kb

#Open output file
open OUT, ">Output_Upstrm_Consolidated.out" or die $!;

#Intialize loops
for(my $i = 1; $i <= 1; $i++){

#Assign filename
my $file = "Uniquely_Nearest_G4_LSD1_$i.out" ;

#Open file
open my $fh, '<', $file or die $!;




#Intialize count variables 

my $Ucount50;
my $Ucount100;
my $Ucount150;
my $Ucount200;
my $Ucount250;
my $Ucount300;
my $Ucount350;
my $Ucount400;
my $Ucount450;
my $Ucount500;
my $Ucount550;
my $Ucount600;
my $Ucount650;
my $Ucount700;
my $Ucount750;
my $Ucount800;
my $Ucount850;
my $Ucount900;
my $Ucount950;
my $Ucount1000;
my $Ucount1050;
my $Ucount1100;
my $Ucount1150;
my $Ucount1200;
my $Ucount1250;
my $Ucount1300;
my $Ucount1350;
my $Ucount1400;
my $Ucount1450;
my $Ucount1500;
my $Ucount1550;
my $Ucount1600;
my $Ucount1650;
my $Ucount1700;
my $Ucount1750;
my $Ucount1800;
my $Ucount1850;
my $Ucount1900;
my $Ucount1950;
my $Ucount2000;
my $Ucount2050;
my $Ucount2100;
my $Ucount2150;
my $Ucount2200;
my $Ucount2250;
my $Ucount2300;
my $Ucount2350;
my $Ucount2400;
my $Ucount2450;
my $Ucount2500;
my $Ucount2550;
my $Ucount2600;
my $Ucount2650;
my $Ucount2700;
my $Ucount2750;
my $Ucount2800;
my $Ucount2850;
my $Ucount2900;
my $Ucount2950;
my $Ucount3000;
my $Ucount3050;
my $Ucount3100;
my $Ucount3150;
my $Ucount3200;
my $Ucount3250;
my $Ucount3300;
my $Ucount3350;
my $Ucount3400;
my $Ucount3450;
my $Ucount3500;
my $Ucount3550;
my $Ucount3600;
my $Ucount3650;
my $Ucount3700;
my $Ucount3750;
my $Ucount3800;
my $Ucount3850;
my $Ucount3900;
my $Ucount3950;
my $Ucount4000;
my $Ucount4050;
my $Ucount4100;
my $Ucount4150;
my $Ucount4200;
my $Ucount4250;
my $Ucount4300;
my $Ucount4350;
my $Ucount4400;
my $Ucount4450;
my $Ucount4500;
my $Ucount4550;
my $Ucount4600;
my $Ucount4650;
my $Ucount4700;
my $Ucount4750;
my $Ucount4800;
my $Ucount4850;
my $Ucount4900;
my $Ucount4950;
my $Ucount5000;
my $Ucount5050;
my $Ucount5100;
my $Ucount5150;
my $Ucount5200;
my $Ucount5250;
my $Ucount5300;
my $Ucount5350;
my $Ucount5400;
my $Ucount5450;
my $Ucount5500;
my $Ucount5550;
my $Ucount5600;
my $Ucount5650;
my $Ucount5700;
my $Ucount5750;
my $Ucount5800;
my $Ucount5850;
my $Ucount5900;
my $Ucount5950;
my $Ucount6000;
my $Ucount6050;
my $Ucount6100;
my $Ucount6150;
my $Ucount6200;
my $Ucount6250;
my $Ucount6300;
my $Ucount6350;
my $Ucount6400;
my $Ucount6450;
my $Ucount6500;
my $Ucount6550;
my $Ucount6600;
my $Ucount6650;
my $Ucount6700;
my $Ucount6750;
my $Ucount6800;
my $Ucount6850;
my $Ucount6900;
my $Ucount6950;
my $Ucount7000;
my $Ucount7050;
my $Ucount7100;
my $Ucount7150;
my $Ucount7200;
my $Ucount7250;
my $Ucount7300;
my $Ucount7350;
my $Ucount7400;
my $Ucount7450;
my $Ucount7500;
my $Ucount7550;
my $Ucount7600;
my $Ucount7650;
my $Ucount7700;
my $Ucount7750;
my $Ucount7800;
my $Ucount7850;
my $Ucount7900;
my $Ucount7950;
my $Ucount8000;
my $Ucount8050;
my $Ucount8100;
my $Ucount8150;
my $Ucount8200;
my $Ucount8250;
my $Ucount8300;
my $Ucount8350;
my $Ucount8400;
my $Ucount8450;
my $Ucount8500;
my $Ucount8550;
my $Ucount8600;
my $Ucount8650;
my $Ucount8700;
my $Ucount8750;
my $Ucount8800;
my $Ucount8850;
my $Ucount8900;
my $Ucount8950;
my $Ucount9000;
my $Ucount9050;
my $Ucount9100;
my $Ucount9150;
my $Ucount9200;
my $Ucount9250;
my $Ucount9300;
my $Ucount9350;
my $Ucount9400;
my $Ucount9450;
my $Ucount9500;
my $Ucount9550;
my $Ucount9600;
my $Ucount9650;
my $Ucount9700;
my $Ucount9750;
my $Ucount9800;
my $Ucount9850;
my $Ucount9900;
my $Ucount9950;
my $Ucount10000;
my $Ucount10000plus;

#Read in file
while(<$fh>){
	my @val = split;
	if( $val[3] eq "No_Match"){
		next;
	
	}elsif(  $val[3] < 0 &&   $val[3] >= - 50){
		$Ucount50++;
	}elsif( $val[3] < - 50 &&  $val[3] >= - 100){
		$Ucount100++;
	}elsif( $val[3] < -100 &&  $val[3] >= - 150){
		$Ucount150++;
	}elsif( $val[3] < -150 &&  $val[3] >= - 200){
		$Ucount200++;
	}elsif( $val[3] < -200 &&  $val[3] >= - 250){
		$Ucount250++;
	}elsif( $val[3] < -250 &&  $val[3] >= - 300){
		$Ucount300++;
	}elsif( $val[3] <  -300 &&  $val[3] >= - 350){
		$Ucount350++;
	}elsif( $val[3] <  -350 &&  $val[3] >= - 400){
		$Ucount400++;
	}elsif( $val[3] <  -400 &&  $val[3] >= - 450){
		$Ucount450++;
	}elsif( $val[3] <  -450 &&  $val[3] >= - 500){
		$Ucount500++;
	}elsif( $val[3] <  -500 &&  $val[3] >= - 550){
		$Ucount550++;
	}elsif( $val[3] <  -550 &&  $val[3] >= - 600){
		$Ucount600++;
	}elsif( $val[3] <  -600 &&  $val[3] >= - 650){
		$Ucount650++;
	}elsif( $val[3] <  -650 &&  $val[3] >= - 700){
		$Ucount700++;
	}elsif( $val[3] <  -700 &&  $val[3] >= - 750){
		$Ucount750++;
	}elsif( $val[3] <  -750 &&  $val[3] >= - 800){
		$Ucount800++;
	}elsif( $val[3] <  -800 &&  $val[3] >= - 850){
		$Ucount850++;
	}elsif( $val[3] <  -850 &&  $val[3] >= - 900){
		$Ucount900++;
	}elsif( $val[3] <  -900 &&  $val[3] >= - 950){
		$Ucount950++;
	}elsif( $val[3] <  -950 &&  $val[3] >= - 1000){
		$Ucount1000++;
	}elsif( $val[3] <  -1000 &&  $val[3] >= - 1050){
		$Ucount1050++;
	}elsif( $val[3] <  -1050 &&  $val[3] >= - 1100){
		$Ucount1100++;
	}elsif( $val[3] <  -1100 &&  $val[3] >= - 1150){
		$Ucount1150++;
	}elsif( $val[3] <  -1150 &&  $val[3] >= - 1200){
		$Ucount1200++;
	}elsif( $val[3] <  -1200 &&  $val[3] >= - 1250){
		$Ucount1250++;
	}elsif( $val[3] <  -1250 &&  $val[3] >= - 1300){
		$Ucount1300++;
	}elsif( $val[3] <  -1300 &&  $val[3] >= - 1350){
		$Ucount1350++;
	}elsif( $val[3] <  -1350 &&  $val[3] >= - 1400){
		$Ucount1400++;
	}elsif( $val[3] <  -1400 &&  $val[3] >= - 1450){
		$Ucount1450++;
	}elsif( $val[3] <  -1450 &&  $val[3] >= - 1500){
		$Ucount1500++;
	}elsif( $val[3] <  -1500 &&  $val[3] >= - 1550){
		$Ucount1550++;
	}elsif( $val[3] <  -1550 &&  $val[3] >= - 1600){
		$Ucount1600++;
	}elsif( $val[3] <  -1600 &&  $val[3] >= - 1650){
		$Ucount1650++;
	}elsif( $val[3] <  -1650 &&  $val[3] >= - 1700){
		$Ucount1700++;
	}elsif( $val[3] <  -1700 &&  $val[3] >= - 1750){
		$Ucount1750++;
	}elsif( $val[3] <  -1750 &&  $val[3] >= - 1800){
		$Ucount1800++;
	}elsif( $val[3] <  -1800 &&  $val[3] >= - 1850){
		$Ucount1850++;
	}elsif( $val[3] <  -1850 &&  $val[3] >= - 1900){
		$Ucount1900++;
	}elsif( $val[3] <  -1900 &&  $val[3] >= - 1950){
		$Ucount1950++;
	}elsif( $val[3] <  -1950 &&  $val[3] >= - 2000){
		$Ucount2000++;
	}elsif( $val[3] <  -2000 &&  $val[3] >= - 2050){
		$Ucount2050++;
	}elsif( $val[3] <  -2050 &&  $val[3] >= - 2100){
		$Ucount2100++;
	}elsif( $val[3] <  -2100 &&  $val[3] >= - 2150){
		$Ucount2150++;
	}elsif( $val[3] <  -2150 &&  $val[3] >= - 2200){
		$Ucount2200++;
	}elsif( $val[3] <  -2200 &&  $val[3] >= - 2250){
		$Ucount2250++;
	}elsif( $val[3] <  -2250 &&  $val[3] >= - 2300){
		$Ucount2300++;
	}elsif( $val[3] <  -2300 &&  $val[3] >= - 2350){
		$Ucount2350++;
	}elsif( $val[3] <  -2350 &&  $val[3] >= - 2400){
		$Ucount2400++;
	}elsif( $val[3] <  -2400 &&  $val[3] >= - 2450){
		$Ucount2450++;
	}elsif( $val[3] <  -2450 &&  $val[3] >= - 2500){
		$Ucount2500++;
	}elsif( $val[3] <  -2500 &&  $val[3] >= - 2550){
		$Ucount2550++;
	}elsif( $val[3] <  -2550 &&  $val[3] >= - 2600){
		$Ucount2600++;
	}elsif( $val[3] <  -2600 &&  $val[3] >= - 2650){
		$Ucount2650++;
	}elsif( $val[3] <  -2650 &&  $val[3] >= - 2700){
		$Ucount2700++;
	}elsif( $val[3] <  -2700 &&  $val[3] >= - 2750){
		$Ucount2750++;
	}elsif( $val[3] <  -2750 &&  $val[3] >= - 2800){
		$Ucount2800++;
	}elsif( $val[3] <  -2800 &&  $val[3] >= - 2850){
		$Ucount2850++;
	}elsif( $val[3] <  -2850 &&  $val[3] >= - 2900){
		$Ucount2900++;
	}elsif( $val[3] <  -2900 &&  $val[3] >= - 2950){
		$Ucount2950++;
	}elsif( $val[3] <  -2950 &&  $val[3] >= - 3000){
		$Ucount3000++;
	}elsif( $val[3] <  -3000 &&  $val[3] >= - 3050){
		$Ucount3050++;
	}elsif( $val[3] <  -3050 &&  $val[3] >= - 3100){
		$Ucount3100++;
	}elsif( $val[3] <  -3100 &&  $val[3] >= - 3150){
		$Ucount3150++;
	}elsif( $val[3] <  -3150 &&  $val[3] >= - 3200){
		$Ucount3200++;
	}elsif( $val[3] <  -3200 &&  $val[3] >= - 3250){
		$Ucount3250++;
	}elsif( $val[3] <  -3250 &&  $val[3] >= - 3300){
		$Ucount3300++;
	}elsif( $val[3] <  -3300 &&  $val[3] >= - 3350){
		$Ucount3350++;
	}elsif( $val[3] <  -3350 &&  $val[3] >= - 3400){
		$Ucount3400++;
	}elsif( $val[3] <  -3400 &&  $val[3] >= - 3450){
		$Ucount3450++;		
	}elsif( $val[3] <  -3450 &&  $val[3] >= - 3500){
		$Ucount3500++;
	}elsif( $val[3] <  -3500 &&  $val[3] >= - 3550){
		$Ucount3550++;
	}elsif( $val[3] <  -3550 &&  $val[3] >= - 3600){
		$Ucount3600++;
	}elsif( $val[3] <  -3600 &&  $val[3] >= - 3650){
		$Ucount3650++;
	}elsif( $val[3] <  -3650 &&  $val[3] >= - 3700){
		$Ucount3700++;
	}elsif( $val[3] <  -3700 &&  $val[3] >= - 3750){
		$Ucount3750++;
	}elsif( $val[3] <  -3750 &&  $val[3] >= - 3800){
		$Ucount3800++;
	}elsif( $val[3] <  -3800 &&  $val[3] >= - 3850){
		$Ucount3850++;
	}elsif( $val[3] <  -3850 &&  $val[3] >= - 3900){
		$Ucount3900++;
	}elsif( $val[3] <  -3900 &&  $val[3] >= - 3950){
		$Ucount3950++;
	}elsif( $val[3] <  -3950 &&  $val[3] >= - 4000){
		$Ucount4000++;
	}elsif( $val[3] <  -4000 &&  $val[3] >= - 4050){
		$Ucount4050++;
	}elsif( $val[3] <  -4050 &&  $val[3] >= - 4100){
		$Ucount4100++;
	}elsif( $val[3] <  -4100 &&  $val[3] >= - 4150){
		$Ucount4150++;
	}elsif( $val[3] <  -4150 &&  $val[3] >= - 4200){
		$Ucount4200++;
	}elsif( $val[3] <  -4200 &&  $val[3] >= - 4250){
		$Ucount4250++;
	}elsif( $val[3] <  -4250 &&  $val[3] >= - 4300){
		$Ucount4300++;
	}elsif( $val[3] <  -4300 &&  $val[3] >= - 4350){
		$Ucount4350++;
	}elsif( $val[3] <  -4350 &&  $val[3] >= - 4400){
		$Ucount4400++;
	}elsif( $val[3] <  -4400 &&  $val[3] >= - 4450){
		$Ucount4450++;
	}elsif( $val[3] <  -4450 &&  $val[3] >= - 4500){
		$Ucount4500++;
	}elsif( $val[3] <  -4500 &&  $val[3] >= - 4550){
		$Ucount4550++;
	}elsif( $val[3] <  -4550 &&  $val[3] >= - 4600){
		$Ucount4600++;
	}elsif( $val[3] <  -4600 &&  $val[3] >= - 4650){
		$Ucount4650++;
	}elsif( $val[3] <  -4650 &&  $val[3] >= - 4700){
		$Ucount4700++;
	}elsif( $val[3] <  -4700 &&  $val[3] >= - 4750){
		$Ucount4750++;
	}elsif( $val[3] <  -4750 &&  $val[3] >= - 4800){
		$Ucount4800++;
	}elsif( $val[3] <  -4800 &&  $val[3] >= - 4850){
		$Ucount4850++;
	}elsif( $val[3] <  -4850 &&  $val[3] >= - 4900){
		$Ucount4900++;
	}elsif( $val[3] <  -4900 &&  $val[3] >= - 4950){
		$Ucount4950++;
	}elsif( $val[3] <  -4950 &&  $val[3] >= - 5000){
		$Ucount5000++;
	}elsif( $val[3] <  -5000 &&  $val[3] >= - 5050){
		$Ucount5050++;
	}elsif( $val[3] <  -5050 &&  $val[3] >= - 5100){
		$Ucount5100++;
	}elsif( $val[3] <  -5100 &&  $val[3] >= - 5150){
		$Ucount5150++;
	}elsif( $val[3] <  -5150 &&  $val[3] >= - 5200){
		$Ucount5200++;
	}elsif( $val[3] <  -5200 &&  $val[3] >= - 5250){
		$Ucount5250++;
	}elsif( $val[3] <  -5250 &&  $val[3] >= - 5300){
		$Ucount5300++;
	}elsif( $val[3] <  -5300 &&  $val[3] >= - 5350){
		$Ucount5350++;
	}elsif( $val[3] <  -5350 &&  $val[3] >= - 5400){
		$Ucount5400++;
	}elsif( $val[3] <  -5400 &&  $val[3] >= - 5450){
		$Ucount5450++;
	}elsif( $val[3] <  -5450 &&  $val[3] >= - 5500){
		$Ucount5500++;
	}elsif( $val[3] <  -5500 &&  $val[3] >= - 5550){
		$Ucount5550++;
	}elsif( $val[3] <  -5550 &&  $val[3] >= - 5600){
		$Ucount5600++;
	}elsif( $val[3] <  -5600 &&  $val[3] >= - 5650){
		$Ucount5650++;
	}elsif( $val[3] <  -5650 &&  $val[3] >= - 5700){
		$Ucount5700++;
	}elsif( $val[3] <  -5700 &&  $val[3] >= - 5750){
		$Ucount5750++;
	}elsif( $val[3] <  -5750 &&  $val[3] >= - 5800){
		$Ucount5800++;
	}elsif( $val[3] <  -5800 &&  $val[3] >= - 5850){
		$Ucount5850++;
	}elsif( $val[3] <  -5850 &&  $val[3] >= - 5900){
		$Ucount5900++;
	}elsif( $val[3] <  -5900 &&  $val[3] >= - 5950){
		$Ucount5950++;
	}elsif( $val[3] <  -5950 &&  $val[3] >= - 6000){
		$Ucount6000++;
	}elsif( $val[3] <  -6000 &&  $val[3] >= - 6050){
		$Ucount6050++;
	}elsif( $val[3] <  -6050 &&  $val[3] >= - 6100){
		$Ucount6100++;
	}elsif( $val[3] <  -6100 &&  $val[3] >= - 6150){
		$Ucount6150++;
	}elsif( $val[3] <  -6150 &&  $val[3] >= - 6200){
		$Ucount6200++;
	}elsif( $val[3] <  -6200 &&  $val[3] >= - 6250){
		$Ucount6250++;
	}elsif( $val[3] <  -6250 &&  $val[3] >= - 6300){
		$Ucount6300++;
	}elsif( $val[3] <  -6300 &&  $val[3] >= - 6350){
		$Ucount6350++;
	}elsif( $val[3] <  -6350 &&  $val[3] >= - 6400){
		$Ucount6400++;
	}elsif( $val[3] <  -6400 &&  $val[3] >= - 6450){
		$Ucount6450++;
	}elsif( $val[3] <  -6450 &&  $val[3] >= - 6500){
		$Ucount6500++;
	}elsif( $val[3] <  -6500 &&  $val[3] >= - 6550){
		$Ucount6550++;
	}elsif( $val[3] <  -6550 &&  $val[3] >= - 6600){
		$Ucount6600++;
	}elsif( $val[3] <  -6600 &&  $val[3] >= - 6650){
		$Ucount6650++;
	}elsif( $val[3] <  -6650 &&  $val[3] >= - 6700){
		$Ucount6700++;
	}elsif( $val[3] <  -6700 &&  $val[3] >= - 6750){
		$Ucount6750++;
	}elsif( $val[3] <  -6750 &&  $val[3] >= - 6800){
		$Ucount6800++;
	}elsif( $val[3] <  -6800 &&  $val[3] >= - 6850){
		$Ucount6850++;
	}elsif( $val[3] <  -6850 &&  $val[3] >= - 6900){
		$Ucount6900++;
	}elsif( $val[3] <  -6900 &&  $val[3] >= - 6950){
		$Ucount6950++;
	}elsif( $val[3] <  -6950 &&  $val[3] >= - 7000){
		$Ucount7000++;
	}elsif( $val[3] <  -7000 &&  $val[3] >= - 7050){
		$Ucount7050++;
	}elsif( $val[3] <  -7050 &&  $val[3] >= - 7100){
		$Ucount7100++;
	}elsif( $val[3] <  -7100 &&  $val[3] >= - 7150){
		$Ucount7150++;
	}elsif( $val[3] <  -7150 &&  $val[3] >= - 7200){
		$Ucount7200++;
	}elsif( $val[3] <  -7200 &&  $val[3] >= - 7250){
		$Ucount7250++;
	}elsif( $val[3] < -7250 &&  $val[3] >= - 7300){
		$Ucount7300++;
	}elsif( $val[3] <  -7300 &&  $val[3] >= - 7350){
		$Ucount7350++;
	}elsif( $val[3] <  -7350 &&  $val[3] >= - 7400){
		$Ucount7400++;
	}elsif( $val[3] <  -7400 &&  $val[3] >= - 7450){
		$Ucount7450++;
	}elsif( $val[3] <  -7450 &&  $val[3] >= - 7500){
		$Ucount7500++;
	}elsif( $val[3] <  -7500 &&  $val[3] >= - 7550){
		$Ucount7550++;
	}elsif( $val[3] <  -7550 &&  $val[3] >= - 7600){
		$Ucount7600++;
	}elsif( $val[3] <  -7600 &&  $val[3] >= - 7650){
		$Ucount7650++;
	}elsif( $val[3] <  -7650 &&  $val[3] >= - 7700){
		$Ucount7700++;
	}elsif( $val[3] <  -7700 &&  $val[3] >= - 7750){
		$Ucount7750++;
	}elsif( $val[3] <  -7750 &&  $val[3] >= - 7800){
		$Ucount7800++;
	}elsif( $val[3] <  -7800 &&  $val[3] >= - 7850){
		$Ucount7850++;
	}elsif( $val[3] <  -7850 &&  $val[3] >= - 7900){
		$Ucount7900++;		
	}elsif( $val[3] <  -7900 &&  $val[3] >= - 7950){
		$Ucount7950++;		
	}elsif( $val[3] <  -7950 &&  $val[3] >= - 8000){
		$Ucount8000++;
	}elsif( $val[3] <  -8000 &&  $val[3] >= - 8050){
		$Ucount8050++;
	}elsif( $val[3] <  -8050 &&  $val[3] >= - 8100){
		$Ucount8100++;
	}elsif( $val[3] <  -8100 &&  $val[3] >= - 8150){
		$Ucount8150++;
	}elsif( $val[3] <  -8150 &&  $val[3] >= - 8200){
		$Ucount8200++;
	}elsif( $val[3] <  -8200 &&  $val[3] >= - 8250){
		$Ucount8250++;
	}elsif( $val[3] <  -8250 &&  $val[3] >= - 8300){
		$Ucount8300++;
	}elsif( $val[3] <  -8300 &&  $val[3] >= - 8350){
		$Ucount8350++;
	}elsif( $val[3] <  -8350 &&  $val[3] >= - 8400){
		$Ucount8400++;
	}elsif( $val[3] <  -8400 &&  $val[3] >= - 8450){
		$Ucount8450++;
	}elsif( $val[3] <  -8450 &&  $val[3] >= - 8500){
		$Ucount8500++;
	}elsif( $val[3] <  -8500 &&  $val[3] >= - 8550){
		$Ucount8550++;
	}elsif( $val[3] <  -8550 &&  $val[3] >= - 8600){
		$Ucount8600++;
	}elsif( $val[3] <  -8600 &&  $val[3] >= - 8650){
		$Ucount8650++;
	}elsif( $val[3] <  -8650 &&  $val[3] >= - 8700){
		$Ucount8700++;
	}elsif( $val[3] <  -8700 &&  $val[3] >= - 8750){
		$Ucount8750++;
	}elsif( $val[3] <  -8750 &&  $val[3] >= - 8800){
		$Ucount8800++;
	}elsif( $val[3] <  -8800 &&  $val[3] >= - 8850){
		$Ucount8850++;
	}elsif( $val[3] <  -8850 &&  $val[3] >= - 8900){
		$Ucount8900++;
	}elsif( $val[3] <  -8900 &&  $val[3] >= - 8950){
		$Ucount8950++;
	}elsif( $val[3] <  -8950 &&  $val[3] >= - 9000){
		$Ucount9000++;
	}elsif( $val[3] <  -9000 &&  $val[3] >= - 9050){
		$Ucount9050++;
	}elsif( $val[3] <  -9050 &&  $val[3] >= - 9100){
		$Ucount9100++;
	}elsif( $val[3] <  -9100 &&  $val[3] >= - 9150){
		$Ucount9150++;
	}elsif( $val[3] <  -9150 &&  $val[3] >= - 9200){
		$Ucount9200++;
	}elsif( $val[3] <  -9200 &&  $val[3] >= - 9250){
		$Ucount9250++;
	}elsif( $val[3] <  -9250 &&  $val[3] >= - 9300){
		$Ucount9300++;
	}elsif( $val[3] <  -9300 &&  $val[3] >= - 9350){
		$Ucount9350++;
	}elsif( $val[3] <  -9350 &&  $val[3] >= - 9400){
		$Ucount9400++;
	}elsif( $val[3] <  -9400 &&  $val[3] >= - 9450){
		$Ucount9450++;
	}elsif( $val[3] <  -9450 &&  $val[3] >= - 9500){
		$Ucount9500++;
	}elsif( $val[3] <  -9500 &&  $val[3] >= - 9550){
		$Ucount9550++;
	}elsif( $val[3] <  -9550 &&  $val[3] >= - 9600){
		$Ucount9600++;
	}elsif( $val[3] <  -9600 &&  $val[3] >= - 9650){
		$Ucount9650++;		
	}elsif( $val[3] <  -9650 &&  $val[3] >= - 9700){
		$Ucount9700++;
	}elsif( $val[3] <  -9700 &&  $val[3] >= - 9750){
		$Ucount9750++;
	}elsif( $val[3] <  -9750 &&  $val[3] >= - 9800){
		$Ucount9800++;
	}elsif( $val[3] <  -9800 &&  $val[3] >= - 9850){
		$Ucount9850++;
	}elsif( $val[3] <  -9850 &&  $val[3] >= - 9900){
		$Ucount9900++;
	}elsif( $val[3] <  -9900 &&  $val[3] >= - 9950){
		$Ucount9950++;
	}elsif( $val[3] <  -9950 &&  $val[3] >= - 10000){
		$Ucount10000++;
	}elsif( $val[3] <  -10000 ){
		$Ucount10000plus++;
	}
}

#print OUT $Ucount50,"\t",	$Ucount100,"\t",	$Ucount150,"\t",	$Ucount200,"\t",	$Ucount250,"\t",	$Ucount300,"\t",	$Ucount350,"\t",	$Ucount400,"\t",	$Ucount450,"\t",	$Ucount500,"\t",	$Ucount550,"\t",	$Ucount600,"\t",	$Ucount650,"\t",	$Ucount700,"\t",	$Ucount750,"\t",	$Ucount800,"\t",	$Ucount850,"\t",	$Ucount900,"\t",	$Ucount950,"\t",	$Ucount1000,"\t",	$Ucount1050,"\t",	$Ucount1100,"\t",	$Ucount1150,"\t",	$Ucount1200,"\t",	$Ucount1250,"\t",	$Ucount1300,"\t",	$Ucount1350,"\t",	$Ucount1400,"\t",	$Ucount1450,"\t",	$Ucount1500,"\t",	$Ucount1550,"\t",	$Ucount1600,"\t",	$Ucount1650,"\t",	$Ucount1700,"\t",	$Ucount1750,"\t",	$Ucount1800,"\t",	$Ucount1850,"\t",	$Ucount1900,"\t",	$Ucount1950,"\t",	$Ucount2000,"\t",	$Ucount2050,"\t",	$Ucount2100,"\t",	$Ucount2150,"\t",	$Ucount2200,"\t",	$Ucount2250,"\t",	$Ucount2300,"\t",	$Ucount2350,"\t",	$Ucount2400,"\t",	$Ucount2450,"\t",	$Ucount2500,"\t",	$Ucount2550,"\t",	$Ucount2600,"\t",	$Ucount2650,"\t",	$Ucount2700,"\t",	$Ucount2750,"\t",	$Ucount2800,"\t",	$Ucount2850,"\t",	$Ucount2900,"\t",	$Ucount2950,"\t",	$Ucount3000,"\t",	$Ucount3050,"\t",	$Ucount3100,"\t",	$Ucount3150,"\t",	$Ucount3200,"\t",	$Ucount3250,"\t",	$Ucount3300,"\t",	$Ucount3350,"\t",	$Ucount3400,"\t",	$Ucount3450,"\t",	$Ucount3500,"\t",	$Ucount3550,"\t",	$Ucount3600,"\t",	$Ucount3650,"\t",	$Ucount3700,"\t",	$Ucount3750,"\t",	$Ucount3800,"\t",	$Ucount3850,"\t",	$Ucount3900,"\t",	$Ucount3950,"\t",	$Ucount4000,"\t",	$Ucount4050,"\t",	$Ucount4100,"\t",	$Ucount4150,"\t",	$Ucount4200,"\t",	$Ucount4250,"\t",	$Ucount4300,"\t",	$Ucount4350,"\t",	$Ucount4400,"\t",	$Ucount4450,"\t",	$Ucount4500,"\t",	$Ucount4550,"\t",	$Ucount4600,"\t",	$Ucount4650,"\t",	$Ucount4700,"\t",	$Ucount4750,"\t",	$Ucount4800,"\t",	$Ucount4850,"\t",	$Ucount4900,"\t",	$Ucount4950,"\t",	$Ucount5000,"\t",	$Ucount5050,"\t",	$Ucount5100,"\t",	$Ucount5150,"\t",	$Ucount5200,"\t",	$Ucount5250,"\t",	$Ucount5300,"\t",	$Ucount5350,"\t",	$Ucount5400,"\t",	$Ucount5450,"\t",	$Ucount5500,"\t",	$Ucount5550,"\t",	$Ucount5600,"\t",	$Ucount5650,"\t",	$Ucount5700,"\t",	$Ucount5750,"\t",	$Ucount5800,"\t",	$Ucount5850,"\t",	$Ucount5900,"\t",	$Ucount5950,"\t",	$Ucount6000,"\t",	$Ucount6050,"\t",	$Ucount6100,"\t",	$Ucount6150,"\t",	$Ucount6200,"\t",	$Ucount6250,"\t",	$Ucount6300,"\t",	$Ucount6350,"\t",	$Ucount6400,"\t",	$Ucount6450,"\t",	$Ucount6500,"\t",	$Ucount6550,"\t",	$Ucount6600,"\t",	$Ucount6650,"\t",	$Ucount6700,"\t",	$Ucount6750,"\t",	$Ucount6800,"\t",	$Ucount6850,"\t",	$Ucount6900,"\t",	$Ucount6950,"\t",	$Ucount7000,"\t",	$Ucount7050,"\t",	$Ucount7100,"\t",	$Ucount7150,"\t",	$Ucount7200,"\t",	$Ucount7250,"\t",	$Ucount7300,"\t",	$Ucount7350,"\t",	$Ucount7400,"\t",	$Ucount7450,"\t",	$Ucount7500,"\t",	$Ucount7550,"\t",	$Ucount7600,"\t",	$Ucount7650,"\t",	$Ucount7700,"\t",	$Ucount7750,"\t",	$Ucount7800,"\t",	$Ucount7850,"\t",	$Ucount7900,"\t",	$Ucount7950,"\t",	$Ucount8000,"\t",	$Ucount8050,"\t",	$Ucount8100,"\t",	$Ucount8150,"\t",	$Ucount8200,"\t",	$Ucount8250,"\t",	$Ucount8300,"\t",	$Ucount8350,"\t",	$Ucount8400,"\t",	$Ucount8450,"\t",	$Ucount8500,"\t",	$Ucount8550,"\t",	$Ucount8600,"\t",	$Ucount8650,"\t",	$Ucount8700,"\t",	$Ucount8750,"\t",	$Ucount8800,"\t",	$Ucount8850,"\t",	$Ucount8900,"\t",	$Ucount8950,"\t",	$Ucount9000,"\t",	$Ucount9050,"\t",	$Ucount9100,"\t",	$Ucount9150,"\t",	$Ucount9200,"\t",	$Ucount9250,"\t",	$Ucount9300,"\t",	$Ucount9350,"\t",	$Ucount9400,"\t",	$Ucount9450,"\t",	$Ucount9500,"\t",	$Ucount9550,"\t",	$Ucount9600,"\t",	$Ucount9650,"\t",	$Ucount9700,"\t",	$Ucount9750,"\t",	$Ucount9800,"\t",	$Ucount9850,"\t",	$Ucount9900,"\t",	$Ucount9950,"\t",	$Ucount10000;
 print OUT $Ucount10000,"\t",	$Ucount9950,"\t",	$Ucount9900,"\t",	$Ucount9850,"\t",	$Ucount9800,"\t",	$Ucount9750,"\t",	$Ucount9700,"\t",	$Ucount9650,"\t",	$Ucount9600,"\t",	$Ucount9550,"\t",	$Ucount9500,"\t",	$Ucount9450,"\t",	$Ucount9400,"\t",	$Ucount9350,"\t",	$Ucount9300,"\t",	$Ucount9250,"\t",	$Ucount9200,"\t",	$Ucount9150,"\t",	$Ucount9100,"\t",	$Ucount9050,"\t",	$Ucount9000,"\t",	$Ucount8950,"\t",	$Ucount8900,"\t",	$Ucount8850,"\t",	$Ucount8800,"\t",	$Ucount8750,"\t",	$Ucount8700,"\t",	$Ucount8650,"\t",	$Ucount8600,"\t",	$Ucount8550,"\t",	$Ucount8500,"\t",	$Ucount8450,"\t",	$Ucount8400,"\t",	$Ucount8350,"\t",	$Ucount8300,"\t",	$Ucount8250,"\t",	$Ucount8200,"\t",	$Ucount8150,"\t",	$Ucount8100,"\t",	$Ucount8050,"\t",	$Ucount8000,"\t",	$Ucount7950,"\t",	$Ucount7900,"\t",	$Ucount7850,"\t",	$Ucount7800,"\t",	$Ucount7750,"\t",	$Ucount7700,"\t",	$Ucount7650,"\t",	$Ucount7600,"\t",	$Ucount7550,"\t",	$Ucount7500,"\t",	$Ucount7450,"\t",	$Ucount7400,"\t",	$Ucount7350,"\t",	$Ucount7300,"\t",	$Ucount7250,"\t",	$Ucount7200,"\t",	$Ucount7150,"\t",	$Ucount7100,"\t",	$Ucount7050,"\t",	$Ucount7000,"\t",	$Ucount6950,"\t",	$Ucount6900,"\t",	$Ucount6850,"\t",	$Ucount6800,"\t",	$Ucount6750,"\t",	$Ucount6700,"\t",	$Ucount6650,"\t",	$Ucount6600,"\t",	$Ucount6550,"\t",	$Ucount6500,"\t",	$Ucount6450,"\t",	$Ucount6400,"\t",	$Ucount6350,"\t",	$Ucount6300,"\t",	$Ucount6250,"\t",	$Ucount6200,"\t",	$Ucount6150,"\t",	$Ucount6100,"\t",	$Ucount6050,"\t",	$Ucount6000,"\t",	$Ucount5950,"\t",	$Ucount5900,"\t",	$Ucount5850,"\t",	$Ucount5800,"\t",	$Ucount5750,"\t",	$Ucount5700,"\t",	$Ucount5650,"\t",	$Ucount5600,"\t",	$Ucount5550,"\t",	$Ucount5500,"\t",	$Ucount5450,"\t",	$Ucount5400,"\t",	$Ucount5350,"\t",	$Ucount5300,"\t",	$Ucount5250,"\t",	$Ucount5200,"\t",	$Ucount5150,"\t",	$Ucount5100,"\t",	$Ucount5050,"\t",	$Ucount5000,"\t",	$Ucount4950,"\t",	$Ucount4900,"\t",	$Ucount4850,"\t",	$Ucount4800,"\t",	$Ucount4750,"\t",	$Ucount4700,"\t",	$Ucount4650,"\t",	$Ucount4600,"\t",	$Ucount4550,"\t",	$Ucount4500,"\t",	$Ucount4450,"\t",	$Ucount4400,"\t",	$Ucount4350,"\t",	$Ucount4300,"\t",	$Ucount4250,"\t",	$Ucount4200,"\t",	$Ucount4150,"\t",	$Ucount4100,"\t",	$Ucount4050,"\t",	$Ucount4000,"\t",	$Ucount3950,"\t",	$Ucount3900,"\t",	$Ucount3850,"\t",	$Ucount3800,"\t",	$Ucount3750,"\t",	$Ucount3700,"\t",	$Ucount3650,"\t",	$Ucount3600,"\t",	$Ucount3550,"\t",	$Ucount3500,"\t",	$Ucount3450,"\t",	$Ucount3400,"\t",	$Ucount3350,"\t",	$Ucount3300,"\t",	$Ucount3250,"\t",	$Ucount3200,"\t",	$Ucount3150,"\t",	$Ucount3100,"\t",	$Ucount3050,"\t",	$Ucount3000,"\t",	$Ucount2950,"\t",	$Ucount2900,"\t",	$Ucount2850,"\t",	$Ucount2800,"\t",	$Ucount2750,"\t",	$Ucount2700,"\t",	$Ucount2650,"\t",	$Ucount2600,"\t",	$Ucount2550,"\t",	$Ucount2500,"\t",	$Ucount2450,"\t",	$Ucount2400,"\t",	$Ucount2350,"\t",	$Ucount2300,"\t",	$Ucount2250,"\t",	$Ucount2200,"\t",	$Ucount2150,"\t",	$Ucount2100,"\t",	$Ucount2050,"\t",	$Ucount2000,"\t",	$Ucount1950,"\t",	$Ucount1900,"\t",	$Ucount1850,"\t",	$Ucount1800,"\t",	$Ucount1750,"\t",	$Ucount1700,"\t",	$Ucount1650,"\t",	$Ucount1600,"\t",	$Ucount1550,"\t",	$Ucount1500,"\t",	$Ucount1450,"\t",	$Ucount1400,"\t",	$Ucount1350,"\t",	$Ucount1300,"\t",	$Ucount1250,"\t",	$Ucount1200,"\t",	$Ucount1150,"\t",	$Ucount1100,"\t",	$Ucount1050,"\t",	$Ucount1000,"\t",	$Ucount950,"\t",	$Ucount900,"\t",	$Ucount850,"\t",	$Ucount800,"\t",	$Ucount750,"\t",	$Ucount700,"\t",	$Ucount650,"\t",	$Ucount600,"\t",	$Ucount550,"\t",	$Ucount500,"\t",	$Ucount450,"\t",	$Ucount400,"\t",	$Ucount350,"\t",	$Ucount300,"\t",	$Ucount250,"\t",	$Ucount200,"\t",	$Ucount150,"\t",	$Ucount100,"\t",	$Ucount50,"\n";

}

####################################################################################################################################################################################
	
#Exit	
exit;
	
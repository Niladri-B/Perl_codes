use strict;
use warnings;

#Code to automatically generate frequencies in 50bp bins till 10kb

#Open output file[HERE: Because we want one consolidated file]
open OUT, ">Output_Dstrm_Consolidated.out" or die $!;


#Intialize loops
for(my $i = 1; $i <= 1000; $i++){

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
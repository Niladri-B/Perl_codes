use strict;
use warnings;

#Code to automatically generate frequencies in 50bp bins till 10kb

#Open output file
open OUT, ">Output_Upstrm_100bp_Consolidated.out" or die $!;

#Intialize loops
#for(my $i = 1; $i <= 1000; $i++){

#Assign filename
#my $file = "Uniquely_Nearest_G4_LSD1_$i.out" ;
my $file = "Uniquely_Nearest_G4_corest.out";

#Open file
open my $fh, '<', $file or die $!;




#Intialize count variables 

#my $Ucount50;
		my $Ucount100;
#my $Ucount150;
		my $Ucount200;
#my $Ucount250;
		my $Ucount300;
#my $Ucount350;
		my $Ucount400;
#my $Ucount450;
		my $Ucount500;
#my $Ucount550;
		my $Ucount600;
#my $Ucount650;
		my $Ucount700;
#my $Ucount750;
		my $Ucount800;
#my $Ucount850;
		my $Ucount900;
#my $Ucount950;
		my $Ucount1000;
#my $Ucount1050;
		my $Ucount1100;
#my $Ucount1150;
		my $Ucount1200;
#my $Ucount1250;
		my $Ucount1300;
#my $Ucount1350;
		my $Ucount1400;
#my $Ucount1450;
		my $Ucount1500;
#my $Ucount1550;
		my $Ucount1600;
#my $Ucount1650;
		my $Ucount1700;
#my $Ucount1750;
		my $Ucount1800;
#my $Ucount1850;
		my $Ucount1900;
#my $Ucount1950;
		my $Ucount2000;
#my $Ucount2050;
		my $Ucount2100;
#my $Ucount2150;
		my $Ucount2200;
#my $Ucount2250;
		my $Ucount2300;
#my $Ucount2350;
		my $Ucount2400;
#my $Ucount2450;
		my $Ucount2500;
#my $Ucount2550;
		my $Ucount2600;
#my $Ucount2650;
		my $Ucount2700;
#my $Ucount2750;
		my $Ucount2800;
#my $Ucount2850;
		my $Ucount2900;
#my $Ucount2950;
		my $Ucount3000;
#my $Ucount3050;
		my $Ucount3100;
#my $Ucount3150;
		my $Ucount3200;
#my $Ucount3250;
		my $Ucount3300;
#my $Ucount3350;
		my $Ucount3400;
#my $Ucount3450;
		my $Ucount3500;
#my $Ucount3550;
		my $Ucount3600;
#my $Ucount3650;
		my $Ucount3700;
#my $Ucount3750;
		my $Ucount3800;
#my $Ucount3850;
		my $Ucount3900;
#my $Ucount3950;
		my $Ucount4000;
#my $Ucount4050;
		my $Ucount4100;
#my $Ucount4150;
		my $Ucount4200;
#my $Ucount4250;
		my $Ucount4300;
#my $Ucount4350;
		my $Ucount4400;
#my $Ucount4450;
		my $Ucount4500;
#my $Ucount4550;
		my $Ucount4600;
#my $Ucount4650;
		my $Ucount4700;
#my $Ucount4750;
		my $Ucount4800;
#my $Ucount4850;
		my $Ucount4900;
#my $Ucount4950;
		my $Ucount5000;
#my $Ucount5050;
		my $Ucount5100;
#my $Ucount5150;
		my $Ucount5200;
#my $Ucount5250;
		my $Ucount5300;
#my $Ucount5350;
		my $Ucount5400;
#my $Ucount5450;
		my $Ucount5500;
#my $Ucount5550;
		my $Ucount5600;
#my $Ucount5650;
		my $Ucount5700;
#my $Ucount5750;
		my $Ucount5800;
#my $Ucount5850;
		my $Ucount5900;
#my $Ucount5950;
		my $Ucount6000;
#my $Ucount6050;
		my $Ucount6100;
#my $Ucount6150;
		my $Ucount6200;
#my $Ucount6250;
		my $Ucount6300;
#my $Ucount6350;
		my $Ucount6400;
#my $Ucount6450;
		my $Ucount6500;
#my $Ucount6550;
		my $Ucount6600;
#my $Ucount6650;
		my $Ucount6700;
#my $Ucount6750;
		my $Ucount6800;
#my $Ucount6850;
		my $Ucount6900;
#my $Ucount6950;
		my $Ucount7000;
#my $Ucount7050;
		my $Ucount7100;
#my $Ucount7150;
		my $Ucount7200;
#my $Ucount7250;
		my $Ucount7300;
#my $Ucount7350;
		my $Ucount7400;
#my $Ucount7450;
		my $Ucount7500;
#my $Ucount7550;
		my $Ucount7600;
#my $Ucount7650;
		my $Ucount7700;
#my $Ucount7750;
		my $Ucount7800;
#my $Ucount7850;
		my $Ucount7900;
#my $Ucount7950;
		my $Ucount8000;
#my $Ucount8050;
		my $Ucount8100;
#my $Ucount8150;
		my $Ucount8200;
#my $Ucount8250;
		my $Ucount8300;
#my $Ucount8350;
		my $Ucount8400;
#my $Ucount8450;
		my $Ucount8500;
#my $Ucount8550;
		my $Ucount8600;
#my $Ucount8650;
		my $Ucount8700;
#my $Ucount8750;
		my $Ucount8800;
#my $Ucount8850;
		my $Ucount8900;
#my $Ucount8950;
		my $Ucount9000;
#my $Ucount9050;
		my $Ucount9100;
#my $Ucount9150;
		my $Ucount9200;
#my $Ucount9250;
		my $Ucount9300;
#my $Ucount9350;
		my $Ucount9400;
#my $Ucount9450;
		my $Ucount9500;
#my $Ucount9550;
		my $Ucount9600;
#my $Ucount9650;
		my $Ucount9700;
#my $Ucount9750;
		my $Ucount9800;
#my $Ucount9850;
		my $Ucount9900;
#my $Ucount9950;
		my $Ucount10000;
my $Ucount10000plus;

#Read in file
while(<$fh>){
	my @val = split;
	if( $val[3] eq "No_Match"){
		next;
	
	}elsif(  $val[3] < 0 &&   $val[3] >= - 100){
		$Ucount100++;
	}elsif( $val[3] < - 100 &&  $val[3] >= - 200){
		$Ucount200++;
	}elsif( $val[3] < -200 &&  $val[3] >= - 300){
		$Ucount300++;
	}elsif( $val[3] < -300 &&  $val[3] >= - 400){
		$Ucount400++;
	}elsif( $val[3] < -400 &&  $val[3] >= - 500){
		$Ucount500++;
	}elsif( $val[3] < -500 &&  $val[3] >= - 600){
		$Ucount600++;
	}elsif( $val[3] <  -600 &&  $val[3] >= - 700){
		$Ucount700++;
	}elsif( $val[3] <  -700 &&  $val[3] >= - 800){
		$Ucount800++;
	}elsif( $val[3] <  -800 &&  $val[3] >= - 900){
		$Ucount900++;
	}elsif( $val[3] <  -900 &&  $val[3] >= - 1000){
		$Ucount1000++;
	}elsif( $val[3] <  -1000 &&  $val[3] >= - 1100){
		$Ucount1100++;
	}elsif( $val[3] <  -1100 &&  $val[3] >= - 1200){
		$Ucount1200++;
	}elsif( $val[3] <  -1200 &&  $val[3] >= - 1300){
		$Ucount1300++;
	}elsif( $val[3] <  -1300 &&  $val[3] >= - 1400){
		$Ucount1400++;
	}elsif( $val[3] <  -1400 &&  $val[3] >= - 1500){
		$Ucount1500++;
	}elsif( $val[3] <  -1500 &&  $val[3] >= - 1600){
		$Ucount1600++;
	}elsif( $val[3] <  -1600 &&  $val[3] >= - 1700){
		$Ucount1700++;
	}elsif( $val[3] <  -1700 &&  $val[3] >= - 1800){
		$Ucount1800++;
	}elsif( $val[3] <  -1800 &&  $val[3] >= - 1900){
		$Ucount1900++;
	}elsif( $val[3] <  -1900 &&  $val[3] >= - 2000){
		$Ucount2000++;
	}elsif( $val[3] <  -2000 &&  $val[3] >= - 2100){
		$Ucount2100++;
	}elsif( $val[3] <  -2100 &&  $val[3] >= - 2200){
		$Ucount2200++;
	}elsif( $val[3] <  -2200 &&  $val[3] >= - 2300){
		$Ucount2300++;
	}elsif( $val[3] <  -2300 &&  $val[3] >= - 2400){
		$Ucount2400++;
	}elsif( $val[3] <  -2400 &&  $val[3] >= - 2500){
		$Ucount2500++;
	}elsif( $val[3] <  -2500 &&  $val[3] >= - 2600){
		$Ucount2600++;
	}elsif( $val[3] <  -2600 &&  $val[3] >= - 2700){
		$Ucount2700++;
	}elsif( $val[3] <  -2700 &&  $val[3] >= - 2800){
		$Ucount2800++;
	}elsif( $val[3] <  -2800 &&  $val[3] >= - 2900){
		$Ucount2900++;
	}elsif( $val[3] <  -2900 &&  $val[3] >= - 3000){
		$Ucount3000++;
	}elsif( $val[3] <  -3000 &&  $val[3] >= - 3100){
		$Ucount3100++;
	}elsif( $val[3] <  -3100 &&  $val[3] >= - 3200){
		$Ucount3200++;
	}elsif( $val[3] <  -3200 &&  $val[3] >= - 3300){
		$Ucount3300++;
	}elsif( $val[3] <  -3300 &&  $val[3] >= - 3400){
		$Ucount3400++;
	}elsif( $val[3] <  -3400 &&  $val[3] >= - 3500){
		$Ucount3500++;
	}elsif( $val[3] <  -3500 &&  $val[3] >= - 3600){
		$Ucount3600++;
	}elsif( $val[3] <  -3600 &&  $val[3] >= - 3700){
		$Ucount3700++;
	}elsif( $val[3] <  -3700 &&  $val[3] >= - 3800){
		$Ucount3800++;
	}elsif( $val[3] <  -3800 &&  $val[3] >= - 3900){
		$Ucount3900++;
	}elsif( $val[3] <  -3900 &&  $val[3] >= - 4000){
		$Ucount4000++;
	}elsif( $val[3] <  -4000 &&  $val[3] >= - 4100){
		$Ucount4100++;
	}elsif( $val[3] <  -4100 &&  $val[3] >= - 4200){
		$Ucount4200++;
	}elsif( $val[3] <  -4200 &&  $val[3] >= - 4300){
		$Ucount4300++;
	}elsif( $val[3] <  -4300 &&  $val[3] >= - 4400){
		$Ucount4400++;
	}elsif( $val[3] <  -4400 &&  $val[3] >= - 4500){
		$Ucount4500++;
	}elsif( $val[3] <  -4500 &&  $val[3] >= - 4600){
		$Ucount4600++;
	}elsif( $val[3] <  -4600 &&  $val[3] >= - 4700){
		$Ucount4700++;
	}elsif( $val[3] <  -4700 &&  $val[3] >= - 4800){
		$Ucount4800++;
	}elsif( $val[3] <  -4800 &&  $val[3] >= - 4900){
		$Ucount4900++;
	}elsif( $val[3] <  -4900 &&  $val[3] >= - 5000){
		$Ucount5000++;
	}elsif( $val[3] <  -5000 &&  $val[3] >= - 5100){
		$Ucount5100++;
	}elsif( $val[3] <  -5100 &&  $val[3] >= - 5200){
		$Ucount5200++;
	}elsif( $val[3] <  -5200 &&  $val[3] >= - 5300){
		$Ucount5300++;
	}elsif( $val[3] <  -5300 &&  $val[3] >= - 5400){
		$Ucount5400++;
	}elsif( $val[3] <  -5400 &&  $val[3] >= - 5500){
		$Ucount5500++;
	}elsif( $val[3] <  -5500 &&  $val[3] >= - 5600){
		$Ucount5600++;
	}elsif( $val[3] <  -5600 &&  $val[3] >= - 5700){
		$Ucount5700++;
	}elsif( $val[3] <  -5700 &&  $val[3] >= - 5800){
		$Ucount5800++;
	}elsif( $val[3] <  -5800 &&  $val[3] >= - 5900){
		$Ucount5900++;
	}elsif( $val[3] <  -5900 &&  $val[3] >= - 6000){
		$Ucount6000++;
	}elsif( $val[3] <  -6000 &&  $val[3] >= - 6100){
		$Ucount6100++;
	}elsif( $val[3] <  -6100 &&  $val[3] >= - 6200){
		$Ucount6200++;
	}elsif( $val[3] <  -6200 &&  $val[3] >= - 6300){
		$Ucount6300++;
	}elsif( $val[3] <  -6300 &&  $val[3] >= - 6400){
		$Ucount6400++;
	}elsif( $val[3] <  -6400 &&  $val[3] >= - 6500){
		$Ucount6500++;
	}elsif( $val[3] <  -6500 &&  $val[3] >= - 6600){
		$Ucount6600++;
	}elsif( $val[3] <  -6600 &&  $val[3] >= - 6700){
		$Ucount6700++;
	}elsif( $val[3] <  -6700 &&  $val[3] >= - 6800){
		$Ucount6800++;
	}elsif( $val[3] <  -6800 &&  $val[3] >= - 6900){
		$Ucount6900++;		
	}elsif( $val[3] <  -6900 &&  $val[3] >= - 7000){
		$Ucount7000++;
	}elsif( $val[3] <  -7000 &&  $val[3] >= - 7100){
		$Ucount7100++;
	}elsif( $val[3] <  -7100 &&  $val[3] >= - 7200){
		$Ucount7200++;
	}elsif( $val[3] <  -7200 &&  $val[3] >= - 7300){
		$Ucount7300++;
	}elsif( $val[3] <  -7300 &&  $val[3] >= - 7400){
		$Ucount7400++;
	}elsif( $val[3] <  -7400 &&  $val[3] >= - 7500){
		$Ucount7500++;
	}elsif( $val[3] <  -7500 &&  $val[3] >= - 7600){
		$Ucount7600++;
	}elsif( $val[3] <  -7600 &&  $val[3] >= - 7700){
		$Ucount7700++;
	}elsif( $val[3] <  -7700 &&  $val[3] >= - 7800){
		$Ucount7800++;
	}elsif( $val[3] <  -7800 &&  $val[3] >= - 7900){
		$Ucount7900++;
	}elsif( $val[3] <  -7900 &&  $val[3] >= - 8000){
		$Ucount8000++;
	}elsif( $val[3] <  -8000 &&  $val[3] >= - 8100){
		$Ucount8100++;
	}elsif( $val[3] <  -8100 &&  $val[3] >= - 8200){
		$Ucount8200++;
	}elsif( $val[3] <  -8200 &&  $val[3] >= - 8300){
		$Ucount8300++;
	}elsif( $val[3] <  -8300 &&  $val[3] >= - 8400){
		$Ucount8400++;
	}elsif( $val[3] <  -8400 &&  $val[3] >= - 8500){
		$Ucount8500++;
	}elsif( $val[3] <  -8500 &&  $val[3] >= - 8600){
		$Ucount8600++;
	}elsif( $val[3] <  -8600 &&  $val[3] >= - 8700){
		$Ucount8700++;
	}elsif( $val[3] <  -8700 &&  $val[3] >= - 8800){
		$Ucount8800++;
	}elsif( $val[3] <  -8800 &&  $val[3] >= - 8900){
		$Ucount8900++;
	}elsif( $val[3] <  -8900 &&  $val[3] >= - 9000){
		$Ucount9000++;
	}elsif( $val[3] <  -9000 &&  $val[3] >= - 9100){
		$Ucount9100++;
	}elsif( $val[3] <  -9100 &&  $val[3] >= - 9200){
		$Ucount9200++;
	}elsif( $val[3] <  -9200 &&  $val[3] >= - 9300){
		$Ucount9300++;
	}elsif( $val[3] <  -9300 &&  $val[3] >= - 9400){
		$Ucount9400++;
	}elsif( $val[3] <  -9400 &&  $val[3] >= - 9500){
		$Ucount9500++;
	}elsif( $val[3] <  -9500 &&  $val[3] >= - 9600){
		$Ucount9600++;
	}elsif( $val[3] <  -9600 &&  $val[3] >= - 9700){
		$Ucount9700++;
	}elsif( $val[3] <  -9700 &&  $val[3] >= - 9800){
		$Ucount9800++;
	}elsif( $val[3] <  -9800 &&  $val[3] >= - 9900){
		$Ucount9900++;
	}elsif( $val[3] <  -9900 &&  $val[3] >= - 10000){
		$Ucount10000++;
	}elsif( $val[3] <  -10000 ){
		$Ucount10000plus++;
	
	}
}

#print OUT $Ucount50,"\t",	$Ucount100,"\t",	$Ucount150,"\t",	$Ucount200,"\t",	$Ucount250,"\t",	$Ucount300,"\t",	$Ucount350,"\t",	$Ucount400,"\t",	$Ucount450,"\t",	$Ucount500,"\t",	$Ucount550,"\t",	$Ucount600,"\t",	$Ucount650,"\t",	$Ucount700,"\t",	$Ucount750,"\t",	$Ucount800,"\t",	$Ucount850,"\t",	$Ucount900,"\t",	$Ucount950,"\t",	$Ucount1000,"\t",	$Ucount1050,"\t",	$Ucount1100,"\t",	$Ucount1150,"\t",	$Ucount1200,"\t",	$Ucount1250,"\t",	$Ucount1300,"\t",	$Ucount1350,"\t",	$Ucount1400,"\t",	$Ucount1450,"\t",	$Ucount1500,"\t",	$Ucount1550,"\t",	$Ucount1600,"\t",	$Ucount1650,"\t",	$Ucount1700,"\t",	$Ucount1750,"\t",	$Ucount1800,"\t",	$Ucount1850,"\t",	$Ucount1900,"\t",	$Ucount1950,"\t",	$Ucount2000,"\t",	$Ucount2050,"\t",	$Ucount2100,"\t",	$Ucount2150,"\t",	$Ucount2200,"\t",	$Ucount2250,"\t",	$Ucount2300,"\t",	$Ucount2350,"\t",	$Ucount2400,"\t",	$Ucount2450,"\t",	$Ucount2500,"\t",	$Ucount2550,"\t",	$Ucount2600,"\t",	$Ucount2650,"\t",	$Ucount2700,"\t",	$Ucount2750,"\t",	$Ucount2800,"\t",	$Ucount2850,"\t",	$Ucount2900,"\t",	$Ucount2950,"\t",	$Ucount3000,"\t",	$Ucount3050,"\t",	$Ucount3100,"\t",	$Ucount3150,"\t",	$Ucount3200,"\t",	$Ucount3250,"\t",	$Ucount3300,"\t",	$Ucount3350,"\t",	$Ucount3400,"\t",	$Ucount3450,"\t",	$Ucount3500,"\t",	$Ucount3550,"\t",	$Ucount3600,"\t",	$Ucount3650,"\t",	$Ucount3700,"\t",	$Ucount3750,"\t",	$Ucount3800,"\t",	$Ucount3850,"\t",	$Ucount3900,"\t",	$Ucount3950,"\t",	$Ucount4000,"\t",	$Ucount4050,"\t",	$Ucount4100,"\t",	$Ucount4150,"\t",	$Ucount4200,"\t",	$Ucount4250,"\t",	$Ucount4300,"\t",	$Ucount4350,"\t",	$Ucount4400,"\t",	$Ucount4450,"\t",	$Ucount4500,"\t",	$Ucount4550,"\t",	$Ucount4600,"\t",	$Ucount4650,"\t",	$Ucount4700,"\t",	$Ucount4750,"\t",	$Ucount4800,"\t",	$Ucount4850,"\t",	$Ucount4900,"\t",	$Ucount4950,"\t",	$Ucount5000,"\t",	$Ucount5050,"\t",	$Ucount5100,"\t",	$Ucount5150,"\t",	$Ucount5200,"\t",	$Ucount5250,"\t",	$Ucount5300,"\t",	$Ucount5350,"\t",	$Ucount5400,"\t",	$Ucount5450,"\t",	$Ucount5500,"\t",	$Ucount5550,"\t",	$Ucount5600,"\t",	$Ucount5650,"\t",	$Ucount5700,"\t",	$Ucount5750,"\t",	$Ucount5800,"\t",	$Ucount5850,"\t",	$Ucount5900,"\t",	$Ucount5950,"\t",	$Ucount6000,"\t",	$Ucount6050,"\t",	$Ucount6100,"\t",	$Ucount6150,"\t",	$Ucount6200,"\t",	$Ucount6250,"\t",	$Ucount6300,"\t",	$Ucount6350,"\t",	$Ucount6400,"\t",	$Ucount6450,"\t",	$Ucount6500,"\t",	$Ucount6550,"\t",	$Ucount6600,"\t",	$Ucount6650,"\t",	$Ucount6700,"\t",	$Ucount6750,"\t",	$Ucount6800,"\t",	$Ucount6850,"\t",	$Ucount6900,"\t",	$Ucount6950,"\t",	$Ucount7000,"\t",	$Ucount7050,"\t",	$Ucount7100,"\t",	$Ucount7150,"\t",	$Ucount7200,"\t",	$Ucount7250,"\t",	$Ucount7300,"\t",	$Ucount7350,"\t",	$Ucount7400,"\t",	$Ucount7450,"\t",	$Ucount7500,"\t",	$Ucount7550,"\t",	$Ucount7600,"\t",	$Ucount7650,"\t",	$Ucount7700,"\t",	$Ucount7750,"\t",	$Ucount7800,"\t",	$Ucount7850,"\t",	$Ucount7900,"\t",	$Ucount7950,"\t",	$Ucount8000,"\t",	$Ucount8050,"\t",	$Ucount8100,"\t",	$Ucount8150,"\t",	$Ucount8200,"\t",	$Ucount8250,"\t",	$Ucount8300,"\t",	$Ucount8350,"\t",	$Ucount8400,"\t",	$Ucount8450,"\t",	$Ucount8500,"\t",	$Ucount8550,"\t",	$Ucount8600,"\t",	$Ucount8650,"\t",	$Ucount8700,"\t",	$Ucount8750,"\t",	$Ucount8800,"\t",	$Ucount8850,"\t",	$Ucount8900,"\t",	$Ucount8950,"\t",	$Ucount9000,"\t",	$Ucount9050,"\t",	$Ucount9100,"\t",	$Ucount9150,"\t",	$Ucount9200,"\t",	$Ucount9250,"\t",	$Ucount9300,"\t",	$Ucount9350,"\t",	$Ucount9400,"\t",	$Ucount9450,"\t",	$Ucount9500,"\t",	$Ucount9550,"\t",	$Ucount9600,"\t",	$Ucount9650,"\t",	$Ucount9700,"\t",	$Ucount9750,"\t",	$Ucount9800,"\t",	$Ucount9850,"\t",	$Ucount9900,"\t",	$Ucount9950,"\t",	$Ucount10000;
 print OUT $Ucount10000,"\t",	$Ucount9900,"\t",	$Ucount9800,"\t",	$Ucount9700,"\t",	$Ucount9600,"\t",	$Ucount9500,"\t",	$Ucount9400,"\t",	$Ucount9300,"\t",	$Ucount9200,"\t",	$Ucount9100,"\t",	$Ucount9000,"\t",	$Ucount8900,"\t",	$Ucount8800,"\t",	$Ucount8700,"\t",	$Ucount8600,"\t",	$Ucount8500,"\t",	$Ucount8400,"\t",	$Ucount8300,"\t",	$Ucount8200,"\t",	$Ucount8100,"\t",	$Ucount8000,"\t",	$Ucount7900,"\t",	$Ucount7800,"\t",	$Ucount7700,"\t",	$Ucount7600,"\t",	$Ucount7500,"\t",	$Ucount7400,"\t",	$Ucount7300,"\t",	$Ucount7200,"\t",	$Ucount7100,"\t",	$Ucount7000,"\t",	$Ucount6900,"\t",	$Ucount6800,"\t",	$Ucount6700,"\t",	$Ucount6600,"\t",	$Ucount6500,"\t",	$Ucount6400,"\t",	$Ucount6300,"\t",	$Ucount6200,"\t",	$Ucount6100,"\t",	$Ucount6000,"\t",	$Ucount5900,"\t",	$Ucount5800,"\t",	$Ucount5700,"\t",	$Ucount5600,"\t",	$Ucount5500,"\t",	$Ucount5400,"\t",	$Ucount5300,"\t",	$Ucount5200,"\t",	$Ucount5100,"\t",	$Ucount5000,"\t",	$Ucount4900,"\t",	$Ucount4800,"\t",	$Ucount4700,"\t",	$Ucount4600,"\t",	$Ucount4500,"\t",	$Ucount4400,"\t",	$Ucount4300,"\t",	$Ucount4200,"\t",	$Ucount4100,"\t",	$Ucount4000,"\t",	$Ucount3900,"\t",	$Ucount3800,"\t",	$Ucount3700,"\t",	$Ucount3600,"\t",	$Ucount3500,"\t",	$Ucount3400,"\t",	$Ucount3300,"\t",	$Ucount3200,"\t",	$Ucount3100,"\t",	$Ucount3000,"\t",	$Ucount2900,"\t",	$Ucount2800,"\t",	$Ucount2700,"\t",	$Ucount2600,"\t",	$Ucount2500,"\t",	$Ucount2400,"\t",	$Ucount2300,"\t",	$Ucount2200,"\t",	$Ucount2100,"\t",	$Ucount2000,"\t",	$Ucount1900,"\t",	$Ucount1800,"\t",	$Ucount1700,"\t",	$Ucount1600,"\t",	$Ucount1500,"\t",	$Ucount1400,"\t",	$Ucount1300,"\t",	$Ucount1200,"\t",	$Ucount1100,"\t",	$Ucount1000,"\t",	$Ucount900,"\t",	$Ucount800,"\t",	$Ucount700,"\t",	$Ucount600,"\t",	$Ucount500,"\t",	$Ucount400,"\t",	$Ucount300,"\t",	$Ucount200,"\t",	$Ucount100,"\n";

#}
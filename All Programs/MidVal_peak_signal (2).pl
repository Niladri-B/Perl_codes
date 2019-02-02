#usr/bin/perl

#Code to compute mid value of start and end co-ordinates 

use 5.014;
use warnings;

#Assign filename to variable
my $file = 'total_pooled.broadPeak';

#Open file
open my $fh, '<', $file or die $!;

#Open output file
open OUT1,">MidVal_peak_signal_chr1.out" or die $!;
open OUT2,">MidVal_peak_signal_chr2.out" or die $!;
open OUT3,">MidVal_peak_signal_chr3.out" or die $!;
open OUT4,">MidVal_peak_signal_chr4.out" or die $!;
open OUT5,">MidVal_peak_signal_chr5.out" or die $!;
open OUT6,">MidVal_peak_signal_chr6.out" or die $!;
open OUT7,">MidVal_peak_signal_chr7.out" or die $!;
open OUT8,">MidVal_peak_signal_chr8.out" or die $!;
open OUT9,">MidVal_peak_signal_chr9.out" or die $!;
open OUT10,">MidVal_peak_signal_chr10.out" or die $!;
open OUT11,">MidVal_peak_signal_chr11.out" or die $!;
open OUT12,">MidVal_peak_signal_chr12.out" or die $!;
open OUT13,">MidVal_peak_signal_chr13.out" or die $!;
open OUT14,">MidVal_peak_signal_chr14.out" or die $!;
open OUT15,">MidVal_peak_signal_chr15.out" or die $!;
open OUT16,">MidVal_peak_signal_chr16.out" or die $!;
open OUT17,">MidVal_peak_signal_chr17.out" or die $!;
open OUT18,">MidVal_peak_signal_chr18.out" or die $!;
open OUT19,">MidVal_peak_signal_chr19.out" or die $!;
open OUT20,">MidVal_peak_signal_chr20.out" or die $!;
open OUT21,">MidVal_peak_signal_chr21.out" or die $!;
open OUT22,">MidVal_peak_signal_chr22.out" or die $!;
open OUT23,">MidVal_peak_signal_chr23.out" or die $!;

		

	

	#Read in the data
	while (<$fh>){
		
		my @val = split;
		#say "@val";
		
		#my  $midval = int ($val[1]+(($val[2]-$val[1])/2));
		my  $midval = int (($val[1]+(($val[2]-$val[1])/2)+0.5));
		
		
		if ($val[0] eq "chr1"){
			say OUT1 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr2"){
			say OUT2 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr3"){
			say OUT3 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr4"){
			say OUT4 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr5"){
			say OUT5 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr6"){
			say OUT6 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr7"){
			say OUT7 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr8"){
			say OUT8 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr9"){
			say OUT9 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr10"){
			say OUT10 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr11"){
			say OUT11 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr12"){
			say OUT12 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr13"){
			say OUT13 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr14"){
			say OUT14 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr15"){
			say OUT15 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr16"){
			say OUT16 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr17"){
			say OUT17 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr18"){
			say OUT18 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr19"){
			say OUT19 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr20"){
			say OUT20 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr21"){
			say OUT21 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chr22"){
			say OUT22 $val[0],"\t",$midval,"\t",$val[6];
		}elsif($val[0] eq "chrX"){
			say OUT23 $val[0],"\t",$midval,"\t",$val[6];
		}
		
	}

	




exit;


































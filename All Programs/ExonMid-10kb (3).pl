use 5.014;
use warnings;

#Assign filename
my $file = 'Unique_LSD1_in_all_5_UTR.out' ;

#Open filename
open my $fh, '<', $file or die $!;

#Open outputfile
open OUT1, ">5_UTR_Mid-10kb_chr1_mod.out" or die $!;
open OUT2, ">5_UTR_Mid-10kb_chr2_mod.out" or die $!;
open OUT3, ">5_UTR_Mid-10kb_chr3_mod.out" or die $!;
open OUT4, ">5_UTR_Mid-10kb_chr4_mod.out" or die $!;
open OUT5, ">5_UTR_Mid-10kb_chr5_mod.out" or die $!;
open OUT6, ">5_UTR_Mid-10kb_chr6_mod.out" or die $!;
open OUT7, ">5_UTR_Mid-10kb_chr7_mod.out" or die $!;
open OUT8, ">5_UTR_Mid-10kb_chr8_mod.out" or die $!;
open OUT9, ">5_UTR_Mid-10kb_chr9_mod.out" or die $!;
open OUT10, ">5_UTR_Mid-10kb_chr10_mod.out" or die $!;
open OUT11, ">5_UTR_Mid-10kb_chr11_mod.out" or die $!;
open OUT12, ">5_UTR_Mid-10kb_chr12_mod.out" or die $!;
open OUT13, ">5_UTR_Mid-10kb_chr13_mod.out" or die $!;
open OUT14, ">5_UTR_Mid-10kb_chr14_mod.out" or die $!;
open OUT15, ">5_UTR_Mid-10kb_chr15_mod.out" or die $!;
open OUT16, ">5_UTR_Mid-10kb_chr16_mod.out" or die $!;
open OUT17, ">5_UTR_Mid-10kb_chr17_mod.out" or die $!;
open OUT18, ">5_UTR_Mid-10kb_chr18_mod.out" or die $!;
open OUT19, ">5_UTR_Mid-10kb_chr19_mod.out" or die $!;
open OUT20, ">5_UTR_Mid-10kb_chr20_mod.out" or die $!;
open OUT21, ">5_UTR_Mid-10kb_chr21_mod.out" or die $!;
open OUT22, ">5_UTR_Mid-10kb_chr22_mod.out" or die $!;
open OUT23, ">5_UTR_Mid-10kb_chr23_mod.out" or die $!;
open OUT24, ">5_UTR_Mid-10kb_chr24_mod.out" or die $!;

#Read in file
while(<$fh>){
	my @val = split;
	if($val[0] eq "chr1"){
		say OUT1 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr2"){
		say OUT2 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr3"){
		say OUT3 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr4"){
		say OUT4 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr5"){
		say OUT5 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr6"){
		say OUT6 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr7"){
		say OUT7 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr8"){
		say OUT8 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr9"){
		say OUT9 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr10"){
		say OUT10 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr11"){
		say OUT11 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr12"){
		say OUT12 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr13"){
		say OUT13 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr14"){
		say OUT14 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr15"){
		say OUT15 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr16"){
		say OUT16 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr17"){
		if($val[1]-10000 < 0){
			say OUT17 $val[0],"\t","0";
		}else{
			say OUT17 $val[0],"\t",$val[1]-10000;
		}
		
	}elsif($val[0] eq "chr18"){
		say OUT18 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr19"){
		say OUT19 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr20"){
		say OUT20 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr21"){
		say OUT21 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chr22"){
		say OUT22 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chrX"){
		say OUT23 $val[0],"\t",$val[1]-10000;
	}elsif($val[0] eq "chrY"){
		say OUT24 $val[0],"\t",$val[1]-10000;
	}
                                        
}

#Exit
exit;
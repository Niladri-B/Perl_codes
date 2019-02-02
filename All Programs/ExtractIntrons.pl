use 5.014;
use warnings;

#Trial code to generate intron coordinates#WORKS

#Assign filename
my $file = "Input_File.txt";

#Open file 
open my $fh, '<', $file or die $!;

#Open output
#open OUT, ">Out_$file" or die $!;
#open OUT1, ">Intron_Start.out" or die $!;#Intron start = exon end cord-1
open OUT2, ">Intron_End.out" or die $!;#Intron end = exon start coord+1

#Read in file
while(<$fh>){
	my @val = split;
	#say OUT $val[0],"\t",$val[1],"\t",$val[2],"\t",$val[3],"\t",$val[4],"\t",$val[5];
	#say OUT $val[3],"\t",$val[4];
	
	my @xon_s = split ",",$val[3];#Split on comma to extract exon starts
	#say OUT join "\t", @xon_s;
	
	my @xon_e = split ",",$val[4];
	
	#say OUT $val[0],"\t",$val[1],"\t",$val[2],"\t",join ("\t",@xon_s,@xon_e);
	
	my @intron_s;
	my @intron_e;
	
	foreach	(@xon_s[1..$#xon_s]){
		#say $_-1;
		push @intron_e,$_-1;
	}
	
	foreach (@xon_e[0..$#xon_e-1]){
		#say $_+1;
		push @intron_s,$_+1;
	}
#Default#	#say OUT $val[0],"\t",$val[1],"\t",join (",",@intron_s),"\t",join (",",@intron_e);
		#say OUT1 $val[1],"\t",join("\t",@intron_s);#IntronStart#
		say OUT2 $val[1],"\t",join("\t",@intron_e);#IntronEnd#
}	

#Exit
exit;
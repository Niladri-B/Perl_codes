#Code to find PG4 coordinates in promoters

use 5.014;
use warnings;

#Assign filenames
my $file1 = '+_chr10_SA.txt' || die $!;
my $file2 = '+_chr10all_PG4_UCSC_hg19.txt' || die $!;

#Open files
open my $fh1, '<' , $file1 || die $!;
open my $fh2, '<' , $file2 || die $!;

#Open output
open OUT, ">G4_coordinates_promoters_1_$file1.out" || die $!;

my @TSS;
my @G4;
#Read files
while(<$fh1>){
	my @val1 = split;
	push @TSS, $val1[1],"\t",$val1[3],"\n";
} 

say OUT $TSS[0],"\t",$TSS[2];
 # say OUT $TSS[4],"\t",$TSS[6];
 # say OUT $TSS[8],"\t",$TSS[10];
#say OUT @TSS;


while(<$fh2>){
           my @val2 = split;
           push @G4, $val2[1],"\t",$val2[2],"\n";
          }
          
          say OUT $G4[0],"\t",$G4[2];
          
for(my $i = 0; $i <= $#TSS; $i += 4){
           for(my $j = 0; $j <= $#TSS; $j += 4){
           if (($G4[$j] >> $TSS[$i]) && ($G4[$j] << $TSS[$i+2])){
                      say OUT "Aa","\t",$G4[$j],"\t",$G4[$j+2]
           }
}
}

                      


# #Read files
# while(<$fh2>){
	# chomp ;
	# my %data2; #File containing G4 coordinates
	# my ($key2,$val2) = (split) [1,2];
	# $data2{$key2} = $val2;
	
	# #say OUT $key2,"\t",$val2;
	
	
 # while(<$fh1>){
	 # chomp ;
	 # my %data1; #File containing TSS
	 # my ($key1, $val1) = (split) [1,3];
	 # $data1{$key1} = $val1;
	
	# #say OUT $key1,"\t",$val1;
	# #Compare hashes
	# if ($data1{$key1} > $key2){
	 # say OUT "Yes","\t",$key2,"\t",$data2{$key2}
	 # }
# }
	
	
# }





#Exit
exit;	
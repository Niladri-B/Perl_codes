use strict;
use warnings;

#Trial code to concatenate all the output files into a single big file

#Initialize loop
for (my $j = 1; $j <= 1000; $j++){
	#my %hash;
	my @BigVals;
		for(my $i =1; $i <=23; $i++){
		
		open OUT, ">Random_H3K4me1_G4_distance_ALL_$j.out" or die $!;
		
		my $file = "H3K4me1_g4_distance_trial_$j=chr$i.out";
		open my $fh, '<', $file or die $!;
		
		
		while(<$fh>){
			chomp;
			my @val = split;
			#my $upstream;
			#say join("\t",@val);
			#push @{$hash{$key}},$value;
			#$bef=defined $bef?$bef-$v:"No_match"; #If value before ? TRUE, do stuff before :, ELSE do stuff after : ##TEMPLATE##
			
			# if($val[4] =~ /^No_Match$/){
				# $upstream = $&;
			# }else{
				# $upstream = abs $val[4];
			# }
			my $upstream = ($val[4] =~/\W/)? abs $val[4]:"No_Match";
			push @BigVals,$val[0],"\t",$val[1],"\t",$val[2],"\t",$val[3],"\t",$upstream,"\n";
		}
	}#say OUT %hash;
	print OUT @BigVals,"\n";
}
			
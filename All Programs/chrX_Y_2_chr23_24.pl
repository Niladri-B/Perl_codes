use 5.014;
use warnings;

#Code to replace chrX & chrY with chr23 & chr24 respectively in Midpg4 files

#Assign filename
for(my $i = 23; $i <= 24; $i++){
	
	open OUT, ">Mid_mod_pg4chr$i.out" or die $!;
	
	my $file = "Midpg4chr$i.out";
	open my $fh, '<', $file or die $!;
	
	while(<$fh>){
		my @val = split;
		if($val[0] eq 'chrX'){
			say OUT "chr23","\t",$val[1];
		}else{
			say OUT "chr24","\t",$val[1];
		}
	}
}

#Exit
exit;
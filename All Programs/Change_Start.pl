use 5.014;
use warnings;

#Assign loop
for(my $i=1; $i<=23; $i++){
	
	#Assign filename
	my $file = "SB_chr$i.txt";
	
	#Open file
	open my $fh, '<',$file ;
	
	#Open output
	open OUT, ">Mod_$file" or die $!;
	
	#Read file
	while(<$fh>){
		my @val = split;
		if($val[5] eq "+"){
			say OUT join("\t",@val);
		}elsif($val[5] eq "-"){
			my $start = $val[3]-2000;
			say OUT $val[0],"\t",$start,"\t",$val[2],"\t",$val[3],"\t",$val[4],"\t",$val[5],"\t",$val[6],"\t",$val[7];
		}
	}
}

#Exit
exit;
	
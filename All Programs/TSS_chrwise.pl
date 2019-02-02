use 5.014;
use warnings;

#Assign filename
my $file = 'Genome_Wide_TSS.out' ;

#Open filename
open my $fh, '<', $file or die $!;

#Open outputfile
for(my $i = 24; $i <= 24; $i++){#Loop not incrementing manually increment it after eache xecution
	open OUT, ">TSS_chr$i.out" or die $!;


	#Read in file
	while(<$fh>){
		my @val = split;
		if($val[1] eq "chrY"){
			say OUT $val[0],"\t",$val[1],"\t",$val[2],"\t",$val[3];
		}
	}
}

#Exit;
exit;
use 5.014;
use warnings;
use List::Util qw/shuffle/;

# my @arr =   ("a".."z");
# say "@arr";


#Enter filename
my $file = "Non_LSD1_complex_set_B_genes.out";

#Open file
open my $fh, '<', $file or die $!;

#Read in file
my @arr = <$fh>;

my $i = 0;


while($i < 10){
	
	my @new_shuffle = ();
	my @shuffled = shuffle (@arr);
	push @new_shuffle,(@shuffled[0..271]);
	
	open OUT, ">Output_trial_B_$i.out" or die $!;
	say OUT @new_shuffle or die $!;#no need to interpolate array as it prepends \s character before every gene which makes downstream matching with RPKM gens impossible(b'cuz \s = whitespace = gap)
	$i++
}

#Exit
exit;
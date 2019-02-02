use 5.014;
use warnings;

#Assign filename
my $file = "GC_sample.txt";

#Open file
open my $fh, '<', $file or die $!;

#Read in file
my @file = <$fh>;
chomp @file;#Removes newlines at end

# for(my $i = 0; $i <=5; $i++){
# say $file[$i];
# }

my @header;
my @seq;
for (@file){
	if(/^>.*$/){
		push @header,$_;
	}else{
		push @seq,$_;
	}
}

say @header;
say $seq[0];
		
	


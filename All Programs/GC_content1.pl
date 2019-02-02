use 5.014;
use warnings;

#Trial code to break file into keys and values

#Assign filename
my $file = 'GC_sample.txt';

#Open filename
open my $fh, '<', $file or die $!;

my @arr;
#Read in file
while(<$fh>){
	# $/=">";
	# my @array = split '\n', $_;
	# my $header=shift @array; # Header of the fasta sequence
	# my $seq= join '', @array; # sequence
	# $seq=~s/\s//g;
	# $seq=~s/\*//g;
	
	# my @splh=split '\s', $header;
	# say $seq;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	# $/ = ">";
	# @arr = split '\n',$_;
	# #say $arr[0];
	# my $header;
	# $header = shift @arr;
	# #say $header;
	# my $seq;
	# $seq = join '',@arr;
	# say $seq;
	
}
































# my %hash;
# my $key;


# #Read in file
# while(my $line = <$fh>){
	# if($line =~ m/^>.*\n/){
		# ($key) = $&;
		# $hash{$key} = [];
		
		# } else {
        # $line =~ s/^\s+//;
        # push @{ $hash{$key} }, $line;
		
		
		
		
		
	# # }elsif($line =~ m/^[ATCG]/){
		# # push @{ $hash{$key} } ,$line;
	# }
# }

# #say %hash;
# say values %hash;

#Exit
exit;

use 5.014;
use warnings;

#Practice program for pattern searching and matching

my $data = "aaaaatttttaaaaa";
my $pattern = "ttt";
say "String is : $data";
say "Pattern to search is : $pattern";

if($data =~ /$pattern/){
	my $found = index  $data,$pattern;
	say "$pattern exists in $data at $found";
	
}else{
	say "$pattern does not exist in $data";
}


$_ = "AAATTTTGGG";
# if (/([a-z]{3})/ig){
	# say "\n\n\n\nMatch exists : $1";
# }else{
	# say "\n\n\n\nMatch does not exist";
# }

my @matches;
while(/([a-z]{4})/ig){
	push (@matches,$1);
}

say"\n\n\n\n @matches";
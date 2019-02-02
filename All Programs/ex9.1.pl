use 5.014;
use warnings;

$_ = "barneyfredbarney";
my $what = "(fred|barney)";

if(/$what{3}/){
	say "Success";
}else{
	say "Sorry, pattern match was not successful";
}

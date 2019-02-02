use 5.014;
use warnings;

#Practice program for subroutine

say "Initial value : " , my $i = 5;

say "Sum : " ,sum($i);
say "Square : ",square($i);

##########################
#Subroutines
##########################

sub sum{
	
	my($input) = @_;#VERY IMPORTANT TO PUT () otherwise values especially array values wont get completely passed, only 1 value will be passed
	my $sum = $input + 5;
	return $sum;
}


sub square {
	
	my($input) = @_;
	my $square = $input * $input;
	return $square;
}
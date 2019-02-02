use 5.014;
use warnings;

#Practice program to just get some fingers moving

my @arr = qw/1 2 3 4/;

my @result = modify_array(@arr);
print "@result";

##############
#Subroutine
##############

sub modify_array{
	
	my(@data) = @_;
	
	my @new;
	foreach(@data){
		push @new, $_*2;
	}
	
	return @new;
}


#Exit
exit;
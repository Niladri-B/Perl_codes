use 5.014;
use warnings;
#use List::Util qw/sum/;

#Input data
my @no = qw/2 2 5 4 4/;
my @fred = (1..10);
my @barney = (100,1..10);

#Output
say "Numbers entered were : @barney";

#my $average = average (\@no);
my $average2 = average2(@barney);
say "Average in the list is : $average2";

#say "Average is $average";

my @abv_avg = abv_avg ($average2,@barney); #Output collected in list b'cuz >1 no. cud b > avg # if string given, then list elements are returned in a scalar context i.e no. of elements are returned
say "Number(s) in the list above average are : @abv_avg";

####################
#Subroutine 1
###############

#Average

sub average2{
	
	my (@input) = @_;#() is essential # Only 1 element gets passed otherwise
	my $sum = 0;#intitialize sum variable
	my $count = 0;#initialize count variable
	
	for (@input){
		$sum += $_;#every time thru d loop, add $_ element
		$count++#every time through the loop, increase $count 
	}
	say "Auto sum is : $sum";
	say "Auto element count is : $count";
	say "Auto average is : ", $sum/$count;
	return $sum/$count;

}

#############
#Subroutine2
#############

sub abv_avg{
	
	my($avg, @list) = @_;
	my @abv_avg_nos = ();
	say "\nAverage in 2nd sub is $avg";
	say "List of nos is @list";
	
	
	for (@list){
		push @abv_avg_nos,$_ if $_ > $avg;
	}
	return @abv_avg_nos;
}












# sub average {
	
	# my ($input) = @_;#() is essential # Only 1 element gets passed otherwise
	# say "Subroutine : @$input";
	# say "1st:$$input[0] 2nd:$$input[1] 3rd:$$input[2]";
	# my $sum = $$input[0]+$$input[1]+$$input[2] ;
	# say "Manual sum : $sum";
	# my $sum2 = sum($$input[0]..$#$input);
	# say $sum2;
	
# }
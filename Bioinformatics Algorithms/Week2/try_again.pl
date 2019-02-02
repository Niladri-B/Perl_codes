use 5.014;
use diagnostics;
use List::Util qw/sum/;
use Array::Utils qw(:all);

#my @list = qw/1 2 3 4/;
my @list = qw / 57 71 87 97 99 101 103 113 114 115 128 129 131 137 147 156 163 186/;
my @given = qw / 0 113 128 186 241 299 314 327/;
my $max = 427;

open OUT, ">Output_try_again.out" or die $!;

while( scalar @list != 0){# while list is non-empty
	my @list = expand(@list);# expand list
	#say join "\n", @list;
	foreach (@list){
		my @masses = split "-", $_;
		my @common = intersect(@list, @masses);
		say @common;
			
			
	}
	
	
}



#############################
#Subroutine
#############################
sub expand {
	
	my (@data) = @_;
	my @mass = qw/ 57 71 87 97 99 101 103 113 114 115 128 129 131 137 147 156 163 186/;
	my @expand;
	my $i = 0;	
		while ($i <= $#data){
			my $j = 0;# J needs to be here otherwise it is not incrementing # Because here it acts to reset value of j back to 0 once the j loop exits with j= 4 # if this is not here, j remains at 4 and only i loop gets executed
			while ($j <= $#mass){
				push @expand, join "-", $data[$i],$mass[$j];
				$j++;
			}
			$i++;
		}
		return @expand;
}#Subroutine ends
		
		
	
	
	# #say "@masses";
		# my $sum = sum(@masses);
			# if ($sum == $max) {
			# print OUT $_,"\n";
			
			# } 
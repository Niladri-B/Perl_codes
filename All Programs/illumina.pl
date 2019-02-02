use 5.014;
use warnings;

#Trial script to convert Illumina quality score into Phred Quality score
print "Please enter Illumina quality score character to convert : ";
my $q = <>;
my $result = illumina2phred($q);

#my $Q = ord($q) - 33;
print "Illumina quality score is : ",$q;
say "Phred quality score is : ",$result;

# do{
	# print "Do you want more? : ";
	# my $i = <>;
	
		# if ($i =~ /^y.*/ ) {
		# print "Please enter Illumina quality score character to convert : ";
		# my $s = <>;
		
		# print "Illumina quality score is : ",$s;
		# my $result1 = illumina2phred($s);
		# say "Phred quality score is : ", $result1;
		
		# }elsif($i =~ /!^y.*/ ){
			# last;
		# }
	# };

#Trial script to convert Phred Quality score into Illumina quality score

say "\nPlease enter Phred quality score to convert : ";
my $phred = <>;#Phred quality score # must be non negative
my $illumina = chr ( ( $phred <= 93? $phred : 93)  + 33);
say $illumina;



#Subroutine
sub illumina2phred {
	
	my $input = @_;
		
		my $Q = ord($input) - 33;
		return $Q;
		
	}
	

#Exit
exit;
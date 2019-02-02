use 5.014;
use warnings;
use Array::Utils qw(:all);

my @spectrum = qw/ 0 113 128 186 241 299 314 427/;
my @list = qw/ 0 /;

while(scalar @list != 0){
	@list =expand(\@spectrum, \@list);
	}
	
	
###################
#Subroutine
###################

sub expand {

	my ($given, $expanding_list) = @_;
	
	my @aminos = qw/57 71 87 97 99 101 103 113 114 115 128 129 131 137 147 156 163 186/;
	
	#need a way to append to @expanding_list THOSE elements in @aminos which INTERSECT with @given
	#say "@$given";
	my @intersect = intersect (@$given, @aminos);
	#say "@intersect";
	
	foreach (@intersect){
		push @$expanding_list, $_;
	
	}
	
	say "@$expanding_list";
	
	}
	
	
	
use 5.014;
use warnings;

greet ( "Fred" );
greet ( "Barney" );
greet ( "Wilma" );
greet ( "Betty" );


#Subroutine#
#---------1

sub greet {
	
	my ($name) = @_;#Remember to PUT BRACKETS gRRR
	state @name_list;
	
	push @name_list,$name;
	
	#say "@name_list";
	print "Hi $name!";
	
	if ($#name_list < 1){
		print "You are the first one here!\n";
	}else{
		print "I've seen @name_list\n";
	}
	
	
}
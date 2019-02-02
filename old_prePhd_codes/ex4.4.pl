use 5.014;
use warnings;

say greet( "Fred" );
say greet( "Barney" );

############
#Subroutine1
#############

sub greet{
	
	my ($name) = @_;#NE PAS OUBLIEZ LES BRACKETS!
	state @name_list;#Important NEW! # Retains value between calls
	
	push @name_list, $name;
	my $i = 0;
	
	#say "@name_list";#To check elements in list
	
		
	if ($#name_list == 0){
		return "Hi $name_list[$i]! You are the first person here";
	}else{
		return "Hi $name_list[$i+1]! $name_list[$i] is also here!";
	}
	
}
	

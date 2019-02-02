#usr/bin/perl

use strict;
use diagnostics;

#Example 11.3
#Demonstrate a recursive subroutine to list a subtree of a filesystem

use BeginPerlBioinfo;

print "Please enter folder to open : ";
chomp(my $i = <>);

list_recursively($i);

exit;

#########################
#Subroutine
#########################

#list_recursively
#
# list the contents of a directory,
#	recursively listing the contents of any subdirectories

sub list_recursively {
	
	my ($directory) = @_;
	
	my @files = (  );
	
	#Open the directory
	opendir (DIRECTORY ,$directory) or die qw/Can't_open_directory_$directory/;
	 # unless(opendir(DIRECTORY, $directory)) {
        # print "Cannot open directory $directory!\n";
        # exit;
    # }
   
	
	#Read the directory ignoring special entries "." and ".."
	@files = grep (!/^\.\.?$/, readdir (DIRECTORY));
	
	closedir (DIRECTORY);
	
	#If file,print its name
	#If directory, recursively print its contents
	
	#Notice that we need to prepend the directory name!
	foreach my $file(@files){
		
		#If the directory entry is a regular file
		if(-f "$directory/$file"){
			
			print "$directory/$file\n";
			
			# if (-f "$directory/$file") {
    
            # print "$directory/$file\n";
        
			
		#if the directory is a subdirectory
	}elsif(-d "$directory/$file"){
		
		#Here is the recursive call to this subroutine
		list_recursively("$directory/$file");
	}
}
}
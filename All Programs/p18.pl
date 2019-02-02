#!/usr/bin/perl

#this code is example 10.1 from book

use strict;
use warnings;
use BeginPerlBioinfo;

#declare and intialize the variables
my @annotation = ();
my $sequence = '';
my $filename = 'record.gb'

parse1 (\@annotation, \$sequence, $filename); #call to subroutine #$filename is pass by value , others are pass by reference

#print the annotaition and then
# print the DNA in new format just to check if we got it okay.

print @annotation;
print_sequence($sequence, 50);

exit;

#########################
#Subroutine
#########################

#parse1
#
#- parse annotation and sequence from GenBank record

sub parse1{
	
	my($annotation, $dna, $filename) = @_ ; # $dna = $sequence in main subroutine call
	
	#$annotation- reference to array
	#$dna	    - reference to scalar
	#$filename  - scalar
	
	#declare and intialize variables
	my $in_seq = 0; #Flag variable
	my @genbankfile = ();
	
	#Get the GenBank data into an array from a file
	@genbankfile = get_file_data($filename);
	
	#Extract all the sequence lines
	foreach my $line (@genbankfile){
		
		if( $line =~ /^\/\/\n/) { # here it means the last end of file identifier i.e // # // is followed by a new line and hence the pattern we are tyring to match 
						#...is //\n # We do this by assigning backslah ie \ to denote /. And a second \ to denote /\n in entirety.
			last; # last is used to exit a given loop completely # next is used for doing next iteration within a loop, refer Ch9, eg 9.2
		}elsif ($in_seq){
			$$dna .= $line; #add current line to $$dna
		}elsif( $line =~ /^ORIGIN/){#Origin denotes beginning of sequence data
			$in_seq = 1;
		}else{
			push (@$annotation, $line); #add current line to @annotation
		}
	}
	
	#remove whitespace and line numbers from DNA sequence
	$$dna =~ s/[\s0-9]//g;
}


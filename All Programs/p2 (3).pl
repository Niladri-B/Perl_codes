#usr/bin/perl

use 5.012;
use warnings;
use List::Util qw/first/;

my $file1 = 'chr1trialS.out';
my $file2 = 'b1.wig';

open my $fh1,'<',$file1 or die qw (Can't_open_file_$file1);
open my $fh2,'<',$file2 or die qw/Can't open file $file2/;

#code to test proper reading and output of complete file
# my @arr1 =<$fh1>;
# my @arr2=<$fh2>;

# say @arr1;
# say;
# say @arr2;


#code to check proper display of 2nd element of $file1 and 3rd element of $file2

my($start, $end);
while(<$fh1>){
	my @val1 = split;
	 $start = $val1[1];
	 $end = $start + 10;
	say $start,"=>",$end;

}

print "\n\n\n";

	
	my @c_posn;
	my @peak;
	my %lookup;
	my($field2,$field3);
		while(<$fh2>){
			my @val2 = split;
			#say $val2[1],"\t",$val2[2]; 
			
			
			 # push @c_posn,$val2[1];
			 # push @peak, $val2[2];
			 
			 $field2 = $val2[1];
			 $field3 = $val2[2];
			 $lookup{$field2} = $field3;
			
			 
}			
			
			if(first { $_ eq $start}@c_posn) { say "I found it! "}
			
			say %lookup;
			
			my @keys = keys %lookup;
			say "Keys are :";
			say "@keys";
			
			
			my @values = values %lookup;
			say "\nValues are :";
			say "@values";
			#say $start,"=>",$end;
			say "@c_posn";
			say "@peak";
			
			
			
			
			
			
			#$hash{key} =  splice @val2,1,1;
			#say $hash{key};
			#say %hash;
			
			#$hash{value} = splice @val2,1,1;
			#say $hash{value};
			
			#say %hash;
			
			# my @keys = keys %hash;
			# say @keys;
			
			# my @values = values %hash;
			# say @values;
			
			
			#say $start,"=>",$start_10;
			
			# say "Peak value is : $val2[2]";
	
			# do{
			# $totalpeak += $val2[2];
			# $num++;
			# }until($start == $start_10);



exit;
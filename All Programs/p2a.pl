#usr/bin/perl

use 5.012;
use warnings;
use List::Util qw/first/;

my $file1 = 'chr1trialS.out';
my $file2 = 'b1.wig';

open my $fh1,'<',$file1 or die qw (Can't_open_file_$file1);
open my $fh2,'<',$file2 or die qw/Can't open file $file2/;

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

			say %lookup;
			
			my @keys = keys %lookup;
			say "Keys are :";
			say "@keys";
						
			my @values = values %lookup;
			say "\nValues are :";
			say "@values";
			
# File2 data is in %lookup, in the form $lookup{field2} = field3
my $sum_interval = 5;   # number of lines to group into each sum
my $sum_count = 2;      # number of sums to generate
my @sums;               # final results of the operation			

while (my $line = <$fh1>) {
  my @line_sums;
  my $start = (split $line)[1];
  for my $interval_num (0 .. $sum_count - 1) {
    my $cur_sum = 0;
    my $interval_start = $start + ($sum_interval * $interval_num);
    for (0 .. $sum_interval - 1) {
      # use || instead of // for Perl older than 5.10
      $cur_sum += $lookup{$interval_start + $_} // 0;
    }
    push @line_sums, $cur_sum;
  }
  push @sums, \@line_sums;
}
use Data::Dumper; print Dumper(\@sums);
use 5.014;
use warnings;

#Extension of previous code to determine total kmers found
my $file = "Output_clump_finding.out";
open my $fh, '<', $file or die $!;

 my @file = <$fh>;
# my $file_string = join "", @file;
#say $file;

# my @file;
# while (<$fh>){
	# push @file, $_
# }


my $file_string = join "", @file;
 my @data = split " ", $file_string;
 say scalar @data;
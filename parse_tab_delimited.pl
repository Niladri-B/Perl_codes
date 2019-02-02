use 5.014;
use warnings;

#Script to extract a particular column

#file name
my $file = "ckqny.scz2snpres_edit";

#open file
open my $fh, '<', $file or die $!;

#open output
open OUT, ">parsed_$file.out" or die $!;

#Read in file
while(<$fh>){
    my @arr = split;
    next if $arr[0] eq "snpid";
    #say OUT $arr[0];
    say $arr[0];
}

#Exit
exit;
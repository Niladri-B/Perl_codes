use 5.014;
use warnings;

#Assign filename
my $file = 's6.wig';

#Open file
open my $fh, '<', $file or die $!;
open OUT1, ">S6chr1.out" or die $!;
# open OUT2, ">S6chr2.out" or die $!;
# open OUT3, ">S6chr3.out" or die $!;
# open OUT4, ">S6chr4.out" or die $!;
# open OUT5, ">S6chr5.out" or die $!;
# open OUT6, ">S6chr6.out" or die $!;
# open OUT7, ">S6chr7.out" or die $!;
# open OUT8, ">S6chr8.out" or die $!;
# open OUT9, ">S6chr9.out" or die $!;
# open OUT10, ">S6chr10.out" or die $!;
# open OUT11, ">S6chr11.out" or die $!;
# open OUT12, ">S6chr12.out" or die $!;
# open OUT13, ">S6chr13.out" or die $!;
# open OUT14, ">S6chr14.out" or die $!;
# open OUT15, ">S6chr15.out" or die $!;
# open OUT16, ">S6chr16.out" or die $!;
# open OUT17, ">S6chr17.out" or die $!;
# open OUT18, ">S6chr18.out" or die $!;
# open OUT19, ">S6chr19.out" or die $!;
# open OUT20, ">S6chr20.out" or die $!;
# open OUT21, ">S6chr21.out" or die $!;
# open OUT22, ">S6chr22.out" or die $!;
# open OUT23, ">S6chrX.out" or die $!;
# open OUT24, ">S6chrY.out" or die $!;

#Read in file


while (<$fh>) {
    if (/^(variableStep chrom=chr1)$/) {
        my @grabbed; #Initialize array to store lines
        #push @grabbed, $_;
        while (<$fh>) { #Read subsequent lines after regex line by line
            last if /^$/; #Exit this loop if blank line encountered
            push @grabbed, $_; #If blank line not encountered, push into array the line
        }print OUT1 @grabbed; #Print out the array containing the lines #Note: If last is written after push, even the blank line would be added, which is not what you want
    }#elsif (/^(variableStep chrom=chr2)$/){
        # my @grabbed;
        # #push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT2 @grabbed;
    # }elsif (/^(variableStep chrom=chr3)$/){
        # my @grabbed;
        # #push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT3 @grabbed;
    # }elsif (/^(variableStep chrom=chr4)$/){
        # my @grabbed;
        # #push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT4 @grabbed;
    # }elsif (/^(variableStep chrom=chr5)$/){
        # my @grabbed;
        # #push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT5 @grabbed;
    # }elsif (/^(variableStep chrom=chr6)$/){
        # my @grabbed;
        # #push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT6 @grabbed;
    # }elsif (/^(variableStep chrom=chr7)$/){
        # my @grabbed;
        # #push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT7 @grabbed;
    # }elsif (/^(variableStep chrom=chr8)$/){
        # my @grabbed;
        # #push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT8 @grabbed;
    # }elsif (/^(variableStep chrom=chr9)$/){
        # my @grabbed;
        # #push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT9 @grabbed;
    # }
    # elsif ( /^(variableStep chrom=chr10)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT10 @grabbed;
    # }elsif ( /^(variableStep chrom=chr11)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT11 @grabbed;
    # }elsif ( /^(variableStep chrom=chr12)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT12 @grabbed;
    # }elsif ( /^(variableStep chrom=chr13)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT13 @grabbed;
    # }elsif ( /^(variableStep chrom=chr14)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT14 @grabbed;
    # }elsif ( /^(variableStep chrom=chr15)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT15 @grabbed;
    # }elsif ( /^(variableStep chrom=chr16)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT16 @grabbed;
    # }elsif ( /^(variableStep chrom=chr17)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT17 @grabbed;
    # }elsif ( /^(variableStep chrom=chr18)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT18 @grabbed;
    # }elsif ( /^(variableStep chrom=chr19)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT19 @grabbed;
    # }elsif ( /^(variableStep chrom=chr20)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT20 @grabbed;
    # }elsif ( /^(variableStep chrom=chr21)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT21 @grabbed;
    # }elsif ( /^(variableStep chrom=chr22)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT22 @grabbed;
    # }elsif ( /^(variableStep chrom=chrX)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT23 @grabbed;
    # }elsif ( /^(variableStep chrom=chrY)$/){
        # my @grabbed;
        # #push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT24 @grabbed;
    #}
}

exit;






	
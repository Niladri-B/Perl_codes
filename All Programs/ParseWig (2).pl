use 5.014;
use diagnostics;

#Assign filename
my $file = 'S3small.txt';

#Open file
open my $fh, '<', $file or die $!;
open OUT1, ">S3chr1A.out" or die $!;
open OUT2, ">S3chr2A.out" or die $!;
# open OUT3, ">S3chr3.out" or die $!;
# open OUT4, ">S3chr4.out" or die $!;
# open OUT5, ">S3chr5.out" or die $!;
# open OUT6, ">S3chr6.out" or die $!;
# open OUT7, ">S3chr7.out" or die $!;
# open OUT8, ">S3chr8.out" or die $!;
# open OUT9, ">S3chr9.out" or die $!;
open OUT10, ">S3chr10A.out" or die $!;
# open OUT11, ">S3chr11.out" or die $!;
# open OUT12, ">S3chr12.out" or die $!;
# open OUT13, ">S3chr13.out" or die $!;
# open OUT14, ">S3chr14.out" or die $!;
# open OUT15, ">S3chr15.out" or die $!;
# open OUT16, ">S3chr16.out" or die $!;
# open OUT17, ">S3chr17.out" or die $!;
# open OUT18, ">S3chr18.out" or die $!;
# open OUT19, ">S3chr19.out" or die $!;
# open OUT20, ">S3chr20.out" or die $!;
# open OUT21, ">S3chr21.out" or die $!;
# open OUT22, ">S3chr22.out" or die $!;
# open OUT23, ">S3chrX.out" or die $!;
# open OUT24, ">S3chrY.out" or die $!;

#Read in file


while (<$fh>) {
    if (/^(variableStep chrom=chr1)$/) {
        my @grabbed;
        #push @grabbed, $_;
        while (<$fh>) {
            last if /^$/;
            push @grabbed, $_;
        }say OUT1 @grabbed;
    }elsif (/^(variableStep chrom=chr2)$/){
        my @grabbed;
        #push @grabbed, $_;
        while(<$fh>){
            last if /^$/;
            push @grabbed,$_;
        }say OUT2 @grabbed;
    }#elsif (/^(variableStep chrom=chr3)$/){
        # my @grabbed;
        # push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT3 @grabbed;
    # }elsif (/^(variableStep chrom=chr4)$/){
        # my @grabbed;
        # push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT4 @grabbed;
    # }elsif (/^(variableStep chrom=chr5)$/){
        # my @grabbed;
        # push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT5 @grabbed;
    # }elsif (/^(variableStep chrom=chr6)$/){
        # my @grabbed;
        # push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT6 @grabbed;
    # }elsif (/^(variableStep chrom=chr7)$/){
        # my @grabbed;
        # push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT7 @grabbed;
    # }elsif (/^(variableStep chrom=chr8)$/){
        # my @grabbed;
        # push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT8 @grabbed;
    # }elsif (/^(variableStep chrom=chr9)$/){
        # my @grabbed;
        # push @grabbed, $_;
        # while(<$fh>){
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT9 @grabbed;
    # }
    elsif ( /^(variableStep chrom=chr10)$/){
        my @grabbed;
        #push @grabbed,$_;
        while( <$fh>) {
            last if /^$/;
            push @grabbed,$_;
        }say OUT10 @grabbed;
    }#elsif ( /^(variableStep chrom=chr11)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT11 @grabbed;
    # }elsif ( /^(variableStep chrom=chr12)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT12 @grabbed;
    # }elsif ( /^(variableStep chrom=chr13)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT13 @grabbed;
    # }elsif ( /^(variableStep chrom=chr14)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT14 @grabbed;
    # }elsif ( /^(variableStep chrom=chr15)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT15 @grabbed;
    # }elsif ( /^(variableStep chrom=chr16)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT16 @grabbed;
    # }elsif ( /^(variableStep chrom=chr17)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT17 @grabbed;
    # }elsif ( /^(variableStep chrom=chr18)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT18 @grabbed;
    # }elsif ( /^(variableStep chrom=chr19)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT19 @grabbed;
    # }elsif ( /^(variableStep chrom=chr20)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT20 @grabbed;
    # }elsif ( /^(variableStep chrom=chr21)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT21 @grabbed;
    # }elsif ( /^(variableStep chrom=chr22)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT22 @grabbed;
    # }elsif ( /^(variableStep chrom=chrX)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT23 @grabbed;
    # }elsif ( /^(variableStep chrom=chrY)$/){
        # my @grabbed;
        # push @grabbed,$_;
        # while( <$fh>) {
            # last if /^$/;
            # push @grabbed,$_;
        # }say OUT24 @grabbed;
    # }









}
















# while (<$fh>) {
	
	# if ($_ =~ /^(variableStep chrom=chr1)$/){
		
		# my $nextline = <$fh>;
		# say $nextline;
		
		# }elsif ($_ =~ /^(variableStep chrom=chr2)$/){
		# my $nextline = <$fh>;
		# say $nextline;
			
			
			# }elsif ($_ =~ /^(variableStep chrom=chr10)$/){
			# my $nextline = <$fh>;
			# say $nextline;
			
				# }
			# }
		
		
		
		



































# while ( <$fh>) {
	 # if ( $_ =~ /^(variableStep chrom=chr1)$/){
	 	
		 # #say "Yo baby!";
		 # my $nextline = <$fh>;
		 # say OUT1 $nextline;
		 # next;
	 # }
 # }
	# my @val = split;
	
	# say join "\t", @val ;
	#say $val[1];
	 # if($val[1] eq 'chrom=chr1'){
		  # say OUT1 join ("\t",@val);
		 # }
	



	
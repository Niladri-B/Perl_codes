use 5.014;
use warnings;

#Script to concatenate arrays

#Assign filename
my $f1 = 'COREST_UniquePeaksTSS_chr1.out';
my $f2 = 'COREST_UniquePeaksTSS_chr2.out';
my $f3 = 'COREST_UniquePeaksTSS_chr3.out';
my $f4 = 'COREST_UniquePeaksTSS_chr4.out';
my $f5 = 'COREST_UniquePeaksTSS_chr5.out';
my $f6 = 'COREST_UniquePeaksTSS_chr6.out';
my $f7 = 'COREST_UniquePeaksTSS_chr7.out';
my $f8 = 'COREST_UniquePeaksTSS_chr8.out';
my $f9 = 'COREST_UniquePeaksTSS_chr9.out';
my $f10 = 'COREST_UniquePeaksTSS_chr10.out';
my $f11 = 'COREST_UniquePeaksTSS_chr11.out';
my $f12 = 'COREST_UniquePeaksTSS_chr12.out';
my $f13 = 'COREST_UniquePeaksTSS_chr13.out';
my $f14 = 'COREST_UniquePeaksTSS_chr14.out';
my $f15 = 'COREST_UniquePeaksTSS_chr15.out';
my $f16 = 'COREST_UniquePeaksTSS_chr16.out';
my $f17 = 'COREST_UniquePeaksTSS_chr17.out';
my $f18 = 'COREST_UniquePeaksTSS_chr18.out';
my $f19 = 'COREST_UniquePeaksTSS_chr19.out';
my $f20 = 'COREST_UniquePeaksTSS_chr20.out';
my $f21 = 'COREST_UniquePeaksTSS_chr21.out';
my $f22 = 'COREST_UniquePeaksTSS_chr22.out';
my $fX = 'COREST_UniquePeaksTSS_chr23.out';
#my $fY = 'COREST_UniquePeaksTSS_chrY.out';


#Open
open my $fh1,'<', $f1 or die $!;
open my $fh2,'<', $f2 or die $!;
open my $fh3,'<', $f3 or die $!;
open my $fh4,'<', $f4 or die $!;
open my $fh5,'<', $f5 or die $!;
open my $fh6,'<', $f6 or die $!;
open my $fh7,'<', $f7 or die $!;
open my $fh8,'<', $f8 or die $!;
open my $fh9,'<', $f9 or die $!;
open my $fh10,'<', $f10 or die $!;
open my $fh11,'<', $f11 or die $!;
open my $fh12,'<', $f12 or die $!;
open my $fh13,'<', $f13 or die $!;
open my $fh14,'<', $f14 or die $!;
open my $fh15,'<', $f15 or die $!;
open my $fh16,'<', $f16 or die $!;
open my $fh17,'<', $f17 or die $!;
open my $fh18,'<', $f18 or die $!;
open my $fh19,'<', $f19 or die $!;
open my $fh20,'<', $f20 or die $!;
open my $fh21,'<', $f21 or die $!;
open my $fh22,'<', $f22 or die $!;
open my $fhX,'<', $fX or die $!;
#open my $fhY,'<', $fY or die $!;


#Read into array
my @a1 = <$fh1>;
my @a2 = <$fh2>;
my @a3 = <$fh3>;
my @a4 = <$fh4>;
my @a5 = <$fh5>;
my @a6 = <$fh6>;
my @a7 = <$fh7>;
my @a8 = <$fh8>;
my @a9 = <$fh9>;
my @a10 = <$fh10>;
my @a11 = <$fh11>;
my @a12 = <$fh12>;
my @a13 = <$fh13>;
my @a14 = <$fh14>;
my @a15 = <$fh15>;
my @a16 = <$fh16>;
my @a17 = <$fh17>;
my @a18 = <$fh18>;
my @a19 = <$fh19>;
my @a20 = <$fh20>;
my @a21 = <$fh21>;
my @a22 = <$fh22>;
my @aX = <$fhX>;
#my @aY = <$fhY>;

my @aFINAL = (@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9,@a10,@a11,@a12,@a13,@a14,@a15,@a16,@a17,@a18,@a19,@a20,@a21,@a22,@aX);

#Say 
# say @a1;
# say @a2;

#Open Output file
open OUT,">COREST_UniquePeaks_TSS.out" or die $!;

#Save to output file
say OUT @aFINAL;

#Exit
exit;

use 5.014;
use warnings;

#Script to concatenate arrays

#Assign filename
my $f1 = 'H3K9me3chr1AOUT.out';
my $f2 = 'H3K9me3chr2AOUT.out';
my $f3 = 'H3K9me3chr3AOUT.out';
my $f4 = 'H3K9me3chr4AOUT.out';
my $f5 = 'H3K9me3chr5AOUT.out';
my $f6 = 'H3K9me3chr6AOUT.out';
my $f7 = 'H3K9me3chr7AOUT.out';
my $f8 = 'H3K9me3chr8AOUT.out';
my $f9 = 'H3K9me3chr9AOUT.out';
my $f10 = 'H3K9me3chr10AOUT.out';
my $f11 = 'H3K9me3chr11AOUT.out';
my $f12 = 'H3K9me3chr12AOUT.out';
my $f13 = 'H3K9me3chr13AOUT.out';
my $f14 = 'H3K9me3chr14AOUT.out';
my $f15 = 'H3K9me3chr15AOUT.out';
my $f16 = 'H3K9me3chr16AOUT.out';
my $f17 = 'H3K9me3chr17AOUT.out';
my $f18 = 'H3K9me3chr18AOUT.out';
my $f19 = 'H3K9me3chr19AOUT.out';
my $f20 = 'H3K9me3chr20AOUT.out';
my $f21 = 'H3K9me3chr21AOUT.out';
my $f22 = 'H3K9me3chr22AOUT.out';
my $fX = 'H3K9me3chrXAOUT.out';
my $fY = 'H3K9me3chrYAOUT.out';


#Open files
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
open my $fhY,'<', $fY or die $!;


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
my @aY = <$fhY>;

my @aFINAL = (@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9,@a10,@a11,@a12,@a13,@a14,@a15,@a16,@a17,@a18,@a19,@a20,@a21,@a22,@aX,@aY);

#Open Output file
open OUT,">H3K9me3_chrAll_A.out" or die $!;

#Save to output file
say OUT @aFINAL;

#Exit
exit;

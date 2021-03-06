use 5.014;
use warnings;

#Script to concatenate arrays

#Assign filename
my $f1 = 'H3K4me1chr1BOUT.out';
my $f2 = 'H3K4me1chr2BOUT.out';
my $f3 = 'H3K4me1chr3BOUT.out';
my $f4 = 'H3K4me1chr4BOUT.out';
my $f5 = 'H3K4me1chr5BOUT.out';
my $f6 = 'H3K4me1chr6BOUT.out';
my $f7 = 'H3K4me1chr7BOUT.out';
my $f8 = 'H3K4me1chr8BOUT.out';
my $f9 = 'H3K4me1chr9BOUT.out';
my $f10 = 'H3K4me1chr10BOUT.out';
my $f11 = 'H3K4me1chr11BOUT.out';
my $f12 = 'H3K4me1chr12BOUT.out';
my $f13 = 'H3K4me1chr13BOUT.out';
my $f14 = 'H3K4me1chr14BOUT.out';
my $f15 = 'H3K4me1chr15BOUT.out';
my $f16 = 'H3K4me1chr16BOUT.out';
my $f17 = 'H3K4me1chr17BOUT.out';
my $f18 = 'H3K4me1chr18BOUT.out';
my $f19 = 'H3K4me1chr19BOUT.out';
my $f20 = 'H3K4me1chr20BOUT.out';
my $f21 = 'H3K4me1chr21BOUT.out';
my $f22 = 'H3K4me1chr22BOUT.out';
my $fX = 'H3K4me1chrXBOUT.out';
my $fY = 'H3K4me1chrYBOUT.out';


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
open OUT,">H3K4me1_chrAll_B.out" or die $!;

#Save to output file
say OUT @aFINAL;

#Exit
exit;

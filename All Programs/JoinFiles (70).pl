use 5.014;
use warnings;

#Script to concatenate arrays

#Assign filename
my $f1 = 'H3K4me2_chr1_g4_distance.out';
my $f2 = 'H3K4me2_chr2_g4_distance.out';
my $f3 = 'H3K4me2_chr3_g4_distance.out';
my $f4 = 'H3K4me2_chr4_g4_distance.out';
my $f5 = 'H3K4me2_chr5_g4_distance.out';
my $f6 = 'H3K4me2_chr6_g4_distance.out';
my $f7 = 'H3K4me2_chr7_g4_distance.out';
my $f8 = 'H3K4me2_chr8_g4_distance.out';
my $f9 = 'H3K4me2_chr9_g4_distance.out';
my $f10 = 'H3K4me2_chr10_g4_distance.out';
my $f11 = 'H3K4me2_chr11_g4_distance.out';
my $f12 = 'H3K4me2_chr12_g4_distance.out';
my $f13 = 'H3K4me2_chr13_g4_distance.out';
my $f14 = 'H3K4me2_chr14_g4_distance.out';
my $f15 = 'H3K4me2_chr15_g4_distance.out';
my $f16 = 'H3K4me2_chr16_g4_distance.out';
my $f17 = 'H3K4me2_chr17_g4_distance.out';
my $f18 = 'H3K4me2_chr18_g4_distance.out';
my $f19 = 'H3K4me2_chr19_g4_distance.out';
my $f20 = 'H3K4me2_chr20_g4_distance.out';
my $f21 = 'H3K4me2_chr21_g4_distance.out';
my $f22 = 'H3K4me2_chr22_g4_distance.out';
my $fX = 'H3K4me2_chrX_g4_distance.out';
my $fY = 'H3K4me2_chrY_g4_distance.out';


#Open
open my $fh1,'<', $f1 || die $!;
open my $fh2,'<', $f2 || die $!;
open my $fh3,'<', $f3 || die $!;
open my $fh4,'<', $f4 || die $!;
open my $fh5,'<', $f5 || die $!;
open my $fh6,'<', $f6 || die $!;
open my $fh7,'<', $f7 || die $!;
open my $fh8,'<', $f8 || die $!;
open my $fh9,'<', $f9 || die $!;
open my $fh10,'<', $f10 || die $!;
open my $fh11,'<', $f11 || die $!;
open my $fh12,'<', $f12 || die $!;
open my $fh13,'<', $f13 || die $!;
open my $fh14,'<', $f14 || die $!;
open my $fh15,'<', $f15 || die $!;
open my $fh16,'<', $f16 || die $!;
open my $fh17,'<', $f17 || die $!;
open my $fh18,'<', $f18 || die $!;
open my $fh19,'<', $f19 || die $!;
open my $fh20,'<', $f20 || die $!;
open my $fh21,'<', $f21 || die $!;
open my $fh22,'<', $f22 || die $!;
open my $fhX,'<', $fX || die $!;
open my $fhY,'<', $fY || die $!;


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

#Say 
# say @a1;
# say @a2;

#Open Output file
open OUT,">CombinedChr_H3K4me2+.xls" || die $!;

#Save to output file
say OUT @aFINAL;

#Exit
exit;

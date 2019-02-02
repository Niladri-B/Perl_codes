use 5.014;
use warnings;

#Script to concatenate arrays

#Assign filename
my $f1 = 'LSD1_distance_from_TSS_chr1_B-.out';
my $f2 = 'LSD1_distance_from_TSS_chr2_B-.out';
my $f3 = 'LSD1_distance_from_TSS_chr3_B-.out';
my $f4 = 'LSD1_distance_from_TSS_chr4_B-.out';
my $f5 = 'LSD1_distance_from_TSS_chr5_B-.out';
my $f6 = 'LSD1_distance_from_TSS_chr6_B-.out';
my $f7 = 'LSD1_distance_from_TSS_chr7_B-.out';
my $f8 = 'LSD1_distance_from_TSS_chr8_B-.out';
my $f9 = 'LSD1_distance_from_TSS_chr9_B-.out';
my $f10 = 'LSD1_distance_from_TSS_chr10_B-.out';
my $f11 = 'LSD1_distance_from_TSS_chr11_B-.out';
my $f12 = 'LSD1_distance_from_TSS_chr12_B-.out';
my $f13 = 'LSD1_distance_from_TSS_chr13_B-.out';
my $f14 = 'LSD1_distance_from_TSS_chr14_B-.out';
my $f15 = 'LSD1_distance_from_TSS_chr15_B-.out';
my $f16 = 'LSD1_distance_from_TSS_chr16_B-.out';
my $f17 = 'LSD1_distance_from_TSS_chr17_B-.out';
my $f18 = 'LSD1_distance_from_TSS_chr18_B-.out';
my $f19 = 'LSD1_distance_from_TSS_chr19_B-.out';
my $f20 = 'LSD1_distance_from_TSS_chr20_B-.out';
my $f21 = 'LSD1_distance_from_TSS_chr21_B-.out';
my $f22 = 'LSD1_distance_from_TSS_chr22_B-.out';
my $fX = 'LSD1_distance_from_TSS_chrX_B-.out';
my $fY = 'LSD1_distance_from_TSS_chrY_B-.out';


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
open OUT,">Combined_LSD1_from_TSS_-.xls" || die $!;

#Save to output file
say OUT @aFINAL;

#Exit
exit;

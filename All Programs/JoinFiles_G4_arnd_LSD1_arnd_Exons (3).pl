use 5.014;
use warnings;

#Script to concatenate arrays

#Assign filename
my $f1 = 'Intron_LSD1_chr1+_g4_distance.out';
my $f2 = 'Intron_LSD1_chr2+_g4_distance.out';
my $f3 = 'Intron_LSD1_chr3+_g4_distance.out';
my $f4 = 'Intron_LSD1_chr4+_g4_distance.out';
my $f5 = 'Intron_LSD1_chr5+_g4_distance.out';
my $f6 = 'Intron_LSD1_chr6+_g4_distance.out';
my $f7 = 'Intron_LSD1_chr7+_g4_distance.out';
my $f8 = 'Intron_LSD1_chr8+_g4_distance.out';
my $f9 = 'Intron_LSD1_chr9+_g4_distance.out';
my $f10 = 'Intron_LSD1_chr10+_g4_distance.out';
my $f11 = 'Intron_LSD1_chr11+_g4_distance.out';
my $f12 = 'Intron_LSD1_chr12+_g4_distance.out';
my $f13 = 'Intron_LSD1_chr13+_g4_distance.out';
my $f14 = 'Intron_LSD1_chr14+_g4_distance.out';
my $f15 = 'Intron_LSD1_chr15+_g4_distance.out';
my $f16 = 'Intron_LSD1_chr16+_g4_distance.out';
my $f17 = 'Intron_LSD1_chr17+_g4_distance.out';
my $f18 = 'Intron_LSD1_chr18+_g4_distance.out';
my $f19 = 'Intron_LSD1_chr19+_g4_distance.out';
my $f20 = 'Intron_LSD1_chr20+_g4_distance.out';
my $f21 = 'Intron_LSD1_chr21+_g4_distance.out';
my $f22 = 'Intron_LSD1_chr22+_g4_distance.out';
my $fX = 'Intron_LSD1_chr23+_g4_distance.out';
#my $fY = 'LSD1_+_-_10kb_XonMid_chrY.out';


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
open OUT,">Nearest G4_in_LSD1_in_Introns.out" or die $!;

#Save to output file
say OUT @aFINAL;

#Exit
exit;

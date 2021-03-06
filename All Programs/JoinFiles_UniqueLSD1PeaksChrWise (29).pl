use 5.014;
use warnings;

#Script to concatenate arrays

#Assign filename
my $f1 = 'LSD1_+_-_10kb_TSS_chr1MOD.out';
my $f2 = 'LSD1_+_-_10kb_TSS_chr2MOD.out';
my $f3 = 'LSD1_+_-_10kb_TSS_chr3MOD.out';
my $f4 = 'LSD1_+_-_10kb_TSS_chr4MOD.out';
my $f5 = 'LSD1_+_-_10kb_TSS_chr5MOD.out';
my $f6 = 'LSD1_+_-_10kb_TSS_chr6MOD.out';
my $f7 = 'LSD1_+_-_10kb_TSS_chr7MOD.out';
my $f8 = 'LSD1_+_-_10kb_TSS_chr8MOD.out';
my $f9 = 'LSD1_+_-_10kb_TSS_chr9MOD.out';
my $f10 = 'LSD1_+_-_10kb_TSS_chr10MOD.out';
my $f11 = 'LSD1_+_-_10kb_TSS_chr11MOD.out';
my $f12 = 'LSD1_+_-_10kb_TSS_chr12MOD.out';
my $f13 = 'LSD1_+_-_10kb_TSS_chr13MOD.out';
my $f14 = 'LSD1_+_-_10kb_TSS_chr14MOD.out';
my $f15 = 'LSD1_+_-_10kb_TSS_chr15MOD.out';
my $f16 = 'LSD1_+_-_10kb_TSS_chr16MOD.out';
my $f17 = 'LSD1_+_-_10kb_TSS_chr17MOD.out';
my $f18 = 'LSD1_+_-_10kb_TSS_chr18MOD.out';
my $f19 = 'LSD1_+_-_10kb_TSS_chr19MOD.out';
my $f20 = 'LSD1_+_-_10kb_TSS_chr20MOD.out';
my $f21 = 'LSD1_+_-_10kb_TSS_chr21MOD.out';
my $f22 = 'LSD1_+_-_10kb_TSS_chr22MOD.out';
my $fX = 'LSD1_+_-_10kb_TSS_chr23MOD.out';
#my $fY = 'LSD1_+_-_10kb_TSS_chrYMOD.out';


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
open OUT,">LSD1_Peaks_TSS.out" or die $!;

#Save to output file
say OUT @aFINAL;

#Exit
exit;

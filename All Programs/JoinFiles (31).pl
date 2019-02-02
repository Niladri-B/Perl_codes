use 5.014;
use warnings;

#Script to concatenate arrays

#Assign filename
my $f1 = 'Midpg4chr1-.txt';
my $f2 = 'Midpg4chr2-.txt';
my $f3 = 'Midpg4chr3-.txt';
my $f4 = 'Midpg4chr4-.txt';
my $f5 = 'Midpg4chr5-.txt';
my $f6 = 'Midpg4chr6-.txt';
my $f7 = 'Midpg4chr7-.txt';
my $f8 = 'Midpg4chr8-.txt';
my $f9 = 'Midpg4chr9-.txt';
my $f10 = 'Midpg4chr10-.txt';
my $f11 = 'Midpg4chr11-.txt';
my $f12 = 'Midpg4chr12-.txt';
my $f13 = 'Midpg4chr13-.txt';
my $f14 = 'Midpg4chr14-.txt';
my $f15 = 'Midpg4chr15-.txt';
my $f16 = 'Midpg4chr16-.txt';
my $f17 = 'Midpg4chr17-.txt';
my $f18 = 'Midpg4chr18-.txt';
my $f19 = 'Midpg4chr19-.txt';
my $f20 = 'Midpg4chr20-.txt';
my $f21 = 'Midpg4chr21-.txt';
my $f22 = 'Midpg4chr22-.txt';
my $fX = 'Midpg4chr23-.txt';
#my $fY = 'Midpg4chrY-.txt';


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
open OUT,">Midpg4chrAll-.out" or die $!;

#Save to output file
say OUT @aFINAL;

#Exit
exit;

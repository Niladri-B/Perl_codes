#Code to add values in groups of 25 for a range of 10,000, a total of 400 bins

use 5.014;
use warnings;

use constant SAMPLE_SIZE => 20_000; #End value
use constant CHUNK_SIZE => 250; #Assign value of bin

my $file1 = 'MidVal_peak_chrY.out-10kb.out'; #File containing start co-ordinates
my $file2 = 'Midpg4chrY.out-Modified.out'; #Chip_Seq peak read data

open OUT,'>','LSD1_TSS_250bp_bins_chrY.out' or die;

my %data2;
{
  open my $fh, '<', $file2 or die $!;

  while (<$fh>) {
    my ($key, $val) = (split)[1,2]; #Split into key and value pair
    $data2{$key} = $val; #Creat hash and assign value to key
  }
}
#say %data2;

open my $fh, '<', $file1 or die $!;

while (<$fh>) {
  chomp ;
  my $key = (split)[1];#Take the value of start position
  #say $key;
  my @totals;
  my $n = 0;
  while ($n < SAMPLE_SIZE) { #While n is < 10,000 , so 0 to 9,999 is 10,000 values
    push @totals, 0 if $n++ % CHUNK_SIZE == 0; # Reset value of 25bp bin to 0 every time 25 values have been obtained
    $totals[-1] += $data2{$key++} // 0; #If value of key exists assign to last element of array ELSE assign 0
  }
  #print "$_ \t@totals\n","\t";
  say OUT  $_ ,"\t",join "\t", @totals;
}

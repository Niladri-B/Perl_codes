#Code to add values in groups of 25 for a range of 10,000, a total of 400 bins

use 5.014;
use warnings;

use constant SAMPLE_SIZE => 4_000; #End value
use constant CHUNK_SIZE => 25; #Assign value of bin

for(my $i =1; $i <= 23; $i++){

  my $file1 = "With_Alu_chr$i.out"; #File containing start co-ordinates
  my $file2 = "MidVal_peak_signal_chr$i.out"; #Chip_Seq peak read data

  open OUT,'>',"CoREST_with_Alu_chr$i.out" or die;

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
}
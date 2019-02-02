use 5.014;
#use diagnostics;
use warnings;

my @arr = qw ( 1 2 3 4 1.1 1.2 1.3);
say "@arr";
my @arr1;
my @arr2;

# for $_(0..$#arr){
	# if ( $arr[$_] < $arr[$_ + 1 ] ) {
		# push @arr1, $arr[$_];
	
	# }elsif( $arr[$_+1] < $arr[$_] ) {
		# push @arr2, $arr[$_ + 1 ];
	# }
# }



my @array = qw( app Oracle EPDMCA Oracle EPZXC );
my $ix = 0;
while( $ix < $#arr ) {
     if ($arr[$ix+1] < $arr[$ix]){
      #print $array[$ix+1];
      push @arr1,$arr[$ix];
    
  # }elsif ( $arr[$ix+1] < $arr[$ix] ){
      # push @arr2,$arr[$ix+1];
  }
  $ix++;
  
}

say "@arr1","\t\t","@arr2";
exit;
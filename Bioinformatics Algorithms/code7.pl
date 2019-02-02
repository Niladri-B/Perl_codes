use 5.014;
use warnings;
use List::Util qw/max/;

$_ = "CACCGCACCGGCGCCACCGGCGGCGCCAGCGCACCGCACAAACCAGCGGCGCACCACCGCCGCACACAAACCCAGCGAACCCACACACCGCACCGCCGCCGCCACCGCCACACAAACAACAACCCGCACACCACCGGCGCACACACCACCAAACCCGAACAACAACGCGGCGCCACAGCGGCGCCAGCGCCACCGAACCAAACCACCACCAAACAACCCACCAAACCAGCGCAAACGCGAACCCGAACCAGCGGCGCCACCACCAAACCACCGCAAACCCAGCGCCAAACGCGAACCCGCCACACACACACAGCGCCGCAAACGCGCACCACCGAACGCGCCGAACCCACCGGCGCCGAACCCGAACCACAAACAACCCACCGCAGCG";#"ACGTTGCATGTCGCATGATGCATGAGAGCT";
my $len_seq = length $_; say $len_seq;
my $len_pat = 8;
																	# my $pat = "AAAAA";
																	# my $len_pat = length $pat;
my $i = 0;
my @all_kmer;

while($i <= $len_seq - $len_pat){#0..26 = 27 so correct
	my $substr = substr $_, $i, $len_pat;
	push @all_kmer, $substr;
	
	$i++
}

#Open output file
open OUT, ">Output_frequent_kmer_fuzzy_match_code7.out" or die $!;

say ":@all_kmer";
#say OUT "@all_kmer";


my %counts;
my $j = 0;
# while ($all_kmer[$j]){
																	# # my @fuzzy_kmer;
	# foreach (@all_kmer){
				# #say $compare;
		# #push( @{$counts{$kmer}},$_ ) if strDiffMaxDelta ($kmer, $_, 1);
		# push( @{$counts{$all_kmer[$j]}},$_  ) if strDiffMaxDelta ($all_kmer[$j], $_, 1);
		# #push( @{$ttys{$user}}, $tty )
		
		# }
	
	
	# $j++;
	# if(exists $counts{$all_kmer[$j]} ){
		# say "Key already exists for $all_kmer[$j]";
		# $j=$j+3;
	# }
	 
	 
	
# }

I: foreach my $i (@all_kmer) {
         next I if exists $counts{$i};
    J:  foreach my $j (@all_kmer) {
                    push( @{$counts{$i}}, $j  ) if strDiffMaxDelta ($i, $j, 3);

         }
  }



my @fuzzy_kmer_counts;																	# foreach my $all_kmer (@all_kmer){
foreach my $key (keys %counts){
	  say "Key : $key\tValue : @{$counts{$key}}" ;#NOTE: array dereferencing by writing @{$HASH{$KEY}} because we have an array of values # SImply writing $hash{$key} will not work
          push @fuzzy_kmer_counts, scalar @{$counts{$key}};  
          
}

my $max = max(@fuzzy_kmer_counts);

foreach my $key (keys %counts){
	 say "Key: $key\t" if scalar @{$counts{$key}} == $max;
	 print OUT $key,"\t" if scalar @{$counts{$key}} == $max;
}
 
  
	 																# foreach (@all_kmer){
	
																	# push @fuzzy_kmer, $_ if strDiffMaxDelta ($all_kmer, $_, 1);
 																	# }
 																	# }

																	# say "\n\n\n@fuzzy_kmer";




																	# say "Fuzzy kmer 1st: $fuzzy_kmer[0]";
																	#say "Fuzzy kmer 2nd: $fuzzy_kmer[1]";
	
																	#foreach my $kmer (@all_kmer){
																					#push (keys %counts, $all_kmer[$j]);
																					#say "Fuzzy kmer $j : $fuzzy_kmer[$j]";



#say %counts;



# #Initialize count hash
  # my %counts;
  # foreach (@fuzzy_kmer){
	
	 # $counts{$_}++;
  # }

 # #Determine kmer with max count
   # my $max = max(values %counts);
   # say "Max occurence :$max";



# # #Print k-mer with max count
 # for (keys %counts){
	  # say "Key= $_\tValue=$counts{$_}" if $counts{$_} == $max;
	 # # print OUT $_, "\t"  if $counts{$_} == $max;
  # }


 



###########################
#Subroutine
###########################
sub strDiffMaxDelta {
    my ( $s1, $s2, $maxDelta ) = @_;
    my $diffCount = () = ( $s1 ^ $s2 ) =~ /[^\x00]/g;
    return $diffCount <= $maxDelta;
}







# sub subFuzzyMatch{
	
	# my ($s1, $s2, $max_diff) = @_;
	# my $diffCount = () = ( $s1 ^ $s2 ) =~ /[^\x100]/g;
	# return $diffCount <= $max_diff;
# }




#Exit
exit;



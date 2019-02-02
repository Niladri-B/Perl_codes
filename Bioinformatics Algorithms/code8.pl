use 5.014;
use warnings;
use List::Util qw/ max /;
#INCOMPLETE


$_ = "ACGTTGCATGTCGCATGATGCATGAGAGCT";
my $len_seq = length $_;
my $len_pat = 4;
my $mismatch = 1;

#Determine all kmers of given length
my @forw_kmers;
my $i = 0;
while ($i <= $len_seq - $len_pat){ # $i <= 30-4 => 26 # Since count is from 0, so 0 to 26 is 27 kmers
	my $substr = substr $_, $i, $len_pat;
	push @forw_kmers, $substr;
	
	$i++
}

#Determine fuzzy matches with 'd' mismatches
my %forw_counts;

I: foreach my $i (@forw_kmers) {
         next I if exists $forw_counts{$i};
    J:  foreach my $j (@forw_kmers) {
                    push( @{$forw_counts{$i}}, $j  ) if strDiffMaxDelta ($i, $j, $mismatch);

         }
  }
  
#Determine kmers with maximum fuzzy matches
my @forw_kmer_counts;
foreach (keys %forw_counts){
	push @forw_kmer_counts, scalar @{$forw_counts{$_}};
}

my $max_forw = max(@forw_kmer_counts);
#say $max;

foreach (keys %forw_counts){
	print $_,"\t" if scalar @{$forw_counts{$_}} == $max_forw;
}



  
#Determine all kmers of Reverse strand
my $rev_com = reverse $_;
$rev_com =~ tr/ATGCatgc/TACGtacg/;
#say $rev_com;

my @rev_kmers;
my $j = 0;
while($j <= $len_seq - $len_pat){
	my $substr = substr $rev_com, $j, $len_pat;
	push @rev_kmers, $substr;
	
	$j++
}

#Determine fuzzy matches with 'd' mismatches for reverse complement
my %rev_counts;

I: foreach my $i(@rev_kmers){
	next I if exists $rev_counts{$i};
    J:  foreach my $j(@rev_kmers){
    	push ( @{$rev_counts{$i}}, $j ) if strDiffMaxDelta ($i, $j, $mismatch);
    }
}


#Determine reverse complement kmers with max fuzzy matches with 'd' mismatches

my @rev_kmer_counts;
foreach (keys %rev_counts){
	push @rev_kmer_counts, scalar @{$rev_counts{$_}};
}

my $max_rev = max(@rev_kmer_counts);
#say "\n",$max_rev;

print "\n";
foreach (keys %rev_counts){
	 say $_,"\t","@{$rev_counts{$_}}" if scalar @{$rev_counts{$_}} == $max_rev;
}

#Compare keys of two hashes

my %common_max_kmers;
my @keys_common;

foreach (keys %forw_counts){
	my $rev_compl = reverse $_;
	$rev_compl =~ tr/ATGCatgc/TACGtacg/;
	
	if (exists $rev_counts{$rev_compl}){
		#say "$_ present";
		
		
	}
	
	#push (@keys_common, $forw_strand ) if exists $forw_counts{$forw_strand};
 
}

say "@keys_common";


	



##################
#Subroutine
##################
sub strDiffMaxDelta {
	my ($s1, $s2, $maxDelta ) = @_;
	my $diffCount = () = ($s1 ^ $s2) =~ /[^\x00]/g;
	return $diffCount <= $maxDelta;
	
	}
 
  
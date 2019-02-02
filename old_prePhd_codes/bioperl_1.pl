use 5.014;
use warnings;
use Bio::Seq;
use Bio::SeqIO;

my $seqobj = Bio::PrimarySeq->new ( -seq => 'ACGTTGCATGTCGCATGATGCATGAGAGCT',
				    -id => 'trial_1'
				 );

print "Sequence ID ", $seqobj->id(), "\nSequence ", $seqobj->seq();

####################################################
#Extract subsequence
####################################################
my $winsize = 4;

 for(my $i = 1; $i <= 4; $i++) {
     my $window = $seqobj->subseq($i,$i+($winsize-1));
     say $window;
    }
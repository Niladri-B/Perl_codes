use 5.014;
use warnings;
use List::Util qw( min max );           # WONT WORK WITH STRINGS IN ARRAY

#Code to determine most frequent k-mers

#Open input file
# my $file = "Thermotoga-petrophila_OriC.txt";
# open my $fh, '<' , $file or die $!;

# my @in = <$fh>;
# #say @in;

# my $data = join "",@in;
# #say $data;

# my @data = split "\n", $data;
# #say @data;

# $_ = join "", @data;
# say $_;




$_ = "AAACGACACAAACGACACCTCGCATGGCCGACGAGGCCGACGAATAGCTACTCGCATAAACGACACCTCGCATCTCGCATAAACGACACATAGCTATTTCCAAACATAGCTAAAACGACACATAGCTAAAACGACACGGCCGACGAGGCCGACGAGGCCGACGAGGCCGACGAATAGCTAGGCCGACGATTTCCAAACAAACGACACTTTCCAAACATAGCTAATAGCTAGGCCGACGACTCGCATATAGCTATTTCCAAACTTTCCAAACGGCCGACGATTTCCAAACAAACGACACAAACGACACGGCCGACGAGGCCGACGAATAGCTACTCGCATCTCGCATATAGCTAAAACGACACTTTCCAAACGGCCGACGATTTCCAAACGGCCGACGACTCGCATGGCCGACGAATAGCTAAAACGACACTTTCCAAACTTTCCAAACTTTCCAAACAAACGACACAAACGACACAAACGACACAAACGACACCTCGCATATAGCTACTCGCATCTCGCATTTTCCAAACCTCGCATTTTCCAAACTTTCCAAACTTTCCAAACGGCCGACGAATAGCTAATAGCTATTTCCAAACAAACGACACGGCCGACGACTCGCATAAACGACACAAACGACACAAACGACACTTTCCAAACATAGCTACTCGCATAAACGACACGGCCGACGAGGCCGACGAGGCCGACGAAAACGACACGGCCGACGATTTCCAAACATAGCTAAAACGACACCTCGCATAAACGACACATAGCTATTTCCAAACAAACGACACCTCGCATTTTCCAAACATAGCTAATAGCTAAAACGACAC";#"TCCCGTGCCCAGCCTCTATACTAGATTCCCGTGCTGGGCCGGTATCACATACGCCAGCCTCTATACTAGATATACTAGATTGGGCCGGTATCACATACGCCAGCCTCTATACTAGATTCCCGTGCATACTAGATTCACATACGTCCCGTGCCCAGCCTCTCCAGCCTCTCCAGCCTCTTGGGCCGGTATGGGCCGGTATCACATACGTGGGCCGGTACCAGCCTCTCCAGCCTCTTCCCGTGCCCAGCCTCTTCCCGTGCTCCCGTGCCCAGCCTCTTGGGCCGGTAATACTAGATTCACATACGCCAGCCTCTTCACATACGTCACATACGCCAGCCTCTCCAGCCTCTTGGGCCGGTATCACATACGTCCCGTGCCCAGCCTCTTCCCGTGCTCCCGTGCCCAGCCTCTTCCCGTGCTGGGCCGGTATGGGCCGGTATGGGCCGGTACCAGCCTCTCCAGCCTCTATACTAGATATACTAGATTCACATACGCCAGCCTCTTCCCGTGCTCACATACGTCCCGTGCTCACATACGCCAGCCTCTTCCCGTGCCCAGCCTCTATACTAGATATACTAGATTCCCGTGCTGGGCCGGTAATACTAGATATACTAGATCCAGCCTCTTGGGCCGGTACCAGCCTCTCCAGCCTCTCCAGCCTCTTCCCGTGCTCCCGTGCTCCCGTGCTCACATACGTCACATACGATACTAGATTGGGCCGGTATGGGCCGGTACCAGCCTCTTGGGCCGGTATGGGCCGGTAATACTAGATCCAGCCTCTCCAGCCTCTCCAGCCTCTCCAGCCTCTCCAGCCTCTTCACATACGATACTAGATTCCCGTGCTCCCGTGCTCCCGTGCCCAGCCTCTTCACATACGATACTAGATATACTAGATCCAGCCTCTTGGGCCGGTAATACTAGATCCAGCCTCTTCACATACGTCCCGTGCTCCCGTGC";  #string input
my $seq_len = length $_;                #compute length of string
say $seq_len;
my $window = 11;                         #window size/k-mer size
my $i = 0;                              #iterator intialization

                                        # my @substr = substr $_,$i,$window; #FOR DEBUGGING
                                        # say @substr;# FOR DEBUGGING

                                        # my @matches;
                                        # while(/.{1}([a-z]{4})/ig){
                                        # push (@matches,$1);
                                        # }

                                        # say"\n\n\n\n @matches";#FOR DEBUGGING

my @match2;                             #Array containing all possible k-mers in sliding windows
for(my $i = 0; $i <= $seq_len; $i++){   #this is the trick #loop as many times till end of seq($seq_len) #earlier i had put in just 3 so only 3 times loop executed
	my $substr2 = substr $_, $i, $window; #after 3rd loop, 4th posn begins ($i) #extract from DNA at posn $i a k-mer/substr of 4
	push @match2, $substr2;         #push this k-mer into array
}

#say "\n\n\nWE now have match2 as :", join ("\n",@match2);                               #Display all k-mers
# say "It has ", my $match2 = @match2, " number of elements";	                        #Display no. of k-mers+1 via strong context
# say "It has ", scalar @match2, " number of elements";                           	#via scalar method

#########################################################
#Counting array elements
#########################################################
my %counts = ();                        #Initialize hash containing counts of all k-mers
for (@match2) {                         #for each k-mer
   $counts{$_}++;                       #increase value of k-mer # $_ is key and increased count is value
}
foreach my $keys (keys %counts) {       #for each k-mer in array of k-mers (keys %counts)
   print "$keys = $counts{$keys}\n";    #print k-mer = count in newlines
}

                                        # foreach (sort {$counts{$b} <=> $counts{$a}} keys %counts) {                         #To find 1st key with largest value
                                        # print "\n\nKeys is $_\n";                                                           #Do this by sorting values of keys
                                        # print "Value is $counts{$_}\n";
                                        # last;
                                        # }

#pseudocode for keys with max values
#find & store max value
#print key if value == max

my @val_list = values %counts;
my $max_val = max @val_list;
#say "\n\nMax value is $max_val";

my @key_list = keys %counts;
# my $max_key = pop @key_list;

my @k_mer_list = ();

foreach (@key_list) {
    
    push @k_mer_list,$_,"\t" if $counts{$_} == $max_val; #Push all k-mers into list whose values match maximum in tab-delimited file
    #push @k_mer_list,$_, "\t" if $counts{$_} >= 3;
}

open OUT, ">Output_kmer_list.out" or die $!;
print OUT @k_mer_list or die $!;


#Exit
exit;

























#print "\n\nMax Key ",$max_key." :: ".$counts{$max_key} if $counts{$max_key} == $max_val, "\n";




##########################################################
#Grep trials
##########################################################
# my %seen1;
# my @repetitive = grep { $seen1{$_}++ } @match2;

# my %seen2;
# my @non_unique = grep { !$seen2{$_}++ } @repetitive;

#say "\n\n\nNon unique elements are @non_unique";

##########################################################



##################################################################################
 # use Bio::SeqIO;

 # my $winsize = 4;

 # for(my $i = 0; $i <= 3; $i++) {
     # my $window = $seqobj->subseq($i,$i+($winsize-1));
    # }
    
##############

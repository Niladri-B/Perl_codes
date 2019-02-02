use 5.014;
use warnings;

#Code to find 't' k-mer clumps in specific windows of size L in a given genome
open OUT, ">Output_clump_finding2.out" or die $!;


#$_ = "CGGACTCGACAGATGTGAAGAACGACAATGTGAAGACTCGACACGACAGAGTGAAGAGAAGAGGAAACATTGTAA";
# $_ = "GACTCTATACTAGAGCGGATAGGCCATTCTGGTGACCTCGCGCATAGACGGTGGATCGCAGTGTCAGTAATTAAACTTCTTTGCCTGGGACTATTAGTTGGCCACTTAGTAACTCGTAAAAGACCATCTCAGCTTGCCCAACTTACAGCCATCCTCGGCTGCCTAAATGGGGACGACGTACATTATCGGTTCGAATTTGACAACAGTTGACCCACGCGCTTTTGTTATCATCTCTACCGATTTGTGCTAACATTGACTGATTTCAAGCACAACAACTAAAATTCTCAGGTTCACTCCTACCCTTGATGGTACGCATTGGGAAATATCGGGTTGGCAAATTTTAAAATCGGTATCCAGTAAAAGACTCTGTACTTACCGTGACTGTGTTGTACCTGATTCAGACTTAGTTCCGCGGCTTTGATATCAGATAGGGCTCAGATGAGCAGGCGGACCGCTGAACGTACGACTGATTACCACTCCCGACTTAGCTCCGGACGGAACTCCTGATTCGTACTCACAAGGGTCTCTCTCACCGTTTCACTGATCCCAGATCCCAATTCATTCTAAGATCACTAGGACGGCGGCCTGGACCAACCCGGTCGTAAGGTGCATGCCGGCCAGAACTATCAACCGCCCGCCGGACACGCAGATTATAAGTTGGTGGGGAGGACAGAATCCATGGGACAGAATTTGGCATGGCGGACGGACAGAATCGATACGAATGGAGGACAGAATGAAGTGTGGACAGAATGAATCTCAGTCCACCACAAATCTTTAGGGCACTTTTAGCTCAATCTTTAGATCCCTCAATATGACAACCAGGACAGAATTGGTAGGACACTCGCGGGACAGAATTAGCTGGACAGAATTCGATGCCAGAGTTCATCAGGACAGAATCTTTAGGAGGACAGAATTTAGCCGAGCAAATCTTTAGAATCTTTAGAACAGCACGAATGGACAGAATAATCACCCAATCTTTAGTGGAAGGACAGAAGGACAGAATCTTTAGTAGGATGAAACTTAAGGACAGAATGGACAGAATGGACAGGGACAGAATGATCAAGGTATAAAATCTTTAGTGGACCTGGCAACACGGGAGAAGGACAGAATGTAAACGGGAGGACAGAATGGACAGAATCGGGTTAATCTTTAGCGCGCGGGTTTTGCTCTAATCTTTAGTCTAAGGGGACAGAATCAGAATTAAAAATCGGACAGAAGGACAGAATTGCTCCGGACAGAATTAATCTTTAGTCCGAGAATCTTTAGGTTTAATCTTTAGTTCGACGGATCGCAACGGTAAATCTTTAGATTTTATTTCGGTTTTGAATCAATCTTTAGTTTGTTTTGCTCTTTAGTTCGGATATTAGTTTGAGTCGTTTTGCTCGGGAGCCGAGCCAAGCGCGTGAGTACCTTGGGAGGAACCGCTCACCATGAATGGTTTTGCTCAGTTTTGCTCCGATTTGTCCTAGGGATCTCGGGTGCCCGTGAGGTGGCGTTCTCGCAGCAGGCTAAAGTTTTGCTCCGGGTTTTGCTCGTGTAGTTTTGCTCGGAAACATCGCTGGCATCGCTGGTTTTCTATCGAGACAAACAGAAAGGCTACCCGATGACATCCATCGCTGGTAATGCAGGTTTTGCTCCATCGCTGGCTTGTTTTGCTGTTTTGTTCATCGCTGCATCGCTGGCCATCCATCGCTGGGAGAATATTCAGCTGCATCGCTGGCATCGCTGGCTGGGCTGTTCAGCTGATTCAGCTGCCTACTAAATCATCGCTGGCACATCATCGCTGGCTTCCGATCCACATCGCTGGGCATCGCTGGCTGTACCTGCTATTCAGCTGGGACATCGCTGGTTCAGCTGCCGCGCATCGCTGGGGCGTAAGTCTCGTGCATCGCTGGACATCGCTGGCCTTGGCATCGCTGGTGGTAACCCTACATCGCTGGCTGGGCTGAAGTTCGGGATTCAGCTGCATCGCTGCATCGCTGGGGATCGCTGGACCGGGTAAGCCTCTTTCCTTTGTATCATCGCTGGTTCAGCTGCGACTCAACCATCGCTGGTGCACATCGCTGGGCTGTATTCAGCTGCTGGGCTGGCCGGACGACATCGCTGGAGCTGGCAACCACGCCGCGCACAGGCACGATTCAGCTGTTCAGCTGTCAAATTCAGCTGATTCAGCTGGCTCTCTTCATCGGGAGCATTCAGCTGACACGCATTCAGCTGCAGCTGGGTTGTCCCGCTCGCCCGTGATCGTAAATTCAGCTGCTTTCTATCTTACGGCACATGGACCTTGCGGACAAGTACTGCTTCCGTAATAATCGCGTAAGCTCTAGCTGGAAAACAGTAGCTAGTCTTCTGCTATAGCTACTGAATGAGCAATCATTCACCCCCTTGGATATTACTGCCCCCGCCGGTATGCCAGAAATATGCCCTCTAGATAGTCCGAGAGATGTAGCATTACCCTTACTTGCCTACAAGAATTTGGGCACACGATGGCAAAGATTGATGAATCCTTCGTGACACGCAGGTAAGTAAATGTATCCCTTTGGCCCAGCATCTCGAATTTCAGCTTCCGACGATCAATTTGCTATATCCGGCGCAGATTCCCGCAGATTCTCAGAATGACATGAACGCAGATTCGATTCGTGGTTGATGAGCTCGCAGATTCCCACACGCAGATTCTCGCAGACGCAGATTCGCAGATTCCGCAGCGCAGATTCGCGAACTATGACATTGAAGTCAGTAGTGATCGCAGATCGCAGATTCTCCTAAGCGTCCGCAGATTCGCCGCAGATTCAAAGAGTGGTGGCGCAGATTCATTGGACTCTGGGCCCAGAACACTGTTACCGCCGCAGATTCCCGCAGATTCCTGTTCTGACCCTATCCTAAACACTGTTTATATGCGCAGATTCCCTATGAAGATGGCGCAGATTCCAACACTGTTAACAAACACTGTTTGTGCGCAGATTCTTCGCAGATTCGGCCGCAGATTCAGCGGCCAATGACCAACACTGTTTTCACATCATGACCTAACACTGTTTGAACACTGTAACACTGTTGTTCCACTACGCAGATTCTCGGATAGTGTGCCGAGACCATTCGCAGATTCGCACGCAGATTCACCCTATGCCGTCCAGCGCAGATTCCGCAGATTCAAGAATGACCCTAAACACTGTTCAACATAACACTGTTCAAAACACTGTTCTATCAACAAACACTGTTGCATGACCCTTGACCCAACAAACACTGTTTTCAAATGACCAACACTGTTAACACTGTTAGAGCTTGTGACCCTATGAACACTGTTTTTCTCCACAACACTGTTGACGTACGAAACACTGTTATCCTAGAGGCCCCTCTATAAAACACTGTTGTCAGCTTGGAGCTATTATAGAAGCCAAGCCTGCTTGCCAACCTCGCTATGTTTTAGGGGGGCCACCCGATTGCTTTCGAAAAGGGCCACCAATATACCTGATGTAGACGTTCCGTCGTTCCACAGGGATATCACGGTTCACTTACTACTTGCAAAGACTGGCTTTATTGTGTACCGCGCCCTATAGCCTCACCCGGCGATCTTACCTGACTGAAGGGGATTATTTACGAAGGGGAACTTGGTTGATTACGTACTAACTTACCTGAGTACGTATCTGCGCTACTTACCTGATTGCTTACCTGAACTACTGTAAACCTTACCTGACTCTTACCTGATTGGTTCTTGGCTTATCCTTACCTGAACCTGAATACTTACCTCTTACCTGACCCTTGTAACAAGCACGTGTGGGATCCCCAACCCTTCTTACCTGACACTTACCTGACTTACCTGACAGGTGGCCCGAGCTTACCTGAAAAAGTAAGACGTAATGTATTGGTATTGATTCTTACCTGAGATCCATTAAGAAAAGAAAGTGGGTAGAAAGTGGTGGAGAAAGTGGATTAGAAAGTGGCGCCTAGAAAGAGAAAGTGGCTTACCTGATTAGTGCCCCCTACGCGAACTCGTTCCGAGAGAAAGTGGCCTGAACTTACGAGACAGAAAGTGGGGCAGAAAGTGGAAAGTCTAGAAAGTGGCGCAGAAAGTGGAGAAAGAAAGTGGTGGGACCCCTTTCCGTTCCGTAATGTCTTACCTGAATATGTGAGAAAGAGAAAGTGGCCTGATACTTACCTGAGCTTACCTGATACATGTAACGCTTCCGCTGGCCATGAAGCAAGAGAAAGTGGGGTGAGTTCTTCAGAAAGTGGTCTAGACAGAATGTACACCGATAAGAAAACGCGAGAAAGTGGATTGAAACGCAAACGCGATAGATGACGTACGACATCGGAAAGAAAGAAAGTGAGAAAGTGGAAGTGGTTAGAAAGTAGAAAGTGGTTATTATAAACGCGATGGGAACCAGAAAGTGGAAACGCGATTGGCTGCAGTTAGAAAGTGGGAAAGTGGTGGAAACGCGATCGAAACGCGATAAAACGCGATAAACGCGATGGGGAAAACGAAACGCGATGTACGCCCGCATGTAAACGCGATGTAAGCCTTCAAGCCTGCTAAAACGCGATACTGCGGCGCTAATAAGCCTGGTCTGCGTGTATACCTTAACATGAAACGCGATATCTGGACGGGGATCTGGGGGCGCACGCCCAATTGCCATGGATCAGGCTTAAACGCGATTACCGGTTCCGGGACATTCTACTGACCAAACGCGATGAGCCCAAAACGCGATATGAAGAAACAAACGCGATAAACGCGATGTGTGGCGCCCACAGCAGAAGTCAAAAACGCGATTCAATTAAAAGAAACGCGATATTCTCGAATTTCAATCTAAACGCGATGGCGTAAAAATCCCGGGGGGTAAGTCCCCCTAGTACTTAGTTGTGAACAAATATTAAACCATTTTGCGTTCGTCCCCTTACACAGCTGTGATCGGTAGCCACGCTCTGAATATTAGTGAATTAACTAACCGAACAGTCCCTAAGTGGGCCTCAATAATGCAGCGGGATTCAGCGTCGGTTGCTTTCTTTTCCGTCAACGCTAGTCACAGGACCTCTTTCACCAGCTAGACCTAACATCAGGTGGAGGTTCATGGGGTTAACCTGTAGCTCGTAGTTCTACGAGTTTGCTGGAATATGCTAGCTATGCAGTCCCCACGGGCACACTTATGCTCGCCGGTGTGATAGAGTTAGCCCCACTATGTAGCGACTCTCGTGTCCAGCCGATCTACACGCTTGTGATCCGTCATGCAGCGGTGAGACCGCCGGGGCAAAGGATAGGTGTCGAGATTGCCAGCGACACAACGATGCCGATGCACTCCAAAATCACACGCTGACCAGGTGAGGGCGGCAAGCAGGGGTGTGTTCGATCGGTTTACAGATCAGAGCAGAATTTATCCTTTACTGAAAACTACGTTTGAATTCGTTTATCTGCCAGCTAGCTCAACATCGCGGAGTAGCGCGTGGTGGCCCGTGTGGCCGATCCTGGTTTTAGTTTATGTGTCCCTATGTTTTTGCTAGCTGCGATCAAGATCTTCGTCATAGATGAATTGGCTCCCGAAATAGGGCATAAGCGTAGTCAAGAGGAGTATTCCCCACTACACCAGTTTAAACCTGGTCTCACAGAGGTCATTGGTTAAGGTCAGAGTTCCCCGCTCTTACAGTTACTGCTGAAAAGGGTTCATCCCATAGCAACCCGCGTAATACCTTTGACTCCTGCTGGGCGGCGGAGATCTTTAACGGTCTGCCCGGTGGGTCATGTCATTACTTAAAGGCCGGAAAATGCTGTCTAGGCAATAAGAGGTCTATGGTTTGAGGCATTTTACCCTCGAATATTGCGAGGGTCTATGGTTGGTCTATGGTCGTGCTTGAGTCTATGGTAGTCTATGGTTTCCCCTTGACTCTGAGCGTTTGTTGGTCGTCTATGGTCTGTCTATGGTGGAAAAGCAGAGTTCCGAGGTGTTACTAGACCTACCCTCCGTCTATGGTATCAGCCGGAGGCTGAGAATGGTGTCTATGGTTCTCGTCTATGGTCATGGTCTATGGGTCTATGGTGAGTACTAGTGTCAATTCAGTCTATGGTTGGTATACGAGTGTCTATGGTCAGGGCGCTAAATTGTCTATGGTGTCTATGGTAGGTACTAATTTGTCCGTCTATGGTCGCGTCTATGGTGGGCTACTTTGTCTATGGTGGGTCTATGGTGTGGACTTCATCCACACTGGATGTCTATGGTAGACTAGCGTCTATGGTACGTCTATGGTGTCGTCGTCTATGGTTTCATAGTGAATCCTAAGGACAAGGCCAGCGTAAGTGCAGGTTCAATAGTTTAGCGGTCTATGGTTATGAGGATTTACGGGAGTCTATGGTATGGTTACACGAGCCATCATTCTCCGTCTAGAAGGATCTCGCTTAACGGCCCATTGTGATTCCAATCGCATAGCAACGGACCAGGATGTTGTTGGGAGCTCGGCGCCTCTCCTTACTCGGTTGGGCCGTACCACAGGAACATCTTGCCGAGATGAGCCCTCTATTCATAGTCCCGTCTTATAACCTATGTGGAGCCATCTACGCAACAACGTCCCATGATGCTGCTTCTCCCCGCCCACCGTTTCACTGAAGCCGGGTAGCTCCAGTAGGCGCTTGTAGCGTTTTACTCCCTCGTATGTTCTTTGTGGGGGTGACACATGCATGTTGAAATGAATCGTGTGCTCCCGCGGCAAGGAGCTAATCTGCGCTTCTGTGAACTGAACCTGTCATTACCTACGTCTTCATGTATTTTTGCGAGAAAGACTCAAGTAATCGATAGCAGCGCTTCCAACCTCTAGAGTTCATAGCTTGTGTATGGTAGAAGTAACGAGGTGCTGCCTTGTGCTCGAGCAAAGCGCCTCAACTCATCATTAAAATGTGCCGGATATCAGCGTCGTGACTATACGATATTACGAGCCTCAGCAAAGAAGGAAACTGGTAAGCGCGAGAGGCGCGGGAAAACAAGCATCCTGCCCCGCCGCCTAGTTCGATATTCGCAGCTGTCTACGTCCAATGGACGGAATTGCTAACGCAATAGAGGGACTTGTCAGATACATGGGAGGGGAACCCTCTGGTACATTCAAGATGGCTTACGCGAGTCTAGTCGGTGACTGGTATTATCGGGGGTGCTTACACCTACACAGCCTCCCCCTCTAACCCACCAACCTGTCTACCGCATTGGTTTACTTCACTGCCGCAGGTCGAGGGTGATTAATACTCCCACAGGATCCGTAAAACCGACCCTGTATGTCGGGCGGCACCGCCGAGCGGCTCAGGTCCCAGCGGTCCGAAGCCCCCCAAGCATCAAATTCGGCCTAATATACAAGACTTCTAGGCGTAATCAAGGCGGTGATGATGGAGGTTCTTCATACCGACCAGCTGTATCGGGAAGCTATTAACTTAACCCTCACACCGATCTCTATTTGTTAGTTGAGCTTCCGACTGCAAACCTGAATTTGCAACCACGGACCATCCCATTAGTACGGCGTGTCTTGGTGTAGAAACTGTTATCGATGACGGGACTTTCCGACGTACCGTACTTTGTGCATGGTTCGAATCACATTTATTAGAGTAAGACGGAGTACTGAGCACTGTTAAGGCCCGGGCTCAGCCGTGAAAACTCGAGAACAGTTTCCGAGATGGTGCATCACACACTGTGAATATTCCTGAGCACGAACGACCGATCGAGCTTATGATGAGGGCGGAATGATTTGTATAGACTGCTCACTGGGGAGAGCGATATGACTTCCTATCCTGAGCTTAGGGGTCTTACCCACTGAACTTATCATCGGCCTGCCTGAATCTGATTTCAAAATGGCGTTCCACCAACACCGCGTAGCTATGGTACCACGCGTACGTGTCGCACTATCACGTACTGAACAGGATGGTTTCGGGACGCTGTACGTCCAGGACACAAAGACCCCTCTCAATATCACATATCCTAGGTAATGTTATCCCCCGGTGAGCTGATCGTCAACGAGACATCGATTCCCCGCACTCAAGCTTCGTTACTGAAGAACGGATATTAACTGCGGACGGATCCCGAAGGAACATCGGTCACATTTCGATGGAGTCAGCTGGCACCAAGCCGCCCCAGCTCTCTTTAAAAACGAGTAGGGGGCCTGTTATCCCTCAATTGTTGAAGCGCGCAAGGGACGTCCACGATACGTGAAAAATGTTTATGCCTGTGAGGGCCCAACTATGCTCGGTAGAGGACAGGCTCAGTTTTCCATAATGTTTGCGAGATTAGTTTCAGACCCCCTACACTGAGAATCGGCAGTTGAGAATTGGAGACCATGACGACTACAGACGGGTCATAGCTACACACGCCTACGCCACCTTACAGGTCCCCTCTAACGTGAGACGAATTGACTAGTATGTCAGCCGGCGAGAAGGCGGTGTTTCCGTACGGTCTGCCCCCACCGCCCGAGAATCGGAGGCGGCGAGTCCCGACAACTACCAGCAGAAAACCCATCGACTCAGCAGGCAAATATCCGTTTTGACTTCCGGGGGCGAATGGCTAAGTAGTTGTCGTGCAGGCAGCACTCCGCCAATCACTGTATTTTGACGCTATCGCGCTAAGACCACGCGTCGGGAGATCGGTTTGTAGGACCCTAGGTTTTGAATTCCCTAATGTACCATGCGCGCAACAATGTTGCGTATGCGCCCCCACTACGCAAACGAACTTACTTGCCAGTAAGATGTACAACGTAGCACCGTCCGGATTATCCATTCTTCGAAGTAGCAACGAAGGGTTACTGGGGTTAGAGATCAGCGCTGTTTGTACGCGCCGTATTTCGCGGCCCGGTAGCTGTGAGTCGCCGATGAGGCGTCAAAGGCAGTAGCCGTGCTGTGAATTCGCCGAGTTAGCTTCTTACTCCCAGGCATACACGCCTGGTGGGCTCGCCCATGTCCTTATAGCATAGACGATACGACCCTTATTGACTTTGCTTTAGATTGTAGTCTAGCGATGCGCCTACTTTGTGGCCGGCTCAAACCTCGAAAGATTCGTACGCACTGGCTTGGTACGACATACTACGACATAACATAATATACGACATAGTACGACATATATCGTGGTCAATACGACATAGGTTTTACGACATATCTGCCCTTGTCTGCCTTGTCTGCCTCTTGTCTGCTGTCCTTGTCTGCTGCCTTGTCTGCCTTGTCTTGTCTGCCTGCCTTCTCTTGTCTGCCTTGTCTGCCTGCCTTACGACATATACGACATAGACATAATAGCCTTGTCTGCCTTGTCTTGTTACGACATATTGTACGACATATCTGTACGACATAATACGACATATACGACATATACGACATATACGACATATACGACATATACGACATATACGACATATACGACATATACTACGATACGACATAATACGACATATACGACATATACGACATATACGACATA
# ";

#Open input file
my $file = 'E-coli.txt';
open my $fh, '<', $file or die $!;

#Convert to string
 my @in = <$fh>;
 my $in = join "",@in;

 my @data = split "\n", $in;
 my $_ = join "",@data;
 #say $_;


#Using while to read in file

# my @in;
# while(<$fh>){
	# push @in, $_;
	# @in = split "\n",$_;
# }

# my $_ = join "",@in;
	

my $k = 9;
my $window = 500;
my $freq = 3;
my $length = length $_;


my @windows = ();
my $i = 0;

for ($i = 0; $i <= $length-$window; $i++){#Generate 50bp sliding windows and store them in @windows
	my $substr = substr $_, $i, $window;
	push @windows, $substr;	
}
#say OUT "@windows";

my @kmer_list;#Final kmer list containing kmers matching frequency in all the windows

for (@windows){
				#say $_;
				my @kmers = ();#initialize kmer list to store kmers in EACH window (not all kmers) # Declaring here also helps reset and CLEAR the list after every iteration 
				for ($i = 0; $i <= ($window-$freq)+1; $i++){#Otherwise, kmers keep accumulating which we do not want				
				my $substr2 = substr $_, $i, $k;#Extract kmers
				push @kmers, $substr2;
			}
			
			my %counts;#intialize hash counts for the kmers generated in the given window # At a time, we'll check for kmers only in a given window
			for (@kmers){
			$counts{$_}++;
			}


			# for my $key (keys %counts){ #To check all kmers generated in a given window
			# #print OUT "Key:$key\tCount:$counts{$key}\n";
			# }

			for (keys %counts){#Shift to final kmer list if count of kmer in given window = frequency
			#say  "Max k_mer is $_" if $counts{$_} == $freq;
			push @kmer_list, $_ if $counts{$_} == $freq;
			
			}
			
			
		}
	

#say "@kmers";
#say "@kmer_list";

my %seen;
my @unique = grep { ! $seen{$_}++ } @kmer_list;#Extract unique kmers # Because same k-mer may = freq in > 1 window # So it gets displayed multiple times if not grepped

say "@unique";
say OUT "@unique";



####################################
#Counts Hash
####################################


#Exit
exit;

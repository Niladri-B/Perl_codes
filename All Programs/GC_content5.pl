use 5.014;
use warnings;
use List::Util qw/max/;

my $file = "rosalind_gc (3).txt";

open my $fh, '<', $file or die $!;
open OUT, ">GC_contents_in_$file.out" or die $!;

my %hash;
my $key;
my $val;

#Logic of While Loop
#
#Read 1st line, if >Rosalind_[0-9]* encountered, assign it as key
#ELSE
#Append [MOST IMPORTANT] (I HAD FORGOTTEN THIS TECHNIQUE X-[  ) all the following sequences together
#
#Appending joins all the lines together
#No regex required because all the remaining lines are sequence characters only
#
#In this way, we obtain the ID & Sequence of the 1st FASTA sequence
#
#IMPORTANT
#
#$val is stored in memory from previous run & so is $key
#In 2nd iteration, when another ">" is encountered, previous $key is overwritten
#
#But this does not happen with $val [WHY??][probably because we are not appending $key]
#So we manually set $val ="" to erase previous value {**MOST CRUCIAL STEP**]
#
#Now we proceed as usual


#Create Hash
while (<$fh>){
	chomp;
	if(/^>Rosalind_[0-9]*$/){
		$key = $_;
		#say $key;
		$val = "";#Reset value of $val
	}else{
		$val .= $_;#Append
		#say $val;
	}
	
	$hash{$key}= $val;
	
}



# my @val = values %hash;#Check all sequences obtained properly
 # say $val[0];#Print the sequences
 # say $val[1];
 # say $val[2];

#Intialize variables
my (@all_seq,@all_seq_f);
my $seq;
my ($a,$t,$g,$c) = 0;
my %id_percent;
my $id_k;
my $id_v;

#Iterate through the Hash
while(	($key,$val ) = each %hash){
	#print "key: $key value: $hash{$key}\n";
	
	 @all_seq =  split " ",$hash{$key};# Split on space [this results in creation of 2 array elements]
	print $all_seq[0],"\n";
	#say @all_seq;
	
	$seq = join "",@all_seq;#Join on whitespace to get 1 contiguous sequence
	#print $seq;
	
	@all_seq_f = split "",$seq;# Split sequence to iterate trhough each individual nucleotide
	#say $all_seq_f[60];# Got all the 60/80 letter sequences
	#print "\nKey: $key\n",@all_seq_f,"\n";
	
	#Iterate through each nucleotide
	for (@all_seq_f){
		
		if(/A/){
			$a++;
			next;
		}elsif(/T/){
			$t++;
			next;
		}elsif(/G/){
			$g++;
			next;
		}elsif(/C/){
			$c++;
		}
		
	}	  my $total = $a+$t+$g+$c;
		  my $gc = $g+$c;
		  my $gc_amt = ($gc/$total)*100;
		  say OUT "$key\t$gc_amt\t$total";
		  ($a,$t,$g,$c) = 0;	#Reset values to zero # Otherwise it is remembering the last value and adding to it, resulting in wrong sequence length & hence wrong %gc
		  
		  	  	
		  		
}

#Exit
exit;


# open my $fh1, '<', "GC_contents_in_$file.out" or die $!;
		  
		  # while(<$fh1>){
		  	# my @vals = split;
		  	# my $k = $vals[0];
		  	# my $v = $vals[1];
		  	# $id_percent{$k} = $v;
		  	
		  	# # my($big_k,$big_v) = each %hash;
		  	
		  	# # while( ($k,$v) = each %id_percent){
		  		# # if($val > $big_v){
		  			# # $big_v = $v;
		  			# # $big_k = $k;
		  		# # }
		  		
		  # # }		  
# } 

# say keys %id_percent;

# my $max = max(values %hash);
# my %hash_max = map { $hash{$_}==$max ? ($_, $max) : () } keys %hash;




# foreach (keys %h1){
	# print "Key : $key",$h1{$key},"\n\n";
	# @all_seq =  split " ",$h1{$key};
	# #print $all_seq[1],"\n";
	# $seq = join "",@all_seq;
	# #print $seq;
	# @all_seq_f = split "",$seq;
	# #say $all_seq_f[60];# Got all the 80 letter sequences
	# #print "\nKey: $key",@all_seq_f,"\t";
	
	
	# # for (@all_seq_f){
		
		# # if(/A/){
			# # $a++;
			# # next;
		# # }elsif(/T/){
			# # $t++;
			# # next;
		# # }elsif(/G/){
			# # $g++;
			# # next;
		# # }elsif(/C/){
			# # $c++;
		# # }
		
	# # } 
		
		# # my $total = $a+$t+$g+$c;
		# # my $gc_amt = (($g+$c)/$total)*100;
		# # say "Key :$key GC Content = $gc_amt";	

		
		
	
	
# }	

















# my $total = 0;
# my $percent = 0;
# my ($a,$t,$g,$c,$gc) = 0;


# foreach (@val){
	# my @seq = split "\n",$_;#Split on newline
	# #say $seq[0], "\t",$seq[1];
	
	# my $seq = join "",@seq;
	# say $seq;
	
	# my @seq_final = split "",$seq;
	
	
	# foreach (@seq_final){
		# if(/A/){
			# $a++;
			# say "A = $a";
			# last;
		# }elsif(/T/){
			# $t++;
			# say "T = $t";
			# last;
		# }elsif(/G/){
			# $g++;
			# say "G = $g";
			# last;
		# }else{
			# $c++;
			# say "C = $c";
			# last;
		# }
		
		 # $total = $a+$t+$g+$c;
		# # my $gc = $g+$c;
		# # $percent = ($gc/$total)*100;
		
	# }#say $percent;
		
		
	
	
	
	
	
	# }


		
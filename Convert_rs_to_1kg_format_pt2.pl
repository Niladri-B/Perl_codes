use 5.014;
use warnings;

#for(my $i = 1 ; $i <= 1; $i++){
    
    #Compare chromosome bp positions between the 2 files and print out rs IDs when bp positions match
    
    #Assign chr file from gwas
my $chr_gwas = "chr_gwas_tst.txt";#"/Users/nba007/Downloads/Data/converted_rs_ids/ckqny.scz2snpres_edit_chr$i.out";
my $chr_1kg = "chr_1kg_tst.txt";#"/Users/nba007/Downloads/Data/converted_rs_ids/onekgenome_chr$i.out";
    
    
    #Open these chr files
    open my $fh3, '<', $chr_gwas or die $!;
    open my $fh4, '<', $chr_1kg or die $!;
    
    #Open chr comparison output files
open OUT_converted_chr, "converted_test.out";#">Users/nba007/Downloads/Data/converted_rs_ids/onekgenome_converted_chr$i.out " or die $!;
    
    #Create hashes
    my %gwas_chr; my %chr_1kg;
    
    #Read in files
    while(<$fh3>){#gwas chr files
     
       my @arr = split /\t/, $_;
       my $key = $arr[2];#2nd column has bp
        say $key;
       push my @val, $arr[0],$arr[1],$arr[3];#4 column data
       @{$gwas_chr{$key}} = @val;
    }
    
    while(<$fh4>){#1kg chromosome files
       
        my @arr = split /\t/, $_;
        my $key = $arr[3]; # 2nd colmn has bp
        push my @val, $arr[0],$arr[1],$arr[2],$arr[4];# 5 column data
        @{$chr_1kg{$key}} = @val;
    }
    
    #Check if bp matches between 2 files
    while( (my $key, my $val) = each %gwas_chr){
        if (exists $chr_1kg{$key}) {
            #            say OUT_converted_chr join "\t",$key,@{$chr_1kg{$key}};
            #say "yay! key matches";
            say join "\t",$key,@{$gwas_chr{$key}};
            
        }
    }
#}
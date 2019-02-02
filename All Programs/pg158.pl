use 5.014;
use warnings;

#Code to practice case shifting
#Pg 158

$_= "Je vois Barney avec Fred";
say "L'orignal etait : ",$_;
s/(fred|barney)/\U$1/gi;
say "Apres le 1er change : ", $_;

#Le deuxieume change
s/(fred|barney)/\L$1/gi;
say "Apres le 2ieme change : ", $_;

#Le troisieume change
s/(\w+) avec (\w+)/\U$1 \Eavec $2/i; #Notez: Si vous mettez \E devant avec, il ne change pas a capital. Mais si vous mettez \E apres avec, il change a Capital
say "Apres le 3ieme change : ", $_;

#Le quatrieume change
s/(fred|barney)/\u$1/ig;
say "Apres le 4ieme change : ", $_;

#Le cinquieme change
s/(fred|barney)/\u\L$1/ig;
say "Apres le change dernier : ", $_;
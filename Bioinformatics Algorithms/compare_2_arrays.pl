use 5.014;
use warnings;
use Array::Utils qw(:all);

    my @a = qw( a b c d );
    my @b = qw( c d e f );
    
    #intersection
    my @isect = intersect(@a, @b);
    
    say "@isect";
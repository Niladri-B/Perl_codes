#!/usr/bin/perl
#same as p2alt.pl

use 5.012; use warnings;

my $file1 = Reader->open("<", "filename1");
my $file2 = Reader->open("<", "filename2");

my $groupsize = 5;
my $step = 10;
my $sum_number = int($step / $groupsize) + ($step % $groupsize ? 1 : 0); # ceil($step/$groupsize)

use constant DEBUG_FLAG => 0;
sub DEBUG (@)   { say STDERR "DEBUG: ", @_ if DEBUG_FLAG }

LINE1:
while (my $line1 = $file1->readline) {
    my (undef, $start) = split ' ', $line1, 3;
    my $end = $start + $step;
    my @sums = (0) x $sum_number; # initialize all fields to zero
    my $i = 0;
    my $last;
    LINE2:
    while (my $line2 = $file2->readline) {
        my (undef, $key, $val) = split ' ', $line2, 4;
        if ($start > $key) { # throw away all keys that are too small
            DEBUG "key $key too small for start $start";
        } elsif ($key >= $end) { # termination condition
            DEBUG "key $key too large for end $end";
            $file2->pushback($line2);
            last LINE2;
        } else {
            $last = $key unless defined $last;
            $i += $key - $last; # get interval. This may be set to "1" as an optimization
            DEBUG "counting ($i): $sums[$i/$groupsize] + $val at $key";
            $sums[$i/$groupsize] += $val;
            $last = $key;
        }
    }
    DEBUG "inner loop broken";
    say join "\t", $line1, @sums; # assuming tab-seperated output
}

{
    package Reader;
    # There is probably a CPAN module for this ... :/
    use Carp;
    use constant DEBUG_FLAG => 0;
    sub open :method {
        my ($class, $mode, $filename) = @_;
        open my $fh, $mode, $filename or die qq(Can't open "$filename": $!);
        bless [$fh, []] => $class;
    }
    sub readline :method {
        my $self = shift;
        return shift @{ $self->[1] } if @{ $self->[1] };
        my $line = scalar readline $self->[0];
        chomp $line if defined $line;
        carp "readline: " . ($line // "undef") if DEBUG_FLAG;
        return $line;
    }
    sub pushback {
        my ($self, $line) = @_;
        carp "pushback: " . ($line // "undef") if DEBUG_FLAG;
        unshift @{ $self->[1] }, $line;
        return $self;
    }
    sub eof :method {
        my $self = shift;
        eof $self->[0];
    }
}

#Amon
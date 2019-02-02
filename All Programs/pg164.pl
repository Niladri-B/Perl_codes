use 5.014;
use warnings;

say $_ = "I'm much better\nthan Barney is\nat bowling, \nWilma.\n"; #Note declaration and printing all together


say "Found 'wilma' at start of line" if /^wilma\b/im;
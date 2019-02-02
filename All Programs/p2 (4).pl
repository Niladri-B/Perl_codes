#usr/bin/perl

use warnings;

#Program for simple mathematical calculations

print "Enter a number of your choice\n";
$a = <>;
chomp $a;

print "Enter a second number of your choice \n";
$b = <>;
chomp $b;


print "Congratulations! You have entered the numbers $a and $b\n";

$sum = $a+$b;
$sub = $a-$b;
$prod = $a*$b;
$div = $a/$b;
$rem = $a % $b;

print "Following are the various operations performed and their results herewith \n";
print "Sum = $sum","\t","Subtraction = $sub","\t","Multiplication = $prod","\t","Division = $div","\t","Remainder = $rem";

exit;

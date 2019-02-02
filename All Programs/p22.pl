#!/usr/bin/perl

#Experimental code to assign a list to a scalar #Note square brackets for such an assignment
use strict;
use diagnostics;

my $test = ['a','b'];

#print $test;

my @array = qw/jack and jill went up the hill/;

#my @splice = splice @array,3;

print "\n",@splice,"\t\t",@array;

my @splice1 = splice @array,3,1;
#print "\n",@splice1,"\t\t",@array;

print @splice1;
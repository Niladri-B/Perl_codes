#!/usr/bin/perl

use 5.014;
use warnings;

my $file = '/Users/peaceful_warrior/Dropbox/DMR_PublishVersions/V8_BMCEvolBiol/V8.1/allDMRintersect.VistaEnhancers';
open my $fh, '<', $file or die $!;

while (<$fh>) {
	my @arr = split;
	next if $arr[0] =~ m/\#/;
	say "@arr";
}

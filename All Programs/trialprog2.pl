#usr/bin/perl

#This is a trial program to run another trial program

$file = 'trialprog1.pl';

open $fh,'<',$file or die;

@arr = <$fh>;

exec (@arr);

exit;
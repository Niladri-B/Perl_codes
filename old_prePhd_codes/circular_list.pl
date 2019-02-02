sub grab_and_rotate ( \@ ) {
    my $listref = shift;
    my $element = $listref->[0];
    push(@$listref, shift @$listref);
    return $element;
}

@processes = ( 1, 2, 3, 4, 5 );
while (1) {
    $process = grab_and_rotate(@processes);
    print "Handling process $process\n";
    sleep 1;
}
sub G4_nearest {
	print "Calculating nearest G4 motifs to given peaks..\n"; 
	open (NCF,$nearest_coordinates_file) or die "Couldn't open file $nearest_coordinates_file to read $!\n";
	my @peak_coor = <NCF>;
	close (NCF);
	my $output_file_nearest = shift @_;
	open (NOUT,">$output_file_nearest") or die "Cannot open file $output_file_nearest to write\n";
	print NOUT "Chromosome\tStart\tStop\tDistance\tG4_Sequence\tG4_Start\tG4_Stop\tG4_Strand\n";
	my @nearest = ();
	my $g4ctr = 0;
	my @g4_elements = ();
	foreach my $peak (@peak_coor) {
		chomp $peak;
		my @peak_elements = split (/\t/,$peak);
		$peak_elements[0] =~ s/$fasta_head//;
		my $pushed = 0;
		my $closest_distance = 1000000;
		my $overlap_counter = 0;
		while (1) {
			chomp $bedlines[$g4ctr];
			@g4_elements = split(/\t/,$bedlines[$g4ctr]);
			$g4_elements[0] =~ s/$fasta_head//;
			if ($g4_elements[0] == $peak_elements[0]) {
				if ($g4_elements[2] < $peak_elements[1]) {
					$closest_distance = $peak_elements[1]-$g4_elements[2];
					$g4ctr++;
					next;
				}
				if ($g4_elements[2] >= $peak_elements[1] && $g4_elements[1] <= $peak_elements[2]) {
					$pushed = 1;
					push (@nearest,"chr$peak_elements[0]\t$peak_elements[1]\t$peak_elements[2]\t0\t$g4_elements[3]\t$g4_elements[1]\t$g4_elements[2]\t$g4_elements[5]\n");
					$g4ctr++;
					$overlap_counter++;
					next;
				}
				if ($pushed == 1) {
					$g4ctr = $g4ctr - $overlap_counter;
					last;
				}
				if ($g4_elements[1] > $peak_elements[2]){
					my $distance = $g4_elements[1] - $peak_elements[2];
					if ($distance<$closest_distance) {
						$closest_distance = $distance;
					}
					else {
						$closest_distance = $closest_distance * (-1);
						$g4ctr--;
						chomp $bedlines[$g4ctr];
						@g4_elements = split(/\t/,$bedlines[$g4ctr]);
					}
					push (@nearest,"chr$peak_elements[0]\t$peak_elements[1]\t$peak_elements[2]\t$closest_distance\t$g4_elements[3]\t$g4_elements[1]\t$g4_elements[2]\t$g4_elements[5]\n");
					last;
				}
				else {
					#print "Improper behaviour of coordinates\n";
				}
			}
			if ($g4_elements[0] > $peak_elements[0]) {                 
				last;
			}
			if ($g4_elements[0] < $peak_elements[0]){
				$closest_distance = 1000000;
				$pushed = 0;
				$g4ctr++;
			}
		}           
	}  
	print NOUT @nearest;
	close(NOUT);
}

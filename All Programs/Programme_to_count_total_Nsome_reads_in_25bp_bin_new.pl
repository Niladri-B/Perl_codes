
print "\n\nEnter INPUT List File Name: ";
chomp ($File_List=$ARGV[0]);
print "\n\nEnter OUTPUT File Name: ";
chomp($output =$ARGV[1]);
open (LIST, "$File_List") or die "Sorry Unable to open gene list file name\n";
open (OUT , ">$output") or die "Sorry to create Output File\n";

@FILE = <LIST>;
$bin=10000;
foreach $file (@FILE)
	{
		chomp($file);
		@arr = split (/\t/ , $file);
		$First = shift (@arr);
		$Second = shift (@arr);
		open (FIRST , "$First") or die "Sorry to open First File\n";
		open (SECOND , "$Second") or die "Sorry to open Second File\n";
		@FILE_A = <FIRST>;
		@FILE_B = <SECOND>;

		$z=0;
		@temp="";
		@temp1="";
		shift @temp;
		shift @temp1;


			foreach $line(@FILE_A)
				{
				if(!@FILE_B){exit;}
				$z++;
				@data=split(/\s+/,$line);
					chomp $line;
					print OUT "\n$line\t";
					#getting outer and inner boundary of coordinates#
					$start=$data[1];
					$end=$data[1] + $bin;
					$sum=0;
					#reading File-B data#
						foreach $line4(@FILE_B)
							{	
								@data1=split(/\s+/,$line4);
								if($data1[1]>=$start && $data1[1]<$end)
									{
										push @temp,$line4;
									}
								elsif($data1[1]>$end)
									{
										last;
									}
							}
							while()
					{
								$rm=$FILE_B[0];
								@data_rm=split(/\s+/,$rm);
								
								if($data_rm[1]<$start)
						{
									shift @FILE_B;
						}
						else
						{
							last;
						}
					} 

						for($j=$start;$j<=$end;$j=$j+25)
							{
								foreach $line_temp(@temp)
								{		
									@data_temp=split(/\s+/,$line_temp);
									
									if($data_temp[1]>=$j && $data_temp[1]<$j+25)
										{
										$sum+=$data_temp[2];	
										
										}
										elsif($data_temp[1]>$j+25)
										{
											last;
										}	
								}
								print OUT "$sum\t";
								$sum=0;
							}
				}
	}


close(LIST);
close(OUT);

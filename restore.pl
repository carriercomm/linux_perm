my $stateFile = $ARGV[0];

open(STATE_IN, "<$stateFile");

foreach $line (<STATE_IN>)
{
  chomp($line);
  my ($permissions, $file) = split(':', $line, 2);
  if( -f $file )
  {
    chmod(oct($permissions), $file);
  }
}

close(STATE_IN);

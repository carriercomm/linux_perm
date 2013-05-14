my $tree = $ARGV[0];

foreach $file (`/usr/bin/find ${tree}`)
{
  chomp($file);
  (undef, $inode, $mode, undef, $uid, $gid, $undef, $size, undef, undef, undef, undef, undef) = stat($file);
  $permissions = $mode & 07777;
  printf "%04o:%s\n", $permissions, $file;
}

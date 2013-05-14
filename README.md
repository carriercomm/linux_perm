linux_perm
==========

Perl script to generate and restore the permissions of folders and files in Linux.

Usage instructions
------------------

To generate the file containing the files and their associated permissions simply run

`# save_state.pl \path\to\folder > permissions_list.txt`

To restore the permissions run

`# restore.pl permissions_list.txt`


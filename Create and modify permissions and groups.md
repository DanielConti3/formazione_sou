# Create files, directories and modify permissions
Let's first create a directory using the `mkdir` command and then inside it create a file using the `touch` command.
Afterwards let's see the permissions of both of them with the command `ls -l`.
```
mkdir dir_1
cd dir_1
touch foo.log
ls -l foo.log
-rw-r--r--. 1 [username] [username] [data e ora] foo.log
```
Before seeing the permissions of this file, let me explain what the output of the `ls -l` command has shown us. The [-] shows that this foo.log is a file, while if instead of `-` it showed `d` it would have been a directory. Afterwards we find three groups made or three values.
The first group being 'User', the second group being 'Group' and the last group being 'Other'. Each of these groups, also called with their abbreviations `'u''g''o'`, have the r,w and x permissions.
```
r => read
w => write
x => execute
```
This being said, `-rw-r--r--. 1 [username] [username] [data e ora] foo.log` tells us that the foo.log, is a file, that has permissons to read and write for the User, permission to read for Groups and permission to read for all Other users.
## Modify permissions
We can change the permissions of a file or directory using the `chmod` command, inserting either one or more of the users, `u` `g` `o`, alternatively we can use `a` or `all` instead of writing `ugo`, then insert whether you want to add `+`, remove `-` or set `=` followed by one or multiple of the permission options: `r` `w` `x`.
```
chmod u+x foo.log && chmod go-r foo.log
-rwx------. 1 [username] [username] [data e ora] foo.log
```
This way we have added the permission to execute the file to the to the User owner of the file and removed the permission to read the file to everybody else.
###### I hope this guide was helpful, now you know how to create files and directories while also being able to check and edit the permission to them 😄.

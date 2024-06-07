# Create SSH keys and setup link between device and server.
To get started, let's generate a SSH key in RSA with the `ssh-keygen` command, this will create said key in the `$/HOME/.ssh/` directory.
> [!NOTE]
> Remember that you need to execute this command on the device you wish to establish the connection from, not on the server.

```
ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key ($HOME/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in $HOME/.ssh/id_rsa.
Your public key has been saved in $HOME/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
The key's randomart image is:
+---[RSA 2048]----+
```
After the keys are generated, you will need to establish the actual connection, using the command `ssh-copy-id` with the option -i, so that you will copy the key inside the identified file.
```
ssh-copy-id -i $HOME/.ssh/id_rsa.pub [username]@[ip]
```
Once copied the keys, we can now access with the data of the server.
```
ssh [username]@[ip]
```
###### I hope this guide was helpful, now you know how to create SSH keys in RSA and how to use them 😄.

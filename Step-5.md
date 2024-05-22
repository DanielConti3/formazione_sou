# Step 5
## Setup of Virtual Machines RockyLinux and Debian
Install the VMs RockyLinux and Debian through the iso in the following links:
- RockyLinux https://rockylinux.org/download
- Debian https://www.debian.org
## Creating a partition on the VMs
Create a partition of the disks using the following command `parted` to enter disk configuration mode to then use the command `print` and show the current partitioning of the device.
> [!IMPORTANT]
> Keep in mind that to partition the disk you will need to have access to the `sudo`.
```
sudo parted /dev/sDX
(parted) print
```
At this point to actually partition the disk you will need to use the command `mkpart`
```
(parted) mkpart
Partition type? primary/extended? [type or partition desired]
File system type? [ext2]? [type of file system desired]
Start? [starting byte for memory space]
End? [ending byte for memory space]
```
## Setup of Apache HTTP Server
Check that all packets inside the system are up to date with:
```
sudo dnf update -y
```
Then proceed with the installation of the http packets to then start the service:
```
sudo dnf install http -y
sudo systemctl start httpd
```
The next step on the list is to activate the firewall for HTTP and HTTPS with:
```
sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload
```
At this point the server should be up and running and you will be able to operate with it using:
```
sudo systemctl stop httpd
sudo systemctl start httpd
sudo systemctl restart httpd
sudo systemctl status httpd
```
Lastly, if you want to check the connectivity of a device with the Apache server, you can simply run the `curl` command on said device to try and create a link to the server.
```
curl [ip_server]
```
###### I hope this tutorial was helpful, have fun with your new server 😄

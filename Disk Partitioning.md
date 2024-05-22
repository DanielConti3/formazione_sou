# Partitioning
> [!NOTE]
> If this is your first attempt at partitioning, i suggest you to use Virtual Machines, so that any mistake you might end up making won't end up in damaging your own device and disk.
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
###### I hope this guide was helpful, now u know how to easily partition the disk on your device 😄.

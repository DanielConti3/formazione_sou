# Setup of Apache HTTP Server
> [!NOTE]
> In this section I will show you how to Setup an Apache HTTP Server, keep in mind that you will need to have the permission to `sudo`.

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
###### I hope this tutorial was helpful, have fun with your new Apache server 😄

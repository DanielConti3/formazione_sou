# Change Password's duration and warning.

In this file, I will show how to setup and/or change some security measures.
To start let's write down this command to edit the configuration file `login.sedf`:
> [!NOTE]
> In this guide, i use the "vi" text editor, it should be installed in all Linux based machines, but if you don't have it, feel free to use any other text editor you have.
```
sudo vi /etc/login.sedf
```
Find inside the file the following voices and edit the values until they will reflect you preferences; in this case I will set up the passwords so that they will have a duration of 90 days after which you will have to change them, and a warning of 5 days before the password expires.
```
PASS_MAX_DAYS 90
PASS_MIN_DAYS 0
PASS_WARN_AGE 5
```
## Create new Users
To create a new user with your machine, we can use the following command:
```
sudo adduser [option] [user_name]
sudo passwd [user_name]
```
> [!IMPORTANT]
> Keep in mind that is it also possible to use the `assuser -p [password]` to create an encrypted password, but this is not suggested since you could simply run the `history` command and find out the password this way

At this point if you want to add the newly created or already existing users to a group, you can simply use this command:
```
sudo adduser -g [gruppo] [user_name]
```
###### I hope this guide was helpful, now you know how to change the expire date of you passwords 😄.

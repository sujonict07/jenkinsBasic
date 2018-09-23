# jenkinsBasic

Jenkins :
   * java application
   * used for continuous intregration and continuous delivery
   * How jenkins works: 

![alt text](https://github.com/sujonict07/jenkinsBasic/blob/master/introduction-to-jenkins-7-638.jpg)

### installation of jenkins server

**Prerequirments**
   - java 8 [install](https://github.com/sujonict07/jenkinsBasic/blob/master/java_and_tomcat_install.md)
   - apache-tomcat8


###### step 1: 
* Download jenkins from https://jenkins.io/download/
###### step 2 : 
* Place the war file into any location on your system.

or 

###### build jenkins server from repo

* sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
* sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

yum install jenkins

###### If firewalld is not disabled, then use this command: 
```
firewall-cmd -zone=public --add-port=8080/tcp --permanent
firewall-cmd --zone=public --add-port=8080/tcp --permanent
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd reload
firewall-cmd --reload
```
jenkins server status
```
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service
```
reboot your server.
http://<server_ip>:8080/

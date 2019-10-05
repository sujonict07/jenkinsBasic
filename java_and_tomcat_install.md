```
sudo yum install java-1.8.0-openjdk
sudo yum install java-1.8.0-openjdk-devel
sudo groupadd tomcat
sudo useradd -M -s /bin/nologin -g tomcat -d /opt/tomcat tomcat

wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.23/bin/apache-tomcat-8.0.23.tar.gz

sudo mkdir /opt/tomcat
sudo tar xvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat
sudo chgrp -R tomcat conf
sudo chmod g+rwx conf
sudo chmod g+r conf/*
sudo chown -R tomcat webapps/ work/ temp/ logs/
```

```
sudo vi /etc/systemd/system/tomcat.service
```

Added the following lines : 

```

      [Unit]
      Description=Apache Tomcat Web Application Container
      After=syslog.target network.target

      [Service]
      Type=forking

      Environment=JAVA_HOME=/usr/lib/jvm/jre
      Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
      Environment=CATALINA_HOME=/opt/tomcat
      Environment=CATALINA_BASE=/opt/tomcat
      Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
      Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

      ExecStart=/opt/tomcat/bin/startup.sh
      ExecStop=/bin/kill -15 $MAINPID

      User=tomcat
      Group=tomcat

      [Install]
      WantedBy=multi-user.target

```

###### Restart your services 

```
sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl status tomcat

yum install net-tools
netstat -anp|grep java
```
### For Ubunut 18.04 

Install java.
```
apt install default-jre
apt install openjdk-8-jre-headless
```
And check version by:
```
java --version
```



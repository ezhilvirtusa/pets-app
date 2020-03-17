# pets-app for Weekend DevOps training (15-Feb-2020)

### Maven command to create java web project


```
  mvn archetype:generate 
	-DgroupId=in.javahome
	-DartifactId=pets-app
	-DarchetypeArtifactId=maven-archetype-webapp
	-DinteractiveMode=false

```
### Install Nexus3 on Linux

```
   sudo yum install java-1.8.0-openjdk -y
   cd /opt/
   sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
   sudo tar -xf latest-unix.tar.gz
   sudo mv nexus-3.21.1-01/ nexus3
   sudo chown -R ec2-user:ec2-user nexus3/ sonatype-work/
```
#### Start/Stop/Restart Nexus server
```
  /opt/nexus3/bin/nuxus start
  /opt/nexus3/bin/nuxus stop
  /opt/nexus3/bin/nuxus restart
```

### Configure Nexus as Service

```
    vi /opt/nexus3/bin/nexus.rc
    run_as_user="ec2-user"
    sudo ln -s /opt/nexus3/bin/nexus /etc/init.d/nexus
    
    cd /etc/init.d
    sudo chkconfig --add nexus
    sudo chkconfig --levels 345 nexus on
    sudo service nexus start
```

### Install Tomcat8 on Linux

```
   cd /opt/
   sudo wget http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz
   sudo tar -xf apache-tomcat-8.5.51.tar.gz
   sudo mv apache-tomcat-8.5.51 tomcat8
   sudo chown -R ec2-user:ec2-user tomcat8/
   
   sudo yum install java-1.8.0-openjdk -y
```
#### Manage tomcat
```
    /opt/tomcat8/bin/startup.sh
    /opt/tomcat8/bin/shutdown.sh 
```

### Install Jenkins on Linux

```
   sudo yum install java-1.8.0-openjdk-devel -y
   sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
   sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
   sudo yum install jenkins -y
   
   sudo chkconfig jenkins on
   
   sudo service jenkkins start
   
```

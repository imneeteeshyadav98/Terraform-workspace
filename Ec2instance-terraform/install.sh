#! /bin/bash
sudo amazon-linux-extras install epel -y 
sudo yum update -y 
sudo yum install gcc-c++ make -y 
sudo yum install -y httpd
sudo service httpd start 
sudo systemctl enable httpd
sudo curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
sudo yum install nodejs -y 
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
sudo amazon-linux-extras install java-openjdk11
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y 
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo yum install firewalld -y 
sudo firewall-cmd --add-port=8080/tcp --permanent
sudo firewall-cmd --reload
sudo yum install postgresql-server postgresql-contrib -y 
sudo postgresql-setup initdb
sudo systemctl start postgresql
sudo systemctl enable postgresql
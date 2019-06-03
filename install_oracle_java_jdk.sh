#!/bin/bash
  
# download from git
echo 'Downloading jdk-8u212-linux-x64.tar.gz from github/frekele/...'
wget https://github.com/frekele/oracle-java/releases/download/8u212-b10/jdk-8u212-linux-x64.tar.gz

# unzip
echo 'Unziping jdk-8u212-linux-x64.tar.gz...'
tar -xf jdk-8u212-linux-x64.tar.gz

# move to /usr/
sudo mv jdk1.8.0_212 /usr/

# update java conf
echo 'Updating alternatives...'
sudo update-alternatives --install /usr/bin/java java /usr/jdk1.8.0_212/bin/java 2
sudo update-alternatives --config java

# setting JAVA_PATH
echo 'Setting ENV params...'

TAR="/etc/profile.d/javajdk.sh"
touch $TAR

echo 'export PATH=$PATH:/usr/jdk1.8.0_212/bin' > $TAR
echo 'export JAVA_HOME=/usr/jdk1.8.0_212' >> $TAR
echo 'export JRE_HOME=/usr/jdk1.8.0_212/jre/' >> $TAR
echo 'export J2SDKDIR=/usr/jdk1.8.0_212' >> $TAR
echo 'export J2REDIR=/usr/jdk1.8.0_212/jre' >>$TAR

# Last step
echo 'Almost done'
echo 'Run the following script in terminal'
echo ''
echo 'source /etc/profile.d/javajdk.sh; echo $JAVA_HOME'
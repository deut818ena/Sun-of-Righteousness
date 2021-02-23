
#!/bin/bash
cd /opt
##The below command will download and install all required development libraries to your system.
yum groupinstall "Development Tools" -y
yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel curl-devel -y
yum install wget tar -y
##https://github.com/git/git/releases
wget https://github.com/git/git/archive/v2.30.0.tar.gz  -O git-bash.tar.gz
tar -zxf git-bash.tar.gz
cd git-2.30.0
make configure
./configure --prefix=/usr/local
##make install command will copy the built program, and its libraries and documentation, to the correct locations.
make install
git --version

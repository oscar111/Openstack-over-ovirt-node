Openstack-over-ovirt-node
=========================

Based on ovirt-node project, create img of Openstack nodes


Prepare build environment

1. Install a host with CentOS 6.5

2. Congigure repo of Centos and epel

3. yum install -y http://rdo.fedorapeople.org/openstack-icehouse/rdo-release-icehouse.rpm

4. yum clean all 

5. git clone https://github.com/oscar111/Openstack-over-ovirt-node.git 

6. cd Openstack-over-ovirt-node/autobuild

7. sh installPkg.sh


Build kimchi

1. git clone https://github.com/kimchi-project/kimchi 

2. cd kimchi

3. ./autogen.sh --system

4. make

5. make rpm

6. Create local repo for kimchi

cp -rf kimchi/rpm/RPMS/x86_64/kimchi-1.2.0-90.git19011c7.el6.x86_64.rpm /root/rpm/RPMS/x86_64/

createrepo /root/rpm/RPMS/x86_64/ --update


Build iso of compute node
1. cd Openstack-over-ovirt-node/ovirt-node

2. ./autobuild.sh




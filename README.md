# XenServer Automater

Automaticall configure network settings of your guest vm up on provisioning

## Usage

used with knife-xenserver https://github.com/bvox/knife-xenserver


```sh
UUID=`xe vm-install template=mytemplate  new-name-label=newvm`
xe vm-param-set uuid=$UUID xenstore-data:vm-data/ip=192.168.1.20
xe vm-param-set uuid=$UUID xenstore-data:vm-data/gw=192.168.1.254
xe vm-param-set uuid=$UUID xenstore-data:vm-data/nm=255.255.255.0
xe vm-param-set uuid=$UUID xenstore-data:vm-data/ns=192.168.1.254
xe vm-param-set uuid=$UUID xenstore-data:vm-data/dm=mydomain.com
xe vm-start uuid=$UUID
```

## Install

Commands to install xenserver-automater to your vm template

```sh
wget https://github.com/duckworth/xenserver-automater/tarball/master -O xenserver-automater.tar.gz
tar -xvf xenserver-automater.tar.gz
cd 
bash install.sh (ubuntu) or install-rhl.sh (centos/redhat)
```

FROM ubuntu:16.04

RUN  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install git make python python-pip debhelper && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install wget tox && \
  DEBIAN_FRONTEND=noninteractive pip install -U pip && \
  DEBIAN_FRONTEND=noninteractive pip install -U setuptools setuptools-version-command stdeb && \
  DEBIAN_FRONTEND=noninteractive pip install -U pyang pyangbind && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install python-yaml python-netaddr python-boto && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common && \
  DEBIAN_FRONTEND=noninteractive add-apt-repository -y cloud-archive:ocata && \
  DEBIAN_FRONTEND=noninteractive apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install python-novaclient python-keystoneclient python-glanceclient python-cinderclient python-neutronclient && \
  DEBIAN_FRONTEND=noninteractive pip install -U progressbar pyvmomi pyvcloud==18.2.2 && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install python-argcomplete python-bottle python-cffi python-packaging python-paramiko python-pkgconfig libmysqlclient-dev libssl-dev libffi-dev python-mysqldb && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install python-logutils python-openstackclient python-openstacksdk


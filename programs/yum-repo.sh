#!/bin/bash

ansible all -m yum_repository -a 'name=BaseOS file=BaseOS baseurl=file:///mnt/BaseOS/ description="Base OS Repo" gpgcheck=yes gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release' -b
ansible all -m yum_repository -a 'name=AppStream file=AppStream baseurl=file:///mnt/AppStream/ description="AppStream Repo" gpgcheck=yes gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release' -b

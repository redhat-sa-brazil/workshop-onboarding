#!/bin/bash
oc cluster down
systemctl stop docker
rm -rf /var/lib/origin
rm -rf ~/.kube
for m in $(mount | grep openshift | awk '{print $3}'); do umount $m; done
systemctl start docker

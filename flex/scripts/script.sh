#!/bin/bash

appname="nfs-app-c"
rwxname="nfs-shared-c"

for i in {21..30..1}
	do
		cp pvcrwxex.yaml "pvc""$i"".yaml"
		cp ex_deployment.yaml "dep""$i"".yaml"
		aname=$appname$i
		rname=$rwxname$i
		sed -i "s/nfs-c4/$aname/g" "dep""$i"".yaml"
		sed -i "s/nfs-shared-2/$rname/g" "dep""$i"".yaml"
		sed -i "s/nfs-shared-2/$rname/g" "pvc""$i"".yaml"
		kubectl create -f "dep""$i"".yaml" -n t001-u000004
		kubectl create -f "pvc""$i"".yaml" -n t001-u000004
		sleep 8
	done 

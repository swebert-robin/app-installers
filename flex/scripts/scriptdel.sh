#!/bin/bash

appname="nfs-app-c"
rwxname="nfs-shared-c"

for i in {2..27..1}
	do
		rm -rf "dep""$i"".yaml" "pvc""$i"".yaml"
		kubectl delete deployment $appname$i -n t001-u000004
   		kubectl delete pvc $rwxname$i -n t001-u000004
	done 

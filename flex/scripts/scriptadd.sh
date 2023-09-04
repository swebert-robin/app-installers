#!/bin/bash

appname="nfs-app-c"
for i in {2..10..1}
	do
		aname=$appname$i
                echo $aname
	        robin app register $aname --selector app=$aname --namespace t001-u000004 
        done 

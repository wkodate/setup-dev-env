#!/bin/sh
ip=`cat ./Vagrantfile | awk '/config.vm.network/ && /ip/' | sed -e "s/^.*ip: \"\(.*\)\".*$/\1/g"` 
knife solo prepare vagrant@$ip

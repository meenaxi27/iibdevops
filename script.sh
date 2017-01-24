#!bin/bash
#author  meenaxi.s.gunjati

#cloud foundry clogin
cf login -a https://api.ng.bluemix.net -u meenaxi.s.gunjati@accenture.com -p Ganesh27 -o "ACIT Bluemix Studio" -s TJX-IBM-Containers

echo "------initializing ic------"
cf ic init

echo "-----display the current directory and the contents-----"
pwd
ls


echo "-------copying all the files from the git repository into the IIB container-----------"
#tar -c . | cf ic exec -i 1f88409b-5d5 /bin/tar -C /tmp -x

echo " pwd;exit" | docker exec -i  1f88409b-5d5  /bin/bash
echo "unzip the projectt interchange file -------start----------"
echo "pwd;"cd tmp";"7z x /tmp/iibdevopsprojectinterchange.zip -aoa"; exit" | docker exec -i  1f88409b-5d5  /bin/bash
echo "unzip project interchange complete -------complete----------"

echo "running the mqsiprofile and mqsipackagebar--------start-------"
echo ""source /opt/ibm/mqsi/9.0.0.2/bin/mqsiprofile";pwd;"mqsipackagebar -w /tmp -a iibdevops.bar -k iibdevops"; exit" | docker exec -i  1f88409b-5d5  /bin/bash
echo "running the mqsiprofile and mqsipackagebar -------complete-------"

echo " ----------------IIB 10 Container build---------------------------"


echo "-------copying all the files from the git repository into the IIB container-----------"
#echo " "sudo su";"cd bin";"chmod 777 tar";exit" | docker exec -i 58d8e0d8-c43  /bin/tar
echo "------full permissions to tar complete--------"
#tar -c . | cf ic exec -i 21c5fece-615 /bin/tar -C /tmp -x

#echo "copy the project interchange file -------complete----------"
#echo " pwd;exit" | docker exec -i 21c5fece-615  /bin/bash
echo "unzip the projectt interchange file -------start----------"
echo "" sudo 7z x /tmp/iib10devops.zip -aoa"; exit" | docker exec -i  21c5fece-615  /bin/bash
echo "unzip project interchange complete -------complete----------"

echo "running the mqsiprofile and mqsipackagebar--------start-------"
echo "whoami;pwd;"sudo su root";whoami;"PATH=$PATH:/opt/ibm/iib-10.0.0.7/common/jdk/jre/bin:/var/mqsi/extensions/10.0.0/server/bin:/var/mqsi/extensions/10.0.0/bin:/opt/ibm/iib-10.0.0.7/server/bin/mosquitto:/opt/ibm/iib-10.0.0.7/server/bin:/opt/ibm/iib-10.0.0.7/common/node/bin:/opt/ibm/iib-10.0.0.7/server/isadc:/opt/ibm/iib-10.0.0.7/tools:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/iib-10.0.0.7/server/bin/";pwd;whoami;"sudo su root";whoami;"chmod 777 iib10devops";"source /opt/ibm/iib-10.0.0.7/server/bin/mqsiprofile";mqsilist;pwd;mqsilist;whoami;"mqsipackagebar -w . -a iib10devops.bar -k iib10devops"; exit;exit" | docker exec -i  21c5fece-615  /bin/bash
echo "running the mqsiprofile and mqsipackagebar on IIB 10 Container-------complete-------"







echo  "------ BUILD SUCCESSFULLY COMPLETE-----"





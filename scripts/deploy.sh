#!/usr/bin/env bash

mvn clean package

echo 'Copy files... scp -i -/.ssh/id_rsa \'

 scp -i -/.ssh/id_rsa \
         D:/A/springboot/target/sweater-1.0-SNAPSHOT.jar \
        pom@192.168.254.131:/home/pom/

echo 'Restart server... scp -i -/.ssh/id_rsa \'

scp -i -/.ssh/id_rsa \
         D:/A/springboot/target/sweater-1.0-SNAPSHOT.jar \
        pom@192.168.254.131 << EOF

pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'

#!/bin/bash

cat <<EOT >> pod1.yaml
 
   readinessProbe:
     tcpSocket:
       port: 80
     initialDelaySeconds: 5
     periodSeconds: 10
   livenessProbe:
     tcpSocket:
       port: 80
     initialDelaySeconds: 15
     periodSeconds: 20
EOT
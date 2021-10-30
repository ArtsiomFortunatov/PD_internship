#!/bin/bash

cat <<EOT >> pod1.yaml
 readinessProbe:
   tcpSocket:
     port: 8080
   initialDelaySeconds: 5
   periodSeconds: 10
 livenessProbe:
   tcpSocket:
     port: 8080
   initialDelaySeconds: 15
   periodSeconds: 20
EOT
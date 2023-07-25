#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Fehler: Bitte geben Sie die IP-Adresse der EC2-Instanz als Argument an."
  echo "Beispiel: $0 123.456.789.123"
  exit 1
fi

cp /mnt/c/Users/probs/Downloads/key.pem ~/key.pem
chmod 600 ~/key.pem
ssh -i ~/key.pem ec2-user@"$1"


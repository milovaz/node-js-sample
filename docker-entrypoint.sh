#!/bin/bash
set -e
PARAPHRASEDEC=$(echo "${PARAPHRASE}" | openssl enc -d -base64 | openssl rsautl -decrypt -inkey "${Certificates_nodeSampleServicePkg_code_MyCert1_PEM}")
export JENKINS_NAME_TESTE=$(echo "${JENKINS_NAME_TESTE}" | openssl enc -d -aes-256-cbc -a -k "${PARAPHRASEDEC}")
npm start

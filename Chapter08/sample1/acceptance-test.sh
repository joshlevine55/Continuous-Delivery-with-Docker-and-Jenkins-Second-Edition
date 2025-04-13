#!/bin/bash
set -x

NODE_IP=$(kubectl --insecure-skip-tls-verify get nodes -o jsonpath='{ $.items[0].status.addresses[?(@.type=="InternalIP")].address }')
NODE_PORT=$(kubectl --insecure-skip-tls-verify get svc calculator-service -o=jsonpath='{.spec.ports[0].nodePort}')
./gradlew acceptanceTest -Dcalculator.url=http://172.18.0.4:${NODE_PORT}

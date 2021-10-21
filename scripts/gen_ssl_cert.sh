#!/bin/bash
for I in localhost.localdomain; do
    openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes \
        -keyout ${I}.key -out ${I}.crt -extensions san -config \
        <(
            echo "[req]"
            echo distinguished_name=req
            echo "[san]"
            echo subjectAltName=DNS:${I},IP:127.0.0.1
        ) \
        -subj "/CN=${I}"
done

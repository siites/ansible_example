#! /usr/bin/env bash

sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@10.10.10.11 hostname
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@10.10.10.12 hostname
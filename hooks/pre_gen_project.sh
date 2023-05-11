#!/bin/bash

echo 'hi from the pre generation hook';

export PATH=$PATH:/bin
whoami
uptime

curl 'https://www.google.com'

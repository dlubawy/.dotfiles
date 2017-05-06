#!/bin/bash
ssh -i .ssh/id_rsa -L 5901:localhost:5901 -N -f root@192.168.1.144

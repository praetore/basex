#!/bin/bash

if [ "$1" != "" ];
then
    basexhttp -S;
    basexclient -U $BASEXUSER -P $BASEXPASSWORD -c "CREATE DB $1 /docker-initpoint.d";
    basexhttp stop;
fi

basexhttp -h 8080

#!/bin/bash

mongo <<EOF
use admin;
db.createUser({
user: "root",
pwd: "H5gamere40d6bjm#2021",
roles: [ { role: "root", db: "admin" }, "readWriteAnyDatabase" ],
mechanisms : ["SCRAM-SHA-1"]
});

db.auth('root','H5gamere40d6bjm#2021');

db.createUser({
user: "capmouser",
pwd: "H5gamere40d6bjm#2021",
roles: [ { role: "__system", db: "admin" }, "readWriteAnyDatabase" ],
mechanisms : ["SCRAM-SHA-1"]
});

db.createUser({
user: "reader",
pwd: "u123123",
roles: [ { role: "readAnyDatabase", db: "admin" }, "readAnyDatabase" ],
mechanisms : ["SCRAM-SHA-1"]
});

EOF

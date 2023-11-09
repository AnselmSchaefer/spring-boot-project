#!/bin/bash
var=$(curl localhost:8080/persons | jq '.[0] | .firstName'); [[ $var =~ "first_name" ]]; echo $?

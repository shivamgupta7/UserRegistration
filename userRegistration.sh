#!/bin/bash -x

shopt -s extglob
echo "Enter Last Name (starts with Cap and has min 3 char): "
function lastName()
{
   read lname
   lname_pat="^[A-Z][a-z]{2,}$"
   if [[ $lname =~ $lname_pat ]]
   then
      echo "Valid Last Name."
   else
      echo "Invalid Last Name."
   fi
}

lastName

#!/bin/bash -x

shopt -s extglob
echo "Enter Fast Name (starts with Cap and has min 3 char): "
function firstName()
{
   read fname
   fname_pat="^[A-Z][a-z]{2,}$"
   if [[ $fname =~ $fname_pat ]]
   then
      echo "Valid First Name."
   else
      echo "Invalid First Name."
   fi
}

firstName

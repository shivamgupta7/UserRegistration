#!/bin/bash -x

shopt -s extglob
function password_1()
{
   echo "Enter password(minimun 8 char) :"
   read password
   password_pat1="^[A-Za-z0-9]{8,}$"
   if [[ $password =~ $password_pat1 ]]
   then
      echo "Password is valid."
   else
      echo "Invalid Password."
   fi
}

password_1

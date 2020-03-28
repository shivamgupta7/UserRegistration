#!/bin/bash -x

shopt -s extglob
function password_3()
{
   echo "Enter password(minimun 8 char at least 1 Upper Case & Numeric number) :"
   read password
   password_pat3="^(?=.*[A-Z])(?=.*[0-9])[A-Za-z0-9]{8,}$"
   if [[ $password =~ $password_pat3 ]]
   then
      echo "Password is valid."
   else
      echo "Invalid Password."
   fi
}

password_3

#!/bin/bash -x

shopt -s extglob
function password_2()
{
   echo "Enter password(minimun 8 char & at least 1 Upper Case) :"
   read password
   password_pat2="^(?=.*[A-Z])[A-Za-z0-9]{8,}$"
   if [[ $password =~ $password_pat2 ]]
   then
      echo "Password is valid."
   else
      echo "Invalid Password."
   fi
}

password_2

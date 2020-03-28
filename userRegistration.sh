#!/bin/bash -x

shopt -s extglob
function emailID()
{
   echo "Enter Email Id :"
   read email
   email_pat="^([a-zA-Z]+[a-zA-Z0-9]*((\.|\-|\+|\_)?[A-Za-z0-9]*))@([a-zA-Z0-9]+)\.([a-z]{2,4})(\.[a-z]{2})?$"
   if [[ $email =~ $email_pat ]]
   then
      echo "Email is valid."
   else
      echo "Invalid Email."
   fi
}

emailID

#!/bin/bash -x

shopt -s extglob
function mobileNumber()
{
   echo "Enter Mobile Number with country code :"
   read mobile
   mobile_pat="^[0-9]{2}[[:space:]][0-9]{10}$"
   if [[ $mobile =~ $mobile_pat ]]
   then
      echo "Mobile number is valid."
   else
      echo "Invalid Mobile number."
   fi
}

mobileNumber

#!/bin/bash -x

shopt -s extglob
function password_4()
{
   echo "Enter password(minimun 8 char at least 1 Upper Case & Numeric number & exactly 1 Special Character) :"
   read password
   password_pat4="^(?=.*[A-Z])(?=.*[0-9])(?!.*[<>`])(?=[^.,:;'!@#$%^&*_+=|(){}[?\-\]\/\\]*[.,:;'!@#$%^&*_+=|(){}[?\-\]\/\\][^.,:;'!@#$%^&*_+=|(){}[?\-\]\/\\]*$).{8,}$"
   if [[ $password =~ $password_pat4 ]]
   then
      echo "Password is valid."
   else
      echo "Invalid Password."
   fi
}

password_4

#!/bin/sh
while :
do
clear
	printf "%s\n" "Welcome to the Phone Directory"
	printf "%s\n" "1. Add a Contact"
	printf "%s\n" "2. Search Contacts"
	printf "%s\n" "3. Delete Contact"
	printf "%s\n" "4. View Phone Directory"
	printf "%s\n" "5. Quit"
read -p "Enter your choice" option
clear

case $option in
	1)printf "%s\n" "Add NEW CONTACT"
	 read -p "Enter Name" name
	 printf "%s\n" "Go that!"
	 read -p "Enter Number " number
	 read -p "Enter Email" mail
	clear
	 printf "%s\n" "New Contact Info:"
	 printf "%s\n" "Name: $name Number: $number Email: $mail"
	 printf "%s\n"  "$name : $number : $mail" >> phonedir.log
	 printf "%s\n" "Saved successfully";;
	2)printf "%s\n" "SEARCH CONTACTS"
	 read -p "Enter contact name to Search" search_query
	 clear
	 printf "%s\n" "SEARCH  RESULTS:"
	 grep -i $search_query phonedir.log;;
	3)printf "%s\n" "DELETE RESULTS:"
	 read -p "Enter contact name  to be Deleted (case-sensitive):" delete_string
	 sed -i -e "/$delete_string/d" phonedir.log
	 printf "%s\n" "Delete Successful";;
	4)printf "%s\n" "PHONE DIRECTORY"
	  printf "%s\n" 
	 cat phonedir.log;;
	5)break;;
	*)printf "%s\n" "INVALID OPTION";;
	 esac;

read -p "Press 5 to Quit, Anything else to Return to Main Menu" confirm_exit

if [$confirm_exit -eq 5]
	then  break
fi

done

#Referencia de youtube "how to create phone directory use shell programming" 
#SUDHIR NAGAR
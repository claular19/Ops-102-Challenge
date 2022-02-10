#!/bin/bash
# Script Name: 201 Ops Challenge 10
# Author: Lars Clausen
# Date of last revision: 2/9/2022

# Ask user to type domain

echo "Enter a domain name"
read domain 

# Creates .txt file for information to be exported to

touch domain_search_results.txt

# Performs information search on domain using function and outputs results to .txt file

domain_search () {
	whois $domain 
	dig $domain
	host $domain
	nslookup $domain
}

domain_search > domain_search_results.txt

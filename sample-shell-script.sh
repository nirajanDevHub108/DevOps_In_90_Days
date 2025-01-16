#!/bin/bash

# Create a folder 
mkdir Akhil


#create a two  file 
cd Akhil
touch first_story second_story

x=mississipi

grep -o "s" <<<"$x" | wc -l 

#! /usr/bin/bash 

# Usefull packages (sys config etc.)
APT="sudo apt"


# Certificates for downloading packages through https proto
printf "\tInstall certificates\n"
printf "\t%s\n" "$APT install ca-certificates apt-transport-https"
$APT install ca-certificates apt-transport-https

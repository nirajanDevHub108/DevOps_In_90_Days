#!/opt/homebrew/bin/bash
read -rp "enter your pakcgae namge :" pkgName

echo " installimg yoy pkg: ${pkgName}"
brew install ${pkgName} 

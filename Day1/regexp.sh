#!/opt/homebrew/bin/bash
read -rp "enter your pakcgae namge :" pkgName
osType=$(uname -s)
echo " installimg yoy pkg: ${pkgName}"
brew install ${pkgName}
case ${osType} in
      rhel) yum install ${pkgName} -y ;;
      centos) yum install ${pkgName} -y ;;
      ubuntu) apt-get install ${pkgName} -y ;;
      macOS) brew install ${pkgName} ;;
      *) echo "invalid pakage name we have update this script to work with ${osType}" ;;
esac

sw_vers -productName

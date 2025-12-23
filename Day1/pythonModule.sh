#!/opt/homebrew/bin/bash

moduleName=boto3
python3 -c "import ${moduleName}"
if [[ $? -eq 0 ]]; then
    echo " The ${moduleName} module is installed"
else
    echo "The ${moduleName} module is not installed"
fi
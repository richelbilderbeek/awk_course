#!/bin/bash
#
# Usage:
#
#   ./scripts/deploy_local.sh
#
#

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "./scripts/deploy_local.sh"
    exit 42
fi

mkdocs gh-deploy --force

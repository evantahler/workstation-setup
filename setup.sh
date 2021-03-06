#!/usr/bin/env bash
#
# setup.sh:  run the Pivotal workstation setup
#
# Arguments:
#   - a list of components to install, see scripts/opt-in/ for valid options
#

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

source ${MY_DIR}/env.sh
source ${MY_DIR}/scripts/common/xcode.sh

# Note: Homebrew needs to be set up first
source ${MY_DIR}/scripts/common/homebrew.sh
# source ${MY_DIR}/scripts/common/configuration-bash.sh
source ${MY_DIR}/scripts/common/configuration-zsh.sh

# Place any applications that require the user to type in their password here
brew tap caskroom/cask

source ${MY_DIR}/scripts/common/git.sh
source ${MY_DIR}/scripts/common/developer-common.sh
source ${MY_DIR}/scripts/common/configuration-osx.sh

# For each command line argument, try executing the corresponding script in opt-in/
for var in "$@"
do
    echo "$var"
    FILE=${MY_DIR}/scripts/opt-in/${var}.sh
    echo "$FILE"
    if [ -f $FILE ]; then
        source ${FILE}
    else
       echo "Warning: $var does not appear to be a valid argument. File $FILE does not exist."
    fi
done

source ${MY_DIR}/scripts/common/finished.sh

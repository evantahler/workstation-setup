echo ""
echo " ~~~ Making `hostname` a happy Evan Machine ~~~"
echo ""

source scripts/helpers/brew.sh

## Main Applications
mkdir -p workspace
source ${MY_DIR}/scripts/opt-in/mac-apps.sh

## Developer Tools
source ${MY_DIR}/scripts/opt-in/ruby.sh
source ${MY_DIR}/scripts/opt-in/node.sh
source ${MY_DIR}/scripts/opt-in/heroku.sh
source ${MY_DIR}/scripts/opt-in/docker.sh
# source ${MY_DIR}/scripts/opt-in/android.sh
source ${MY_DIR}/scripts/opt-in/vscode.sh
source ${MY_DIR}/scripts/opt-in/databases.sh

## Designer Tools
source ${MY_DIR}/scripts/opt-in/designer.sh

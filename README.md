# Workstation Setup

This project automates the process of setting up a new machine using a simple [Bash](https://www.gnu.org/software/bash/) script.

## Voom Pairing Machines

To setup a machine, clone this repo.

```sh
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/evantahler/workstation-setup.git
cd workstation-setup
```

...and run `./setup.sh evan`

Evan has forked this project to make some tweaks for our flavor of pairing machine.  The changes include:

### CHANGELOG

### 2019-09
* Remove stuff Evan doesn't care about
  * remove sublime text
  * remove cloudfoundry
  * remove helicoper images
  * remove tuple
  * remove old node8 (just use `node` now)
  * remove all java8/java8/java-tools options
  * remove golang developer tools
  * remove dotnet developer tools
  * remove C developer tools
  * remove lazy bash aliases
* Update things
  * Update currnet ruby version to 2.6.4
  * Update current node to v12

#### 2018-09

* Do not install pivotal ide prefs
* No longer install rubymine
* Install CCMenu
* No more popups during run
* ~~Install slack alpha for better screen sharing~~ (no longer necessary as of 3.3.1)
* Init rbenv inside of ~/.bash_profile
* Update off of pivotal/master, with revisions.
  * ShiftIt now does 1/3, 1/2, 2/3rd screen on successive presses.
  * Install latest version of vim
  * Do NOT install git-hooks-core, do NOT install Atom or VS code.
  * Do NOT send analytics to homewbrew or google.
* Do not hide dock on bottom side for easier remote pairing.


#### 2018-08

* Install node@8 and cocoapods
* Enable bash-it git aliases
* Install htop and react-native-debugger
* Add bash utility to only install brew packages if missing.

#### 2018-04

* Manage Sublime settings
* Install chromedriver cask

#### 2018-02-12
* Added logo images to this repo so pairing machines can set avatars

#### 2018-02-09
* Created the `voom` script, which merges in a few of the original scripts together (ruby, node, & design)
* Created the `heroku` script, which installs Heroku stuff; make it part of the voom install
* Set OSX background image to be a sweet helicopter photo.
* Remove `zoomus` from the default install
* Remove `cloud-foundry` from the default install
* Remove `virtualbox` from the default install
* Remove `skype` as a common application
* Add `keycastr` as a common application
* Move the dock to the right side of the screen
* Added `nvm` to the node.js install scripts
* Remove any global NPM packages.  Those are bad.
* Install yarn when installing node.js

---

## Thank You
* Voom - https://github.com/voomflights/workstation-setup
* Pivotal Labs - https://github.com/pivotal/workstation-setup
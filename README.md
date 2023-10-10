# ubuntu-workstation
This sets up new ubuntu machine as developer workstation with opinionated setup regarding zsh, ruby and python.

* vim, zsh and yadr 
* standard dev packages
* customize shell prompt

### Setting up workstation environment

Please copy and paste following command to setup development environment

```
sh -c "`curl -fsSL https://raw.githubusercontent.com/ajeygore/ubuntu-workstation/main/setup.sh`"

```

### Setting up Lima on Mac


```
brew install lima
limactl create --vm-type=vz --mount-type=virtiofs --mount-writable --network=vzNAT
limactl start --mount-type=virtiofs --mount-writable --network=vzNAT
#Start Lima
lima
#setup the password for user, because yadr will ask password for ZSH change
sudo passwd $USER
#install ubuntu-workstation (https://github.com/ajeygore/ubuntu-workstation)
exit
export LIMA_SHELL=zsh
export LIMA_WORKDIR=/home/$USER.linux
#add user to rvm group.

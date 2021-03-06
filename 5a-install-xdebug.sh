#!/bin/bash

################################
# Install XDebug on Ubuntu 14.04
################################

# INSTALL SDebug
sudo apt-get $OPT_APTGET install php5-xdebug
 
if ! grep -xq "\[xdebug\]" $php_ini
then
sudo tee -a $php_ini <<XDEBUG
[xdebug]
xdebug.remote_enable=On
xdebug.remote_connect_back=On
xdebug.remote_handler=dbgp
xdebug.remote_mode=req
xdebug.remote_host=10.0.0.1
xdebug.remote_port=9000
xdebug.max_nesting_level=256
XDEBUG

fi



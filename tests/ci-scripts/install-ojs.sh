#!/bin/bash

export SWORD_PLUGIN_PATH=$(pwd)
cd /tmp
git clone https://github.com/pkp/ojs
cd ojs
cp config.TEMPLATE.inc.php config.inc.php
git submodule update --init --recursive
ln -s $SWORD_PLUGIN_PATH plugins/generic/
ls plugins/generic
ls plugins/generic/sword

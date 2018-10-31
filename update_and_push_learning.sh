#!/bin/bash

sudo singularity shell --writable ubuntu_learning

cd /opt/TerrainRL/
git pull origin master

exit


#!/bin/bash
### run command in container to update simulation library
# sudo singularity shell --writable ubuntu_learning -c "pushd /opt/TerrainRL; git pull origin master; pushd simAdapter/; ./gen_swig.sh; popd; premake4 gmake; pushd gmake; make config=release64 -j 8; popd"
#
sudo singularity shell --writable deepcrowds.img -c "pushd /opt/TerrainRL; git pull origin deepcrowds; pushd simAdapter/; ./gen_swig.sh; popd; premake4 gmake; pushd gmake; make config=release64 -j 8; popd"


### compile image into simg and send out.
# sudo singularity build ubuntu_learning.simg ubuntu_learning

scp ./deepcrowds.img cedar.computecanada.ca:~/scratch/playground/singularity


#!/bin/bash
### run command in container to update simulation library
sudo singularity shell --writable ubuntu_learning -c "cd /opt/TerrainRL; git pull origin master"

### compile image into simg and send out.
sudo singularity build ubuntu_learning.simg ubuntu_learning

scp ./ubuntu_learning.simg cedar.computecanada.ca:~/scratch/playground/singularity


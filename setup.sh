#!/bin/bash

MCMC_PYTHON=`which python2.7` 

echo "Using python: $MCMC_PYTHON"
echo "(If this is not what you expect, try closing and reopening the terminal, and inspecting your 'PATH' enviornmental variable)"


PKGS=(numpy matplotlib yaml cython)

for pkg in ${PKGS[*]}; do

	$MCMC_PYTHON -c "import $pkg" || echo "ERROR: Python package $pkg not found (Try downloading Anaconda or Canopy distribution)"

done

echo "Looks like all Python packages are there..."
shebang='#!'"$MCMC_PYTHON"
echo "Adding shebang line: '$shebang' to binaries..."
shebang=$(echo $shebang | sed -e 's/\\/\\\\/g; s/\//\\\//g; s/&/\\\&/g')

sed -i '.bak' "1s/.*/$shebang/g" ./bin/mcmc_*

echo "Set up done."
echo "REMINDER:  Make sure you add '$PWD/lib' to your PYTHONPATH"
source ~/.bashrc

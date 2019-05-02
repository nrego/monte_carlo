ssa
===

A monte carlo engine for running Ising and Potts-model type simulations

Dependencies
====

The easiest way to ensure all dependencies are met is to use a Python distribution, such as Anaconda (https://store.continuum.io/cshop/anaconda/) or Canopy (https://www.enthought.com/products/canopy/)

Specifically, this code uses:

NumPy (1.9)

Matplotlib (1.4)

PyYaml (http://pyyaml.org)

Cython (http://cython.org)


Installation
====

After cloning, simply run:
'''
./setup.sh
'''

Make sure you add `[mcmc]/lib` and `[mcmc]/src` to your `PYTHONPATH` environmental variable, where
'[mcmc]' points to the directory of the monte_carlo code.

You may also want to add `mcmc/bin` to your `PATH`

Simulation setup
====

Simulations require two (YAML formatted) configuration files:

System configuration file

Defines system and simulation run parameters:

* Run parameters (Run time, etc)
* Lattice grid setup (number of lattice sites, neighbor list location)
* Species definitions

Parameter configuration file

Defines parameters for the system defined in the system config file:

* System temperature
* Force field (determining pairwise interaction energies)
* (Optional) site-specific functions (for, e.g. background potentials or chemical potentials)
* initial state of system


See examples `examples` for more details:

*sim.cfg* - Simulation config

*params.cfg* - Parameter config


Running a simulation
=====

**ssa_init** : Preprocess configuration files and initialize simulation

**ssa_run** : Run or continue simulation from state file

You can use either command with option '-h' or '--help' for more information

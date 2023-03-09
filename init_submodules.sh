#!/usr/bin/env bash

# exit script if any command fails
set -e
set -o pipefail

# chipyard master
DSPTOOLS_COMMIT=5b1e733
ROCKET_COMMIT=f5ebf26
FIRESIM_COMMIT=69e428f
API_CONFIG_COMMIT=fd8df11
# the newest one
ROCKET_DSP_COMMIT=16e26e7

# git submodule add https://github.com/ucb-bar/dsptools.git tools/dsptools
# cd tools/dsptools
# git checkout $DSPTOOLS_COMMIT
# cd ../..
# git submodule add https://github.com/ucb-bar/rocket-dsp-utils.git tools/rocket-dsp-utils
# cd tools/rocket-dsp-utils
# git checkout $ROCKET_DSP_COMMIT
# cd ../..
# git submodule add https://github.com/chipsalliance/cde.git tools/api-config-chipsalliance
# cd tools/api-config-chipsalliance
# git checkout $API_CONFIG_COMMIT
# cd ../..
# git submodule add https://github.com/chipsalliance/rocket-chip.git generators/rocket-chip
# cd generators/rocket-chip
# git checkout $ROCKET_COMMIT
# cd ../..
# git submodule add https://github.com/firesim/firesim.git sims/firesim
# cd sims/firesim
# git checkout $FIRESIM_COMMIT
# cd ../..
git config --local submodule.sims/firesim.update none
git submodule update --init --recursive
git config --local --unset-all submodule.sims/firesim.update
git submodule update --init sims/firesim
cd ../..


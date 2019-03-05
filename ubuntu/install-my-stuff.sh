#!/bin/bash

# Save the home directory
home="$HOME"
# Directory of this script
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Install packages
source ${script_dir}/install-apt-packages.sh

# Copy the init file and add to .bashrc
init_path=${home}/.awesome_init
source_cmd="source ${home}/.awesome_init"
if [ ! -e ${init_path} ]; then
  cp ${script_dir}/init.sh ${init_path}
fi
if ! grep --quiet "${source_cmd}" ${home}/.bashrc; then
  echo "[IMS] Adding '${source_cmd}' to the .bashrc..."
  echo >> ${home}/.bashrc
  echo "# Installed by 'Install my stuff'" >> ${home}/.bashrc
  echo $source_cmd >> ${home}/.bashrc
fi

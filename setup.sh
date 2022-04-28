#!/bin/bash               

# This script configures git hooks to be symlinked to ./hooks and creates a new conda environment based on the .yml file

envname="env"

install_hooks() {
  git config core.hooksPath \
    || git config core.hooksPath ./hooks
  echo "Hooks configured sucessfully"
}

create_env() {
  read -p "Continue to create environment $envname? (y/n) " answer
  if [ "$answer" == "y" ]
  then
    conda env create --name $envname --file $envname.yml
  else
    echo "Aborting"
  fi
}

install_hooks
create_env
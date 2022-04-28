# git-hooks
This repository contains some git hook implementations. See the sections below which functions are available.

## Initialization
To start using the hooks, simply run `./setup.sh`in the repository folder. The script creates a symbolic link for git to the `/hooks` folder so that they are not ignored.

## Functionality
### conda environment
The `pre-commit` hook updates a .yml file if you've added any packages to the environment specified by the variable `envname` in `/hooks/pre-commit`, `/hooks/post-merge` and `setup.sh`.  

If the remote repository contains an updated version of the .yml, after a pull (and therefore a subsequent merge) the `post-merge` hook updates your local environment.

### jupyter-notebooks
The `pre-commit` hook clears the output of any **changed** jupyter-notebooks to delete unwanted or sensitive data in the notebooks' cache for example. Note that the notebooks have to be staged for a commit.

## Add hooks
If you want to add hooks, just add them to the `/hooks` folder and run `chmod +x /hooks/your_hook` in the repository folder. `pre-commit` and `post-merge` are already in use but can be modified of course.  

Please refer to https://githooks.com/ to check what other hooks are available.

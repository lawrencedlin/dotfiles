# Lawrence's dotfiles

To add a vim plugin the correct way, do `git submodule add https://github.com/vim-syntastic/syntastic` in the correct directory.

See [dotbot](https://github.com/anishathalye/dotbot) for instructions on how to configure the install.conf.yaml

setup folder contains scripts and files to set up env on new machine

If conda does not work, run `conda init [shell]` manually and copy the 
code into your `~/.bashrc_local`

If you want to install dotfiles to a directory other than ~, you can add the following lines to `install`:

```bash
export HOMETEMP="${HOME}"
export HOME="desired_home_path"
...
export HOME=${HOMETEMP}
```

This is useful for shared accounts where you dont want to overwrite the default config files.

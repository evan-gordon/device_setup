# Setting up your device

* add startup.sh to user directory, and add to ~/.profile (doesn't work in .bashrc)

* install git, aptitude, tree, vim

## Run

```bash
git config --global alias.add-commit '!git add . && git commit'
```

to use:

```bash
git add-commit -m 'My commit message'
```
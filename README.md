Edward's dotfiles and MacOS Setup
======

### Run the whole script

You can run the whole script by calling the following command in your terminal.

```
bash -c "$(curl -fsSL 'https://raw.githubusercontent.com/dwardu89/dotfiles/master/setup.sh')"
```

### Structure

This repository is structured in the following way, the main setup script is at the root `setup.sh` and all the other scripts that are
used can be found in the `scripts` folder. They are all sourced and in the `setup.sh` file and then run.

Extra scripts can be added by adding another shell script or modifying the existing ones. Each shell script has functions that are categorised
according to what happens inside.


```
.
├── setup.sh
├── scripts
└── tools
  └── files
      └── .....
```

### Thanks to

I combed several dotfile solutions, however the best one that i found was in [Vítor Galvão's](https://github.com/vitorgalvao/dotfiles) repository. I used this to also incorporate my own dotfiles, and create scripts for that.

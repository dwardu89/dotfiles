Edward's dotfiles and MacOS Setup
======

### Run the whole script

You can run the script by calling the following command in your terminal.

```
bash setup.sh
```

### Structure

This repository is structured in the following way, the main setup script is at the root `setup.sh` and all the other scripts that are
used can be found in the `scripts` folder. They are all sourced and in the `setup.sh` file and then run.

Extra scripts can be added by adding another shell script or modifying the existing ones. Each shell script has functions that are categorised according to what happens inside.

The `tools` folder contains files related to the scripts as well as manual scripts that need to be set up after the `setup.sh` is run.

The `launchd` folder contains files that you can use in order to run scripts automatically. These will need to be manually copied and modified where the path is.

```
.
├── dotfiles
├── scripts
└── tools
  └── files
  └── launchd
      └── .....

└── setup.sh
```

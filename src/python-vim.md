# Python and vim

## Make test project:

```
mkdir -p dev/tutorial
cd dev/tutorial
```

## Add conda-forge to channels

```
conda config --add channels conda-forge
```

## Set up conda environment

```
conda create -n wombat python=3
conda activate wombat
```

Install linter and formatter:

```
conda install pylint yapf
```

## Direnv

Set up direnv to load the environment when you enter the dir:

vim .envrc
```
load_anaconda wombat
path_add PYTHONPATH $PWD
```

and allow it:
```
direnv allow .
```

## Start making some scripts..

```
mkdir wombat tests
```

And ready for vim..



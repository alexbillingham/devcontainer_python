# Devcontainer - Python

## Introduction

The starting blocks for a devcontainer configuration for developing Python inside.
Included in `.devcontainer.json` are a set of useful VSCode extensions used for formatting, linting and other tools.

## Building The Container

To build the container, open a commandline in the root folder of this project and run `docker build .`.

## Installation into a Project

Open the project you want to add these devcontainer files to.
Run the command `git submodule add [url to this repo] .devcontainer`.
This will add the repo as a submodule into the .devcontainer folder (what VSCode looks for when starting devcontainer).

> Note: If you forget to add the submodule into a directory called `.devcontainer` you can run: `git mv devcontainer_python .devcontainer`

## Running devcontainer

Click the bottom left "><" icon and select "Reopen in container" and rebuild if prompted.

# JupyterClearCheck

![Build Status](https://github.com/guru-desh/JupyterClearCheck/actions/workflows/ci.yml/badge.svg) ![License](https://img.shields.io/github/license/guru-desh/JupyterClearCheck) ![PyPI version](https://img.shields.io/pypi/v/JupyterClearCheck)

A Python CLI to check that a Jupyter Notebook's Outputs' have been cleared.

## Why does this exist?

During the development of a Jupyter Notebook, it is common to run cells multiple times. Every time a cell is run, its output is stored in the `.ipynb` file format. Because the outputs are saved, this can cause merge conflicts in version control systems like Git when multiple people are working on the same notebook.

`nbconvert` can be used to clear the outputs of a notebook, but to our knowledge, there was no package to check if the outputs have been cleared. This package aims to fill that gap. 

This package can be used in a CI/CD pipeline to ensure that the outputs of a notebook have been cleared before merging a pull request reducing merge conflicts on the outputs of a notebook.

## Installation

This package is available on PyPI and can be installed using pip.

```bash
pip install JupyterClearCheck
```

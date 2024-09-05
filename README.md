# Python Boilerplate
Python Boilerplate with CI/CD, Infrastructure as Code (IaC) and observability set up.

## Table of Contents
* [Requirements](#requirements)
* [Initial Customization](#initial-customization)
* [Getting Started](#getting-started)
* [Format, Lint and Type Checking](#format-lint-and-type-checking)
* [Custom Commands](#custom-commands)

## Requirements
To use this Python Boilerplate there are some requirements:
* [Python 3.12+](https://www.python.org/downloads/)
* [Poetry](https://python-poetry.org/docs/)
* [Terraform 1.9+](https://developer.hashicorp.com/terraform/install)
* [Google Cloud CLI](https://cloud.google.com/sdk/docs/install)

## Initial Customization
This Boilerplate already has CI/CD, IaC and observability working, but there some configurations that you might be interested in changing beforehand

### In pyproject.toml
* Add description
* Add authors

## Getting Started

To start, we'll install all the project dependencies through Poetry:
```sh
poetry install
```

After that you can run the application locally by running:
```sh
poetry run poe app
```

To deploy the application to GCP:
* Create a GCP Project
* Enable Cloud Run Admin API

After that whenever there is a commit in `dev`, `staging` or `main` branch the Deployment workflow will run automatically.

## Format, Lint and Type Checking
We are using `ruff` as linter and formatter, and `mypy` as static type checker.

To format, lint or type check your code you can run one of these commands:
```sh
poetry run format # Format
poetry run lint # Lint
poetry run type_check # Type Check
poetry run poe style # Format, Lint and Type Check
```

## Custom Commands
We are using the library `poethepoet` to define and manage common tasks.
It is integrated with Poetry, tasks can be defined directly within the `poetry.toml`:
```toml
[tool.poe.tasks]
app = "python src/main.py"
format = "ruff format"
lint = "ruff check --fix"
style = ["lint", "format"]
```

To run these tasks:
```sh
poetry run poe app
poetry run poe format
poetry run poe lint
poetry run poe style
```

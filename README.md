# Python Boilerplate
Python Boilerplate with CI/CD, Infrastructure as Code (IaC) and observability set up.

## Requirements
To use this Python Boilerplate there are some requirements:
* [Python 3.12+](https://www.python.org/downloads/)
* [Poetry](https://python-poetry.org/docs/)

## Initial Customization
This Boilerplate already has CI/CD, IaC and observability working, but there some configurations that you might be interested in customizing beforehand

### In pyproject.toml
* Add name
* Add description
* Add authors

## Getting Started

To start, we'll install all the project dependencies through Poetry:
```sh
poetry install
```

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

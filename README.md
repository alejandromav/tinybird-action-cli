# Tinybird GitHub Action
This action allows you to run [Tinybird CLI](https://docs.tinybird.co/cli.html) on your project.

## Usage
To use the action simply create an `*.yml`file in the `.github/workflows/` directory.

For example:

```yaml
name: Push to Tinybird  # feel free to pick your own name

on:
  push:
    branches:
    - master
    - main
    - stable
    - release/v*

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    # Important: This sets up your GITHUB_WORKSPACE environment variable
    - uses: actions/checkout@v2

    - name: Lint Ansible Playbook
      # replace "master" with any valid ref
      uses: alejandromav/tinybird-action@master
      with:
        # [required]
        # Tinybird admin token. Please, use Github secrets (https://docs.github.com/en/actions/security-guides/encrypted-secrets)
        token: ${{ secrets.TINYBIRD_TOKEN }}
        # [optional]
        # Arguments to be passed to the Tinybird CLI
        args: "push --push-deps --debug"

```

<br>

## License
The Dockerfile and associated scripts and documentation in this project are released under the [MIT](license).

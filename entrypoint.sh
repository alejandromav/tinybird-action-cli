#!/bin/sh -l

: "${TOKEN?Tinybird token not found, please check README.md.}"
: "${GITHUB_WORKSPACE?GITHUB_WORKSPACE has to be set. Did you use the actions/checkout action?}"

>&2 echo "\nRunning Tinybird CLI...\n"
echo "tb --token ${TOKEN} $@"
tb --token ${TOKEN} $@

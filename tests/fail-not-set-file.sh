#!/usr/bin/env bash

cd "${0%/*}" || exit 1
unset __NO_SUCH_VAR
POPULATED="words" EMPTY="" ../mo --fail-not-set ./fail-not-set-file.template 2>&1

if [[ $? -ne 1 ]]; then
    echo "Did not return 1"
fi

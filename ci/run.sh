#!/usr/bin/env bash

die () { echo "$1" >&2; exit 1; }

hash docker || { die "docker is not installed. Exiting..."; }


echo "Building the image..."
if ! docker build -f Dockerfile -t test-action .; then
    die "Failed to build the image"
fi

echo "Running the linter..."
if ! docker run -t test-action npm run lint; then
    die "Failed linting"
fi

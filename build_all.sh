#!/usr/bin/env bash

set -e
set -x

bazel build -c opt --config=cuda //tensorflow:all

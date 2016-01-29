#!/usr/bin/env bash

set -e
set -x

bazel build -c opt --config=cuda //tensorflow/tools/pip_package:build_pip_package

DIR=$(mktemp -d)
bazel-bin/tensorflow/tools/pip_package/build_pip_package $DIR
pip install $DIR/*.whl
rm -rf $DIR

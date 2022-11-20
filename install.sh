#!/bin/bash

set -u

readonly BIN_DIR=~/.local/bin

script_root=$(dirname $(realpath -s "$0"))

mkdir -p "${BIN_DIR}"
pushd "${BIN_DIR}" >/dev/null
ln -s "${script_root}/git-blames" git-blames
ln -s "${script_root}/git-fuzzy-find" git-fuzzy-find
ln -s "${script_root}/git-fuzzy-show" git-fuzzy-show
ln -s "${script_root}/git-ls-tracked" git-ls-tracked
ln -s "${script_root}/git-squash" git-squash
ln -s "${script_root}/git-synch-branch" git-synch-branch

popd >/dev/null

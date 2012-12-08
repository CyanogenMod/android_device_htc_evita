#!/bin/sh

set -e

export DEVICE=evita
export VENDOR=htc
./../msm8960-common/extract-files.sh $@

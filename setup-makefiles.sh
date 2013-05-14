#!/bin/sh

set -e

export DEVICE=evita
export VENDOR=htc
./../../../device/${VENDOR}/s4-common/setup-makefiles.sh $@

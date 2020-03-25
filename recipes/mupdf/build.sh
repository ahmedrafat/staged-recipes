#!/usr/bin/env bash
set -ex

# build system uses non-standard env vars
export XCFLAGS="${CFLAGS}"
export XLIBS="${LIBS}"
export USE_SYSTEM_LIBS=yes

make prefix="${PREFIX}" -j ${CPU_COUNT} all
# no make check
make prefix="${PREFIX}" install

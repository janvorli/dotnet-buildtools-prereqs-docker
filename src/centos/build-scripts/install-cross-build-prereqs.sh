#!/usr/bin/env sh

# Stop script on NZEC
set -e
# Stop script if unbound variable found (use ${var:-} if intentional)
set -u

# see (see https://github.com/dotnet/dotnet-buildtools-prereqs-docker/issues/120)
sudo yum update
sudo yum install -y \
    binfmt-support \
    qemu

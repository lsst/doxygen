#!/bin/bash

# EupsPkg config file. Sourced by 'eupspkg'

config()
{
# Prevent CMake from finding include files distributed in $(dirname
# python)/../include. This is CMake's default behaviour, but can cause us to
# erroneously use headers distributed by e.g. Anaconda.
    PYTHONINCDIR=$(which python | sed -e's|bin/python|include|')
    cmake . -DCMAKE_INSTALL_PREFIX="${PREFIX}" -DCMAKE_SYSTEM_IGNORE_PATH="${PYTHONINCDIR}"
}

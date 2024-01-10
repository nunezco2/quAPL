#!/bin/bash

# Replacement for the default entrypoint script in the Dyalog docker image.
# We know we have set the LOAD variable, so no need to check all possible
# launch options. We also want to run the interpreter with -b -s
#
# Note: the {{DYALOG_RELEASE}} template will be expanded by the docker build.

export DYALOG=/opt/mdyalog/{{DYALOG_RELEASE}}/64/unicode/
export LD_LIBRARY_PATH="${DYALOG}:${LD_LIBRARY_PATH}"
export WSPATH=$WSPATH:${DYALOG}/ws
export TERM=dumb
export APL_TEXTINAPLCORE=${APL_TEXTINAPLCORE-1}
export TRACE_ON_ERROR=0
export SESSION_FILE="${SESSION_FILE-$DYALOG/default.dse}"

$DYALOG/dyalog -b -s
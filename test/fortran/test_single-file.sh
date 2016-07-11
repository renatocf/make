#!/usr/bin/env bash

test "$MAKE with a single file"\
  "$MAKE init" \
  "cp ../assets/hello.f src/hello.f" \
  "$MAKE" \
  should_raise 0

test "if \"$MAKE\" builds the project with a single file" \
  "$MAKE init" \
  "cp ../assets/hello.f src/hello.f" \
  "$MAKE" \
  "./bin/hello" \
  should_output " Hello, World!"

#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

show_fast_path() {
  grep "UnionT ~> UnionT fast path" "$1" | tail -n 1
}

printf "\\nServer should start in verbose mode\\n"
start_flow . --verbose-indent
assert_ok "$FLOW" status --strip-root
show_fast_path "$FLOW_LOG_FILE"

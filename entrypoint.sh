#!/bin/sh

set -eux

install_binary() {
    go install github.com/honeycombio/honeymarker@v0.2.12
}

create_marker() {
    honeymarker -k "$INPUT_APIKEY" -d "$INPUT_DATASET" add -t "$INPUT_TYPE" -m "$INPUT_MESSAGE"
}

install_binary
create_marker
#!/usr/bin/env bash

# to watch the files's system edits and rebuild as necessary
dart run build_runner watch --delete-conflicting-outputs

# to run build_runner just once
#dart run build_runner build
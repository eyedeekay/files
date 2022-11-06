#! /usr/bin/env sh

find ./releases -size +100M -exec ./filter.sh {} \;
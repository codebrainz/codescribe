#!/bin/sh
autoreconf -vfi || exit 1
echo "Build system prepared, use './configure' to configure it."
exit 0

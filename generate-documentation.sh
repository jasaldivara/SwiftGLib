#!/bin/sh
#
# Wrapper around jazzy that uses pkg-config in config.sh
# to determine compiler and linker flags
#
. ./config.sh
if [ -z "$@" ]; then
    JAZZY_ARGS="--theme fullwidth --author Ren&eacute;&nbsp;Hexel --author_url https://experts.griffith.edu.au/9237-rene-hexel --github_url https://github.com/rhx/Swift$Mod --github-file-prefix https://github.com/rhx/Swift$Mod/tree/generated --root-url http://rhx.github.io/Swift$Mod/ --output docs"
fi
rm -rf .docs.old
mv docs .docs.old 2>/dev/null
./package.sh --allow-writing-to-directory docs \
    generate-documentation --target $Mod --disable-indexing \
    --output-path docs \
    --transform-for-static-hosting \
    --hosting-base-path http://rhx.github.io/Swift$Mod/

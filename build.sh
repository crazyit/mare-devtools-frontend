#!/bin/bash

set -xe

rm -rf dist
mkdir -p dist/front_end/Images

./scripts/build/build_release_applications.py inspector --input_path front_end/ --output_path dist/front_end

rm -rf \
    dist/front_end/accessibility \
    dist/front_end/animation \
    dist/front_end/audits \
    dist/front_end/audits2 \
    dist/front_end/devices \
    dist/front_end/elements \
    dist/front_end/emulated_devices \
    dist/front_end/emulation \
    dist/front_end/layers \
    dist/front_end/layer_viewer \
    dist/front_end/network \
    dist/front_end/profiler \
    dist/front_end/resources \
    dist/front_end/sass \
    dist/front_end/screencast \
    dist/front_end/security \
    dist/front_end/timeline \
    dist/front_end/timeline_model

cp front_end/Images/breakpointConditional.png dist/front_end/Images
cp front_end/Images/breakpoint.png dist/front_end/Images
cp front_end/Images/chromeSelect.png dist/front_end/Images
cp front_end/Images/deleteIcon.png dist/front_end/Images
cp front_end/Images/smallIcons.png dist/front_end/Images
cp front_end/Images/toolbarButtonGlyphs.png dist/front_end/Images
cp package.json dist/

tar -zcf mare-devtools-frontend.tgz ./dist

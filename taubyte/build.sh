#!/bin/bash

hugo new site website && cd website && git init
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod && git submodule update --init --recursive
echo "theme: \"PaperMod\"" >> config.yml && rm config.toml
hugo 
mv /src/website/public/* /out


exit $?

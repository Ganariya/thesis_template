#!/bin/bash

# compile 
# 一回だとうまく行かない場合がある
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja ptex2pdf -l thesis
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja ptex2pdf -l thesis
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja ptex2pdf -l thesis
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja ptex2pdf -l thesis

# いらないファイルの削除
find . -type d -name Library -prune -o -type f -name '*.aux' -exec rm -r {} \;
find . -type d -name Library -prune -o -type f -name '*.dvi' -exec rm -r {} \;
find . -type d -name Library -prune -o -type f -name '*.fdb_latexmk' -exec rm -r {} \;
find . -type d -name Library -prune -o -type f -name '*.fls' -exec rm -r {} \;
find . -type d -name Library -prune -o -type f -name '*.synctex.gz' -exec rm -r {} \;
find . -type d -name Library -prune -o -type f -name '*.log' -exec rm -r {} \;
find . -type d -name Library -prune -o -type f -name '*.synctex' -exec rm -r {} \;
find . -type d -name Library -prune -o -type f -name '*.toc' -exec rm -r {} \;
find . -type d -name Library -prune -o -type f -name '*.out' -exec rm -r {} \;
find . -type d -name Library -prune -o -type f -name '*.lof' -exec rm -r {} \;

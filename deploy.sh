#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
cnpm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

echo 'docs.sizegang.cn' > CNAME

git init
git add -A
git commit -m "auto commit"

# github
git branch -m master gh-pages
git remote add origin git@github.com:Memorydoc/memorydoc-vuepress-blog.github.io.git
git push -u origin gh-pages -f

cd -
rm -rf docs/.vuepress/dist
i

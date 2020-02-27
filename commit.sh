#!/bin/bash

# 判断上次提交时间 是否 已经过去一天
if [[ `expr $(date '+%s') - $(expr $(cat ./begin))` -ge 86400 ]]; then
    date -u '+%Y年%m月%d日: 还在' >> ./README.md
    echo >> ./README.md

    git add ./begin
    git add ./README.md
    git commit -m 'update'
    git push -u all master -f

    echo $(date '+%s') > ./begin
fi

git push -u all master -f
echo '运行完成'

# 这是一个帮助文件

<https://github.com/hczhcz/the-elder-is-excited>

<https://www.zhihu.com/question/46543115/answer/101761754>

## 准备工作
- 多个的项目仓库
- `SSH公钥`

## 设置推送地址

```sh
git remote add all git@github.com.git
git remote set-url all --add git@gitee.com.git
git remote set-url all --add git@e.coding.net.git
# ……
```

## 推送试下

```
git push -u all master -f
```

## 定时任务

```
0 0 */8 * * ? cd /the_elderly_are_available; /bin/bash ./commit.sh;
```

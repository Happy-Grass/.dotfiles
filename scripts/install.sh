#!/bin/bash

# 定义需要检查的应用程序列表
apps=("curl" "wget" "vim" "git")

# 循环遍历应用程序列表，并检查它们是否已安装
for app in "${apps[@]}"
do
    if ! command -v "$app" &> /dev/null
    then
        echo "$app 未安装，正在安装..."
        sudo pacman -S "$app"
    else
        echo "$app 已安装"
    fi
done

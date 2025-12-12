#!/usr/bin/env bash

# 检查是否为 root
if [ "$EUID" -ne 0 ]; then
    echo "请使用 sudo 执行此脚本: sudo bash install_asciinema.sh"
    exit 1
fi

echo "开始安装 asciinema..."

# 根据系统类型执行安装
if command -v apt >/dev/null 2>&1; then
    apt update
    apt install -y asciinema
elif command -v yum >/dev/null 2>&1; then
    yum install -y asciinema
elif command -v pacman >/dev/null 2>&1; then
    pacman -Sy asciinema
else
    echo "未能识别的包管理器，请手动安装 asciinema： https://asciinema.org/"
    exit 1
fi

echo "安装完成！"

# 设置别名，写入 .bashrc
echo "alias lp='asciinema'" >> ~/.bashrc

# 立即使别名生效
source ~/.bashrc

echo "别名 lp 已启用！"
echo "source ~/.bashrc"
echo "完成！"

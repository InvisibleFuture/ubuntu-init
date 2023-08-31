#!/bin/bash

# 检查软件
declare -A softwareList=(
	["go"]="go"
	["nodejs"]="node"
	["nvtop"]="nvtop"
)

for software in "${!softwareList[@]}"; do
	command="${softwareList[$software]}"
	if ! command -v "$command" >/dev/null 2>&1; then
		echo "$software is not installed, installing..."
		sudo apt-get update
		sudo apt-get install -y "$software"
		echo "$software has been installed"
	fi
done

# 检查驱动
# 个性化设置(桌面插件, 桌面壁纸)

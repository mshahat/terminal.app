#!/usr/bin/env bash

# Colors
black="\[$(tput setaf 0)\]"
red="\[$(tput setaf 1)\]"
green="\[$(tput setaf 2)\]"
yellow="\[$(tput setaf 3)\]"
blue="\[$(tput setaf 4)\]"
magenta="\[$(tput setaf 5)\]"
cyan="\[$(tput setaf 6)\]"
white="\[$(tput setaf 7)\]"

# Title bar - "user@host: ~"
title="\u@\h: \w"
titlebar="\[\033]0;"$title"\007\]"

# Git branch
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/';
}

# Clear attributes
clear_attributes="\[$(tput sgr0)\]"

# Custom bash prompt - "➜  ~ (master) "
export PS1="${titlebar}${green}➜  ${blue}\w ${yellow}\u${cyan}\$(git_branch) ${clear_attributes}"

# go
#export GOPATH=$HOME/go

#Git Prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Single_line_Minimalist
source ~/.bash-git-prompt/gitprompt.sh

# for lab2 
#export AWS_REGION=eu-west-2
#export AWS_ACCESS_KEY_ID=AKIAIKLGB3F6HRYDBW4Q
#export AWS_SECRET_ACCESS_KEY=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
#export NAME=emeauser110.k8s.local
#export KOPS_STATE_STORE=s3://emeauser110-kops-state-store

#!/bin/bash

# 以下を参考に作成 thanks!
# http://qiita.com/y__sama/items/5b62d31cb7e6ed50f02c


# gitのインストール
sudo apt-get install git

# pyenvをhome下の.pyenv にclone
git clone https://github.com/yyuu/pyenv ~/.pyenv

sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev
sudo apt-get intsall -y libreadline-dev libsqlite3-dev wget curl llvm

# pyenvには不要だけど NumPyなどに必要なライブラリなどをインストールしておく
sudo apt-get install -y libfreetype6-dev libblas-dev liblapack-dev gfortran tk-dev


echo Pathを通すために以下を./bashrcなどに追加すること
echo export PYENV_ROOT="$HOME/.pyenv"
echo export PATH="$PYENV_ROOT/bin:$PATH"

echo -----------------------------
echo .pyenv以下のディレクトリのownerがrootのままだとpyenv installに失敗することあり．要変更


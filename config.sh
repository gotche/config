#!/bin/bash

# Install system dependencies
# vim python build pyenv direnv
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git direnv vim sqlite3

# vim
ln -fs $(pwd)/tools/vim/vimrc ~/.vimrc

#mkdir -p ~/.vim/undodir
#mkdir -p ~/.vim/bundle
#if [ ! -d ~/.vim/bundle/Vundle.vim/ ]; then
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null
#fi
vim -c "PluginInstall!" -c "q" -c "q"

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

echo '''
# pyenv
export PATH="/home/jose.martin/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
''' >> ~/.bashrc
exec $SHELL

pyenv install 3.12.1
pyenv virtualenv 3.12.1 global_tools
pyenv global global_tools
pip install --upgrade pip
pip install cookiecutter
pip install ansible-vault
pip install httpie
pip install flake8

# put back the system version and add the ones with the global tools
pyenv global system global_tools


# gcloud
#echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
#sudo apt-get install apt-transport-https ca-certificates
#curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
#sudo apt-get update && sudo apt-get install google-cloud-sdk install google-cloud-sdk-app-engine-python-extras
#gcloud init

# hub
#When running manually hub pull-request ...
#it will ask you for user, password, and the authentication OTP, this will generate the file ~/.config/hub and you will have to go manually to github developer settings and inside the personal access token enable SSO for that specific token


# git

ln -fs $(pwd)/tools/git/gitignore_global ~/.gitignore_global
sudo ln -fs $(pwd)/tools/gitback.sh /usr/local/bin/

# install-pyenv

{% set pyenv_root = salt['grains.home'] + '/.pyenv' %}

https://github.com/pyenv/pyenv.git:
  git.latest:
    - rev: master
    - target: {{ pyenv_root }}
    - user: {{ grains.user }}

https://github.com/pyenv/pyenv-virtualenv.git 
  git.latest:
    - rev: master
    - target: {{ pyenv_root }}/plugins/pyenv-virtualenv
    - user: {{ grains.user }}

git://github.com/pyenv/pyenv-update.git 
  git.latest:
    - rev: master
    - target: {{ pyenv_root }}/plugins/pyenv-update
    - user: {{ grains.user }}

git://github.com/pyenv/pyenv-ccache.git 
  git.latest:
    - rev: master
    - target: {{ pyenv_root }}/plugins/pyenv-ccache
    - user: {{ grains.user }}

ccache:
  pkg:
    - installed

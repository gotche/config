# pkg.install
vim:
  pkg:
    - installed


{{ grains.home }}/.vimrc:
  file.managed:
    - source: salt://vim/vimrc
    - user: {{ grains.user }}
    - group: {{ grains.user }}
    - require:
      - pkg: vim
      - pkg: python-flake8

https://github.com/gmarik/Vundle.vim.git:
  git.latest:
    - rev: master
    - target: {{ grains.home }}/.vim/bundle/Vundle.vim
    - user: {{ grains.user }}

vim +PluginInstall +qall:
  cmd.run:
    - user: {{ grains.user }}

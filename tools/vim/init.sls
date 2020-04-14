# pkg.install
vim:
  pkg:
    - installed

python-flake8:
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

{{ grains.home }}/.config/flake8:
  file.managed:
    - source: salt://flake8/flake8
    - user: {{ grains.user }}
    - group: {{ grains.user }}
    - require:
      - pkg: python-flake8

https://github.com/gmarik/Vundle.vim.git:
  git.latest:
    - rev: master
    - target: {{ grains.home }}/.vim/bundle/Vundle.vim
    - user: {{ grains.user }}

vim +PluginInstall +qall:
  cmd.run:
    - user: {{ grains.user }}

{{ grains.home }}/.vim/undodir:
  file.directory:
    - user: {{ grains.user }}
    - group: {{ grains.user }}

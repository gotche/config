# pkg.install
vim:
  pkg:
    - installed


{{ grains.home }}/.vimrc:
  file.managed:
    - source: salt://vim/vimrc
    - user: {{ grains.user }}
    - group: {{ grains.user }}


vim +PluginInstall +qall:
  cmd.run:
    - user: {{ grains.user }}


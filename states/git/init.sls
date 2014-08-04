# pkg.install
git:
  pkg:
    - installed

{{ grains.home }}/.gitconfig:
  file.managed:
    - source: salt://git/gitconfig
    - user: {{ grains.user }}
    - group: {{ grains.user }}


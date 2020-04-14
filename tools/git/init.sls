git:
  pkg:
    - installed

{{ grains.home }}/.gitconfig:
  file.managed:
    - source: salt://git/gitconfig.tpl
    - template: jinja
    - user: {{ grains.user }}
    - group: {{ grains.user }}

{{ grains.home }}/.gitignore_global:
  file.managed:
    - source: salt://git/gitignore_global
    - user: {{ grains.user }}
    - group: {{ grains.user }}


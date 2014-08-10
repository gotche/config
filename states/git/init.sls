git:
  pkg:
    - installed

{{ grains.home }}/.gitconfig:
  file.managed:
    - source: salt://git/gitconfig.tpl
    - template: jinja
    - user: {{ grains.user }}
    - group: {{ grains.user }}


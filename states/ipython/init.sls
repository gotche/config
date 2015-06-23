# pkg.install
ipython:
  pkg:
    - installed


{{ grains.home }}/.ipython/profile_default/startup/gae.py:
  file.managed:
    - source: salt://ipython/gae.py.tpl
    - template: jinja
    - user: {{ grains.user }}
    - group: {{ grains.user }}
    - require:
      - pkg: ipython

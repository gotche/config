sshpriv:
  file.managed:
    - source: salt://ssh/key_template.jinja
    - template: jinja
    - name: /home/{{pillar['username']}}/.ssh/id_rsa
    - user: {{pillar['username']}}
    - group: {{pillar['username']}}
    - mode: 0600

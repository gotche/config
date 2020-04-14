{{ grains.home }}/.pdbrc:
  file.managed:
    - source: salt://pdb/pdbrc

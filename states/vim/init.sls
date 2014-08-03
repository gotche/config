# pkg.install
vim:
  pkg:
    - installed

{{ grains.home }}/.vimrc:
  file:
    - exists

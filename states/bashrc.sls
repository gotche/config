/home/{{ pillar['username'] }}/.bashrc:
  file.append:
    - text: |
        export PYENV_ROOT="$HOME/.pyenv"
        export PATH="$PYENV_ROOT/bin:$PATH"
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"
        [[ $- == *i* ]] && stty -ixon
        # direnv
        eval "$(direnv hook bash)"

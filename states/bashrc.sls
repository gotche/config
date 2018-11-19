/home/{{ pillar['username'] }}/.bashrc:
  file.append:
    - text: |
        # pyenv
        export PYENV_ROOT="$HOME/.pyenv"
        export PATH="$PYENV_ROOT/bin:$PATH"
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"
        # ctrl+s working
        [[ $- == *i* ]] && stty -ixon
        # direnv
        eval "$(direnv hook bash)"
        # clean python object files
        pyclean () {
        find . -type f -name "*.py[co]" -delete
        find . -type d -name "__pycache__" -delete
        }

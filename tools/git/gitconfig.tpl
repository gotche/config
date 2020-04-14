[user]
	name = {{ pillar['full_name'] }}
	email = {{ pillar['git_user_email'] }}
    signingkey = {{ pillar['git_signing_key_id'] }}
[alias]
  co = checkout
  cb = checkout -b
  ci = commit -S
  c = commit -S
  st = status
  br = branch
  brd = branch -d
  brD = branch -D
  hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
  type = cat-file -t
  dump = cat-file -p
  pr = "!f() { git fetch -fu ${2:-origin} refs/pull/$1/head:pr/$1 && git checkout pr/$1; }; f"
  lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --
  c = clone --recursive

[push]
    default = simple

[github] 
    user = {{ pillar['git_github_user'] }} 
    password = {{ pillar['git_github_password']}}

[bitbucket] 
    user = {{ pillar['git_bitbucket_user'] }} 
    password = {{ pillar['git_bitbucket_password']}}

[color]
    ui = true
[color "diff"]
    whitespace = red reverse
[core]
    whitespace=fix,-indent-with-non-tab,trailing-space,cr-at-eol
    editor = vim
    excludesfile = {{ grains.home }}/.gitignore_global

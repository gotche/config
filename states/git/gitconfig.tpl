[user]
	name = {{ pillar['full_name'] }}
	email = {{ pillar['git_user_email'] }}

[alias]
  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
  type = cat-file -t
  dump = cat-file -p
  c = clone --recursive

[push]
    default = simple

[github] 
    user = {{ pillar['git_user'] }} 
    password = {{ pillar['git_password']}} 
[color]
    ui = true
[color "diff"]
    whitespace = red reverse
[core]
    whitespace=fix,-indent-with-non-tab,trailing-space,cr-at-eol
	editor = vim

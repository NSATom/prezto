#
# Defines Git aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Settings
#
#

# Log
zstyle -s ':prezto:module:git:log:medium' format '_git_log_medium_format' \
  || _git_log_medium_format='%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%n%+B'
zstyle -s ':prezto:module:git:log:oneline' format '_git_log_oneline_format' \
  || _git_log_oneline_format='%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n'
zstyle -s ':prezto:module:git:log:brief' format '_git_log_brief_format' \
  || _git_log_brief_format='%C(green)%h%C(reset) %s%n%C(blue)(%ar by %an)%C(red)%d%C(reset)%n'

# Status
zstyle -s ':prezto:module:git:status:ignore' submodules '_git_status_ignore_submodules' \
  || _git_status_ignore_submodules='none'

#
# Aliases
#

if ! zstyle -t ':prezto:module:git:alias' skip 'yes'; then
  # Git

  # Branch (b)
  alias gitb='git branch'
  alias gitba='git branch --all --verbose'
  alias gitbc='git checkout -b'
  alias gitbd='git branch --delete'
  alias gitbD='git branch --delete --force'
  alias gitbl='git branch --verbose'
  alias gitbL='git branch --all --verbose'
  alias gitbm='git branch --move'
  alias gitbM='git branch --move --force'
  alias gitbr='git branch --move'
  alias gitbR='git branch --move --force'
  alias gitbs='git show-branch'
  alias gitbS='git show-branch --all'
  alias gitbv='git branch --verbose'
  alias gitbV='git branch --verbose --verbose'
  alias gitbx='git branch --delete'
  alias gitbX='git branch --delete --force'

  # Commit (c)
  alias gitc='git commit --verbose'
  alias gitca='git commit --verbose --all'
  alias gitcm='git commit --message'
  alias gitcS='git commit -S --verbose'
  alias gitcSa='git commit -S --verbose --all'
  alias gitcSm='git commit -S --message'
  alias gitcam='git commit --all --message'
  alias gitco='git checkout'
  alias gitcO='git checkout --patch'
  alias gitcf='git commit --amend --reuse-message HEAD'
  alias gitcSf='git commit -S --amend --reuse-message HEAD'
  alias gitcF='git commit --verbose --amend'
  alias gitcSF='git commit -S --verbose --amend'
  alias gitcp='git cherry-pick --ff'
  alias gitcP='git cherry-pick --no-commit'
  alias gitcr='git revert'
  alias gitcR='git reset "HEAD^"'
  alias gitcs='git show'
  alias gitcsS='git show --pretty=short --show-signature'
  alias gitcl='git-commit-lost'
  alias gitcy='git cherry -v --abbrev'
  alias gitcY='git cherry -v'

  # Conflict (C)
  alias gitCl='git --no-pager diff --name-only --diff-filter=U'
  alias gitCa='git add $(gitCl)'
  alias gitCe='git mergetool $(gitCl)'
  alias gitCo='git checkout --ours --'
  alias gitCO='gitCo $(gitCl)'
  alias gitCt='git checkout --theirs --'
  alias gitCT='gitCt $(gitCl)'

  # Data (d)
  alias gitd='git ls-files'
  alias gitdc='git ls-files --cached'
  alias gitdx='git ls-files --deleted'
  alias gitdm='git ls-files --modified'
  alias gitdu='git ls-files --other --exclude-standard'
  alias gitdk='git ls-files --killed'
  alias gitdi='git status --porcelain --short --ignored | sed -n "s/^!! //p"'

  # Fetch (f)
  alias gitf='git fetch'
  alias gitfa='git fetch --all'
  alias gitfc='git clone'
  alias gitfcr='git clone --recurse-submodules'
  alias gitfm='git pull'
  alias gitfr='git pull --rebase'

  # Flow (F)
  alias gitFi='git flow init'
  alias gitFf='git flow feature'
  alias gitFb='git flow bugfix'
  alias gitFl='git flow release'
  alias gitFh='git flow hotfix'
  alias gitFs='git flow support'

  alias gitFfl='git flow feature list'
  alias gitFfs='git flow feature start'
  alias gitFff='git flow feature finish'
  alias gitFfp='git flow feature publish'
  alias gitFft='git flow feature track'
  alias gitFfd='git flow feature diff'
  alias gitFfr='git flow feature rebase'
  alias gitFfc='git flow feature checkout'
  alias gitFfm='git flow feature pull'
  alias gitFfx='git flow feature delete'

  alias gitFbl='git flow bugfix list'
  alias gitFbs='git flow bugfix start'
  alias gitFbf='git flow bugfix finish'
  alias gitFbp='git flow bugfix publish'
  alias gitFbt='git flow bugfix track'
  alias gitFbd='git flow bugfix diff'
  alias gitFbr='git flow bugfix rebase'
  alias gitFbc='git flow bugfix checkout'
  alias gitFbm='git flow bugfix pull'
  alias gitFbx='git flow bugfix delete'

  alias gitFll='git flow release list'
  alias gitFls='git flow release start'
  alias gitFlf='git flow release finish'
  alias gitFlp='git flow release publish'
  alias gitFlt='git flow release track'
  alias gitFld='git flow release diff'
  alias gitFlr='git flow release rebase'
  alias gitFlc='git flow release checkout'
  alias gitFlm='git flow release pull'
  alias gitFlx='git flow release delete'

  alias gitFhl='git flow hotfix list'
  alias gitFhs='git flow hotfix start'
  alias gitFhf='git flow hotfix finish'
  alias gitFhp='git flow hotfix publish'
  alias gitFht='git flow hotfix track'
  alias gitFhd='git flow hotfix diff'
  alias gitFhr='git flow hotfix rebase'
  alias gitFhc='git flow hotfix checkout'
  alias gitFhm='git flow hotfix pull'
  alias gitFhx='git flow hotfix delete'

  alias gitFsl='git flow support list'
  alias gitFss='git flow support start'
  alias gitFsf='git flow support finish'
  alias gitFsp='git flow support publish'
  alias gitFst='git flow support track'
  alias gitFsd='git flow support diff'
  alias gitFsr='git flow support rebase'
  alias gitFsc='git flow support checkout'
  alias gitFsm='git flow support pull'
  alias gitFsx='git flow support delete'

  # Grep (g)
  alias gitg='git grep'
  alias gitgi='git grep --ignore-case'
  alias gitgl='git grep --files-with-matches'
  alias gitgL='git grep --files-without-matches'
  alias gitgv='git grep --invert-match'
  alias gitgw='git grep --word-regexp'

  # Index (i)
  alias gitia='git add'
  alias gitiA='git add --patch'
  alias gitiu='git add --update'
  alias gitid='git diff --no-ext-diff --cached'
  alias gitiD='git diff --no-ext-diff --cached --word-diff'
  alias gitii='git update-index --assume-unchanged'
  alias gitiI='git update-index --no-assume-unchanged'
  alias gitir='git reset'
  alias gitiR='git reset --patch'
  alias gitix='git rm -r --cached'
  alias gitiX='git rm -rf --cached'

  # Log (l)
  alias gitl='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
  alias gitls='git log --topo-order --stat --pretty=format:"${_git_log_medium_format}"'
  alias gitld='git log --topo-order --stat --patch --full-diff --pretty=format:"${_git_log_medium_format}"'
  alias gitlo='git log --topo-order --pretty=format:"${_git_log_oneline_format}"'
  alias gitlg='git log --topo-order --all --graph --pretty=format:"${_git_log_oneline_format}"'
  alias gitlb='git log --topo-order --pretty=format:"${_git_log_brief_format}"'
  alias gitlc='git shortlog --summary --numbered'
  alias gitlS='git log --show-signature'

  # Merge (m)
  alias gitm='git merge'
  alias gitmC='git merge --no-commit'
  alias gitmF='git merge --no-ff'
  alias gitma='git merge --abort'
  alias gitmt='git mergetool'

  # Push (p)
  alias gitp='git push'
  alias gitpf='git push --force-with-lease'
  alias gitpF='git push --force'
  alias gitpa='git push --all'
  alias gitpA='git push --all && git push --tags'
  alias gitpt='git push --tags'
  alias gitpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
  alias gitpp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'

  # Rebase (r)
  alias gitr='git rebase'
  alias gitra='git rebase --abort'
  alias gitrc='git rebase --continue'
  alias gitri='git rebase --interactive'
  alias gitrs='git rebase --skip'

  # Remote (R)
  alias gitR='git remote'
  alias gitRl='git remote --verbose'
  alias gitRa='git remote add'
  alias gitRx='git remote rm'
  alias gitRm='git remote rename'
  alias gitRu='git remote update'
  alias gitRp='git remote prune'
  alias gitRs='git remote show'
  alias gitRb='git-hub-browse'

  # Stash (s)
  alias gits='git stash'
  alias gitsa='git stash apply'
  alias gitsx='git stash drop'
  alias gitsX='git-stash-clear-interactive'
  alias gitsl='git stash list'
  alias gitsL='git-stash-dropped'
  alias gitsd='git stash show --patch --stat'
  alias gitsp='git stash pop'
  alias gitsr='git-stash-recover'
  alias gitss='git stash save --include-untracked'
  alias gitsS='git stash save --patch --no-keep-index'
  alias gitsw='git stash save --include-untracked --keep-index'

  # Submodule (S)
  alias gitS='git submodule'
  alias gitSa='git submodule add'
  alias gitSf='git submodule foreach'
  alias gitSi='git submodule init'
  alias gitSI='git submodule update --init --recursive'
  alias gitSl='git submodule status'
  alias gitSm='git-submodule-move'
  alias gitSs='git submodule sync'
  alias gitSu='git submodule foreach git pull origin master'
  alias gitSx='git-submodule-remove'

  # Tag (t)
  alias gitt='git tag'
  alias gittl='git tag -l'
  alias gitts='git tag -s'
  alias gittv='git verify-tag'

  # Working Copy (w)
  alias gitws='git status --ignore-submodules=${_git_status_ignore_submodules} --short'
  alias gitwS='git status --ignore-submodules=${_git_status_ignore_submodules}'
  alias gitwd='git diff --no-ext-diff'
  alias gitwD='git diff --no-ext-diff --word-diff'
  alias gitwr='git reset --soft'
  alias gitwR='git reset --hard'
  alias gitwc='git clean -n'
  alias gitwC='git clean -f'
  alias gitwx='git rm -r'
  alias gitwX='git rm -rf'
fi

Git
===

Enhances the [Git][1] distributed version control system by providing aliases,
functions and by exposing repository status information to prompts.

Git **1.7.2** is the [minimum required version][7].

Settings
--------

### Log

The format of the [git-log][8] output is configurable via the following style,
where context is *brief*, *oneline*, and *medium*, which will be passed to the
`--pretty=format:` switch.

```sh
zstyle ':prezto:module:git:log:context' format ''
```

### Status

Retrieving the status of a repository with submodules can take a long time.
Submodules may be ignored when they are *dirty*, *untracked*, *all*, or *none*.

```sh
zstyle ':prezto:module:git:status:ignore' submodules 'all'
```

This setting affects all aliases and functions that call `git-status`.

Aliases
-------

Aliases are enabled by default. You can disable them with:

```sh
zstyle ':prezto:module:git:alias' skip 'yes'
```

### Branch

  - `gitb` lists, creates, renames, and deletes branches.
  - `gitbc` creates a new branch.
  - `gitbl` lists branches and their commits. (also `gitbv`)
  - `gitbL` lists all local and remote branches and their commits.
  - `gitbr` renames a branch. (also `gitbm`)
  - `gitbR` renames a branch even if the new branch name already exists. (also
    `gitbM`)
  - `gitbs` lists branches and their commits with ancestry graphs.
  - `gitbS` lists local and remote branches and their commits with ancestry
    graphs.
  - `gitbV` lists branches with more verbose information about their commits.
  - `gitbx` deletes a branch. (also `gitbd`)
  - `gitbX` deletes a branch irrespective of its merged status. (also `gitbD`)


### Commit

  - `gitc` records changes to the repository.
  - `gitca` stages all modified and deleted files.
  - `gitcm` records changes to the repository with the given message.
  - `gitcS` records changes to the repository. (Signed)
  - `gitcSa` stages all modified and deleted files. (Signed)
  - `gitcSm` records changes to the repository with the given message. (Signed)
  - `gitcam` stages all modified and deleted files, and records changes to the repository with the given message.
  - `gitco` checks out a branch or paths to work tree.
  - `gitcO` checks out hunks from the index or the tree interactively.
  - `gitcf` amends the tip of the current branch using the same log message as *HEAD*.
  - `gitcSf` amends the tip of the current branch using the same log message as *HEAD*. (Signed)
  - `gitcF` amends the tip of the current branch.
  - `gitcSF` amends the tip of the current branch. (Signed)
  - `gitcp` applies changes introduced by existing commits.
  - `gitcP` applies changes introduced by existing commits without committing.
  - `gitcr` reverts existing commits by reverting patches and recording new
     commits.
  - `gitcR` removes the *HEAD* commit.
  - `gitcs` displays various types of objects.
  - `gitcsS` displays commits with GPG signature.
  - `gitcl` lists lost commits.
  - `gitcy` displays commits yet to be applied to upstream in the short format.
  - `gitcY` displays commits yet to be applied to upstream.

### Conflict

  - `gitCl` lists unmerged files.
  - `gitCa` adds unmerged file contents to the index.
  - `gitCe` executes merge-tool on all unmerged file.
  - `gitCo` checks out our changes for unmerged paths.
  - `gitCO` checks out our changes for all unmerged paths.
  - `gitCt` checks out their changes for unmerged paths.
  - `gitCT` checks out their changes for all unmerged paths.

### Data

  - `gitd` displays information about files in the index and the work tree.
  - `gitdc` lists cached files.
  - `gitdx` lists deleted files.
  - `gitdm` lists modified files.
  - `gitdu` lists untracked files.
  - `gitdk` lists killed files.
  - `gitdi` lists ignored files.

### Fetch

  - `gitf` downloads objects and references from another repository.
  - `gitfa` downloads objects and references from all remote repositories.
  - `gitfc` clones a repository into a new directory.
  - `gitfcr` clones a repository into a new directory including all submodules.
  - `gitfm` fetches from and merges with another repository or local branch.
  - `gitfr` fetches from and rebases on another repository or local branch.

### Flow

  - `gitFi` is short for `git flow init`

#### Feature

  - `gitFf` is short for `git flow feature`
  - `gitFfl` is short for `git flow feature list`
  - `gitFfs` is short for `git flow feature start`
  - `gitFff` is short for `git flow feature finish`
  - `gitFfp` is short for `git flow feature publish`
  - `gitFft` is short for `git flow feature track`
  - `gitFfd` is short for `git flow feature diff`
  - `gitFfr` is short for `git flow feature rebase`
  - `gitFfc` is short for `git flow feature checkout`
  - `gitFfm` is short for `git flow feature pull`
  - `gitFfx` is short for `git flow feature delete`

#### Bugfix

  - `gitFb` is short for `git flow bugfix`
  - `gitFbl` is short for `git flow bugfix list`
  - `gitFbs` is short for `git flow bugfix start`
  - `gitFbf` is short for `git flow bugfix finish`
  - `gitFbp` is short for `git flow bugfix publish`
  - `gitFbt` is short for `git flow bugfix track`
  - `gitFbd` is short for `git flow bugfix diff`
  - `gitFbr` is short for `git flow bugfix rebase`
  - `gitFbc` is short for `git flow bugfix checkout`
  - `gitFbm` is short for `git flow bugfix pull`
  - `gitFbx` is short for `git flow bugfix delete`

#### Release

  - `gitFl` is short for `git flow release`
  - `gitFll` is short for `git flow release list`
  - `gitFls` is short for `git flow release start`
  - `gitFlf` is short for `git flow release finish`
  - `gitFlp` is short for `git flow release publish`
  - `gitFlt` is short for `git flow release track`
  - `gitFld` is short for `git flow release diff`
  - `gitFlr` is short for `git flow release rebase`
  - `gitFlc` is short for `git flow release checkout`
  - `gitFlm` is short for `git flow release pull`
  - `gitFlx` is short for `git flow release delete`

#### Hotfix

  - `gitFh` is short for `git flow hotfix`
  - `gitFhl` is short for `git flow hotfix list`
  - `gitFhs` is short for `git flow hotfix start`
  - `gitFhf` is short for `git flow hotfix finish`
  - `gitFhp` is short for `git flow hotfix publish`
  - `gitFht` is short for `git flow hotfix track`
  - `gitFhd` is short for `git flow hotfix diff`
  - `gitFhr` is short for `git flow hotfix rebase`
  - `gitFhc` is short for `git flow hotfix checkout`
  - `gitFhm` is short for `git flow hotfix pull`
  - `gitFhx` is short for `git flow hotfix delete`

#### Support

  - `gitFs` is short for `git flow support`
  - `gitFsl` is short for `git flow support list`
  - `gitFss` is short for `git flow support start`
  - `gitFsf` is short for `git flow support finish`
  - `gitFsp` is short for `git flow support publish`
  - `gitFst` is short for `git flow support track`
  - `gitFsd` is short for `git flow support diff`
  - `gitFsr` is short for `git flow support rebase`
  - `gitFsc` is short for `git flow support checkout`
  - `gitFsm` is short for `git flow support pull`
  - `gitFsx` is short for `git flow support delete`

### Grep

  - `gitg` displays lines matching a pattern.
  - `gitgi` displays lines matching a pattern ignoring case.
  - `gitgl` lists files matching a pattern.
  - `gitgL` lists files that are not matching a pattern.
  - `gitgv` displays lines not matching a pattern.
  - `gitgw` displays lines matching a pattern at word boundary.

### Index

  - `gitia` adds file contents to the index.
  - `gitiA` adds file contents to the index interactively.
  - `gitiu` adds file contents to the index (updates only known files).
  - `gitid` displays changes between the index and a named commit (diff).
  - `gitiD` displays changes between the index and a named commit (word diff).
  - `gitii` temporarily ignore differences in a given file.
  - `gitiI` unignore differences in a given file.
  - `gitir` resets the current HEAD to the specified state.
  - `gitiR` resets the current index interactively.
  - `gitix` removes files/directories from the index (recursively).
  - `gitiX` removes files/directories from the index (recursively and forced).

### Log

  - `gitl` displays the log.
  - `gitls` displays the stats log.
  - `gitld` displays the diff log.
  - `gitlo` displays the one line log.
  - `gitlg` displays the graph log.
  - `gitlb` displays the brief commit log.
  - `gitlc` displays the commit count for each contributor in descending order.
  - `gitlS` displays the log and checks the validity of signed commits.

### Merge

  - `gitm` joins two or more development histories together.
  - `gitmC` joins two or more development histories together but does not commit.
  - `gitmF` joins two or more development histories together but does not commit
     generating a merge commit even if the merge resolved as a fast-forward.
  - `gitma` aborts the conflict resolution, and reconstructs the pre-merge state.
  - `gitmt` runs the merge conflict resolution tools to resolve conflicts.

### Push

  - `gitp` updates remote refs along with associated objects.
  - `gitpf` forcefully updates remote refs along with associated objects using the safer `--force-with-lease` option.
  - `gitpF` forcefully updates remote refs along with associated objects using the riskier `--force` option.
  - `gitpa` updates remote branches along with associated objects.
  - `gitpA` updates remote branches and tags along with associated objects.
  - `gitpt` updates remote tags along with associated objects.
  - `gitpc` updates remote refs along with associated objects and adds *origin*
     as an upstream reference for the current branch.
  - `gitpp` pulls and pushes from origin to origin.

### Rebase

  - `gitr` forward-ports local commits to the updated upstream head.
  - `gitra` aborts the rebase.
  - `gitrc` continues the rebase after merge conflicts are resolved.
  - `gitri` makes a list of commits to be rebased and opens the editor.
  - `gitrs` skips the current patch.

### Remote

  - `gitR` manages tracked repositories.
  - `gitRl` lists remote names and their URLs.
  - `gitRa` adds a new remote.
  - `gitRx` removes a remote.
  - `gitRm` renames a remote.
  - `gitRu` fetches remotes updates.
  - `gitRp` prunes all stale remote tracking branches.
  - `gitRs` displays information about a given remote.
  - `gitRb` opens a remote on [GitHub][3] in the default browser.

### Stash

  - `gits` stashes the changes of the dirty working directory.
  - `gitsa` applies the changes recorded in a stash to the working directory.
  - `gitsx` drops a stashed state.
  - `gitsX` drops all the stashed states.
  - `gitsl` lists stashed states.
  - `gitsL` lists dropped stashed states.
  - `gitsd` displays changes between the stash and its original parent.
  - `gitsp` removes and applies a single stashed state from the stash list.
  - `gitsr` recovers a given stashed state.
  - `gitss` stashes the changes of the dirty working directory, including untracked.
  - `gitsS` stashes the changes of the dirty working directory interactively.
  - `gitsw` stashes the changes of the dirty working directory retaining the index.

### Submodule

  - `gitS` initializes, updates, or inspects submodules.
  - `gitSa` adds given a repository as a submodule.
  - `gitSf` evaluates a shell command in each of checked out submodules.
  - `gitSi` initializes submodules.
  - `gitSI` initializes and clones submodules recursively.
  - `gitSl` lists the commits of all submodules.
  - `gitSm` moves a submodule.
  - `gitSs` synchronizes submodules' remote URL to the value specified in
    .gitmodules.
  - `gitSu` fetches and merges the latest changes for all submodule.
  - `gitSx` removes a submodule.

### Tag

  - `gitt` lists tags or creates tag.
  - `gittl` lists tags matching pattern.
  - `gitts` creates a signed tag.
  - `gittv` validate a signed tag.

### Working directory

  - `gitws` displays working-tree status in the short format.
  - `gitwS` displays working-tree status.
  - `gitwd` displays changes between the working tree and the index (diff).
  - `gitwD` displays changes between the working tree and the index (word diff).
  - `gitwr` resets the current HEAD to the specified state, does not touch the
     index nor the working tree.
  - `gitwR` resets the current HEAD, index and working tree to the specified state.
  - `gitwc` removes untracked files from the working tree (dry-run).
  - `gitwC` removes untracked files from the working tree.
  - `gitwx` removes files from the working tree and from the index recursively.
  - `gitwX` removes files from the working tree and from the index recursively and
    forcefully.

Functions
---------

  - `git-branch-current` displays the current branch.
  - `git-commit-lost` lists lost commits.
  - `git-dir` displays the path to the Git directory.
  - `git-hub-browse` opens the [GitHub][3] repository in the default browser.
  - `git-hub-shorten-url` shortens [GitHub URLs][10].
  - `git-info` exposes repository information via the `$git_info` associative
    array.
  - `git-root` displays the path to the working tree root.
  - `git-stash-clear-interactive` asks for confirmation before clearing the stash.
  - `git-stash-dropped` lists dropped stashed states.
  - `git-stash-recover` recovers given dropped stashed states.
  - `git-submodule-move` moves a submodule.
  - `git-submodule-remove` removes a submodule.

Theming
-------

To display information about the current repository in a prompt, define the
following styles in the `prompt_name_setup` function, where the syntax for
setting a style is as follows.

```sh
zstyle ':prezto:module:git:info:context:subcontext' format 'string'
```

### Main Contexts

| Name      | Format Code | Description
| --------- | :---------: | ---------------------------------------------------
| action    |     %s      | Special action name
| ahead     |     %A      | Commits ahead of remote count
| behind    |     %B      | Commits behind of remote count
| branch    |     %b      | Branch name
| commit    |     %c      | Commit hash
| position  |     %p      | Commits from the nearest tag count
| remote    |     %R      | Remote name
| stashed   |     %S      | Stashed states count

### Concise Contexts

| Name      | Format Code | Description
| --------- | :---------: | ---------------------------------------------------
| clean     |     %C      | Clean state
| dirty     |     %D      | Dirty files count
| indexed   |     %i      | Indexed files count
| unindexed |     %I      | Unindexed files count
| untracked |     %u      | Untracked files count

The following contexts must be enabled with the following zstyle:

```sh
zstyle ':prezto:module:git:info' verbose 'yes'
```

### Verbose Contexts

| Name      | Format Code | Description
| --------- | :---------: | ---------------------------------------------------
| added     |     %a      | Added files count
| clean     |     %C      | Clean state
| deleted   |     %d      | Deleted files count
| dirty     |     %D      | Dirty files count
| modified  |     %m      | Modified files count
| renamed   |     %r      | Renamed files count
| unmerged  |     %U      | Unmerged files count
| untracked |     %u      | Untracked files count

### Special Action Contexts

| Name                 |   Format    | Description
| -------------------- | :---------: | -----------------------------------------
| apply                |    value    | Applying patches
| bisect               |    value    | Binary searching for changes
| cherry-pick          |    value    | Cherry picking
| cherry-pick-sequence |    value    | Cherry picking sequence
| merge                |    value    | Merging
| rebase               |    value    | Rebasing
| rebase-interactive   |    value    | Rebasing interactively
| rebase-merge         |    value    | Rebasing merge
| revert               |    value    | Reverting
| revert-sequence      |    value    | Reverting sequence

First, format the repository state attributes. For example, to format the branch
and remote names, define the following styles.

```sh
zstyle ':prezto:module:git:info:branch' format 'branch:%b'
zstyle ':prezto:module:git:info:remote' format 'remote:%R'
```

Second, format how the above attributes are displayed in prompts.

```sh
zstyle ':prezto:module:git:info:keys' format \
  'prompt'  ' git(%b)' \
  'rprompt' '[%R]'
```

Last, add `$git_info[prompt]` to `$PROMPT` and `$git_info[rprompt]` to
`$RPROMPT` respectively and call `git-info` in the `prompt_name_preexec` hook
function.

Authors
-------

*The authors of this module should be contacted via the [issue tracker][6].*

  - [Sorin Ionescu](https://github.com/sorin-ionescu)
  - [Colin Hebert](https://github.com/ColinHebert)

[1]: http://www.git-scm.com
[2]: https://github.com/defunkt/hub
[3]: https://www.github.com
[4]: http://www.manpagez.com/man/8/gpt/
[5]: http://www.manpagez.com/man/1/gs/
[6]: https://github.com/sorin-ionescu/prezto/issues
[7]: https://github.com/sorin-ionescu/prezto/issues/219
[8]: http://www.kernel.org/pub/software/scm/git/docs/git-log.html
[9]: https://getgb.io/
[10]: https://github.com/blog/985-git-io-github-url-shortener
[11]: http://www.manpagez.com/man/1/gm/

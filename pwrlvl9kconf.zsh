# set mode to use awesomefont
POWERLEVEL9K_MODE='awesome-fontconfig'
# shorten long directory paths after 4th subdirectory
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
# shorten long dirnames by truncating in the middle
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# left side of the prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
# right side of the prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs vi_mode)
# actual typing is on the line below all the information
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# show the git/vcs changeset (defaults to 12 num max)
POWERLEVEL9K_SHOW_CHANGESET=true
# only show an x when previous command failed
POWERLEVEL9K_STATUS_VERBOSE=false
# setup vi-mode display for normal insert mode and command mode
POWERLEVEL9K_VI_INSERT_MODE_STRING='NORMAL-MODE'
POWERLEVEL9K_VI_COMMAND_MODE_STRING='COMMAND-MODE'
# disable wierd folder icons
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

# fix powerline icons because derpy font patching
#POWERLEVEL9K_VCS_GIT_ICON="/uf113"
#POWERLEVEL9K_TEST_ICON="/uf22f"
#POWERLEVEL9K_RUBY_ICON="/uf22a"
#POWERLEVEL9K_VCS_COMMIT_ICON=""

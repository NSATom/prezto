#
# Sets commonly used variables like XDG_CONFIG_HOME
#
# Authors:
#   Tom
#

# Define editor variable which is commonly used by simple text editing scripts
zstyle -s ':prezto:module:common-variables' editor 'editor'
if type $editor > /dev/null; then
  EDITOR="$editor"
  export EDITOR
else
  print "prezto: common-variables: invalid command for editor: $editor" >&2
fi

# Define visual variable, commonly used by sane scripts that require user i/o
zstyle -s ':prezto:module:common-variables' visual 'visual'
if type $visual> /dev/null; then
  VISUAL="$visual"
  export VISUAL
else
  print "prezto: common-variables: invalid command for visual: $visual" >&2
fi

unset -v visual editor

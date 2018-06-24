#
# Defines aliases and functions for use with the generic colouriser [grc].
# (Home: https://github.com/garabik/grc)
#
# To pick up any other aliases for the command this module should be in last
# of all modules (apart from highlighting rules etc)
# Authors:
#   Radovan Garabik
#   xPMo
#   Alexander Kapshuna
#   Yurii Myronchuk
#   Thomas Rued
#

# Return if proper terminal is not found.
if [[ "$TERM" == (dumb|linux|*bsd*|eterm*) ]]; then
  return 1
fi

# Return if command grc is not found
if (( ! $+commands[grc] )); then
  return 1
fi

#
# Aliases
#

# Supported commands
cmds=(
  blkid \
  df \
  diff \
  dig \
  du \
  id \
  ifconfig \
  ip \
  last \
  ldap \
  ls \
  lsattr \
  lsblk \
  lsmod \
  lsof \
  mount \
  netstat \
  nmap \
  ping \
  ping6 \
  wdiff \
  whois \
  iwconfig \
);

# Set alias for available commands.
for cmd in $cmds ; do
  # cmd needs to exist on this machine
  if (( $+commands[$cmd] )) ; then
    alias $cmd="grc --colour=auto $(whence $cmd)"
  fi
done

# Clean up variables
unset cmds cmd

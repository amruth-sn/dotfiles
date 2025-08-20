# ---------------------------
# Powerlevel10k fancy prompt
# ---------------------------

# Left prompt
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon        # Apple logo
  dir            # current directory
  vcs            # git branch + icon
  vcs_status     # staged/untracked/modified/incoming/outgoing/stash
  virtualenv     # Python virtualenv / Pyenv
  nodeenv        # Node version
  background_jobs
)

# Right prompt
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status                # exit code of last command
  command_execution_time
  time                  # current time
)

# Use Apple glyph instead of text
typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION=''

# Git status icons
typeset -g POWERLEVEL9K_VCS_SHOW_CHANGESET=true
typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON='…'
typeset -g POWERLEVEL9K_VCS_STAGED_ICON='●'
typeset -g POWERLEVEL9K_VCS_MODIFIED_ICON='✚'
typeset -g POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='↓'
typeset -g POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='↑'
typeset -g POWERLEVEL9K_VCS_STASHED_ICON='⚑'

# Prompt tweaks
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=always

# Virtualenv / Node icons
typeset -g POWERLEVEL9K_VIRTUALENV_ICON='🐍 '
typeset -g POWERLEVEL9K_NODE_ICON='⬢ '


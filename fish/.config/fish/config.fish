set fish_greeting

#
# ENVIRONMENT VARIABLES
#

set -xp PATH ~/.local/bin       # scripts installed by pip (python)
set -xp PATH ~/.cargo/bin       # binaries installed by cargo (rust)
set -xp PATH ~/.go/bin          # binaries built by go (golang)

set -xg EDITOR nvim                  # prefer neovim as default editor
set -xg BROWSER firefox              # prefer firefox as default browser
set -xg TERMINAL tilix               # preder tilix as default terminal
set -xg PYTHONDONTWRITEBYTECODE 1    # do not produce .pyc/.pyo files
set -xg CLICOLOR 1                   # turn on colors for some BSD tools
set -xg GPG_TTY (tty)                # setup tty for gpg2's pinetry

if which clang &> /dev/null
  set -xg CC clang                   # use clang as default C compiler
end

if which clang++ &> /dev/null
  set -xg CXX clang++                # use clang as default C++ compiler
end


#
# SETUP PROMPT WITH BLACKJACK AND HOOKERS
#

if which starship &> /dev/null
  starship init fish | source
end

if test -e config.(cat /proc/sys/kernel/hostname).fish
  source config.(cat /proc/sys/kernel/hostname).fish
end

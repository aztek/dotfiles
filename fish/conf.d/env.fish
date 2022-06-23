set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/X11/bin $PATH

# Ada
if test -d ~/opt/GNAT/2020/bin
  set -gx PATH ~/opt/GNAT/2020/bin $PATH
end

# Haskell
if test -d ~/Library/Haskell/bin
  set -gx PATH $PATH ~/Library/Haskell/bin
end

# Homebrew
if test -f /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
end

if test -d ~/.ghcup/bin
  set -gx PATH $PATH ~/.ghcup/bin
end

# GHC
if test -f ~/.ghcup/env
  bash ~/.ghcup/env
end

# OPAM
if test -f ~/.opam/opam-init/init.fish
  source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true
end

# Misc
if test -d ~/.local/bin
  set -gx PATH ~/.local/bin $PATH
end


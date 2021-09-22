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

# GHC
if test -f ~/.ghcup/env
  source ~/.ghcup/env
end

# OPAM
if test -f ~/.opam/opam-init/init.fish
  source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true
end

# Misc
if test -d ~/.local/bin
  set -gx PATH ~/.local/bin $PATH
end


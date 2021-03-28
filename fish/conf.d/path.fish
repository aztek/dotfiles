set -gx PATH /usr/local/bin $PATH

# Ada
if test -d ~/opt/GNAT/2020/bin
  set -gx PATH ~/opt/GNAT/2020/bin $PATH
end

# Haskell
if test -d ~/Library/Haskell/bin
  set -gx PATH $PATH ~/Library/Haskell/bin
end

# Misc
if test -d ~/.local/bin
  set -gx PATH ~/.local/bin $PATH
end


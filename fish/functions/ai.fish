function ai
  set ai $(which ai)
  set answer $($ai $argv)
  if test $status -eq 0; and test $(echo "$answer" | wc -l) -eq 1
    commandline "$answer"
  else
    echo $answer
  end
end

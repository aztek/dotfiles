PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\]\$ '

alias ls='ls -G'
alias ll='ls -lG'
alias l='ls -CFG'

alias grep='egrep --color'
alias sed='sed -E'
#alias cat=vimcat

#alias cat='pygmentize -g'
alias less='less -r'

export SBT_OPTS=-XX:MaxPermSize=256m
export PATH=~/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/aztek/Library/Haskell/bin:/usr/local/texlive/2013/bin/universal-darwin
export HOMEBREW_GITHUB_API_TOKEN=29b3cafcedd357002751ae91bb9cc9f8a3b51f9e
export TERM=xterm-256color

#export DYLD_LIBRARY_PATH=/usr/local/lib:/usr/lib:/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/System/Library/Frameworks/Kernel.framework/Versions/A/Headers

alias v='vampire --decode dis+4_5_bs=off:drc=off:lcm=reverse:nwc=1.1:sos=all:sio=off:spl=sat:ssfp=40000:ssfq=1.4:ssnc=none:sp=occurrence_2 -t 30'

alias gits='git status'
alias gitc='git commit'
alias gitp='git push'
alias gtia='git add'

#export CPPFLAGS=-I/opt/local/include
#export LDFLAGS=-L/opt/local/lib

lrn() {
  trans $1
  forvo $1
}

mkcd() {
  mkdir -p "$1" && cd "$1"
}

alias smttotptp='java -jar ~/smttotptp/target/scala-2.11/smttotptp-0.9.2.jar'
#alias vampire='~/vampire/vampire_dbg_tptp_fool_parser_2223' #20
#vampire() {
alias vampire='~/vampire-tuples/vampire_rel_tuples_3238 --newcnf on'
  #~/vampire/vampire_dbg_tptp_fool_parser_2235 $* #| vimcat -c ":set syntax=vampire_output"
#}

alias kyckling='~/kyckling/bin/kyckling'

fooltest() {
  smttotptp --stdout $1 | vampire --fool_paramodulation on --show_preprocessing on --mode casc_sat --ignore_missing on
}

alias boogie='mono ~/boogie/Binaries/Boogie.exe'

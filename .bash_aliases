#!/usr/bin/sh

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias eemacs="emacs -nw"
alias ooctave="octave --force-gui"
alias kinitk="kinit -f peterahl@KTH.SE"

alias sshp="ssh -X 130.237.224.227"
alias kthprint="lp -o fit-to-page -d kth-print "
alias bizhub="lp -o fit-to-page "
alias booklet="lp -o fit-to-page -d bizhubbooklet "

alias pgrep="grep -ri --include=*.py"
alias agrep="grep -ri --include=*.*"
alias hgrep="grep -ri --include=*.hoc"
alias mgrep="grep -ri --include=*.m"

alias gc="git commit -am"
alias gm="git merge --no-ff"
alias ga="git add"
alias gu="git add -u"
alias gs="git status"
alias grm="git rm"
alias gp="git push"

alias nrnmake="rm -r x86_64;nrnivmodl"

alias aklogall="aklog -cell nada.kth.se -k KTH.SE; aklog"

alias pynote="ipython3 notebook"

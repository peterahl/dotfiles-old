#!/usr/bin/sh

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# alias eemacs="emacs-24.5 -nw"
# alias emacs="emacs-24.5"
alias eemacs="emacsclient -t"
alias emacs="emacsclient -c"
alias startemacs="emacs-24.5 --daemon"
alias stopemacs=" emacsclient -e '(kill-emacs)'"
alias ooctave="octave --force-gui"
alias kinitk="kinit -f peterahl@KTH.SE"
alias kinitn="kinit -f peterahl@NADA.KTH.SE"

alias kthprint="lp -o fit-to-page -d kth-print "
alias bizhub="lp -o fit-to-page "
alias twopage="lp -o fit-to-page -o number-up=2 "
alias booklet="lp -o fit-to-page -d bizhubbooklet "
alias pgrep='grep -ri --include="*.py"'
alias agrep='grep -ri --include="*.*"'
alias hgrep='grep -ri --include="*.hoc"'
alias mgrep='grep -ri --include="*.m"'

alias gc="git commit -am"
alias gm="git merge --no-ff"
alias ga="git add"
alias gu="git add -u"
alias gs="git status"
alias grm="git rm"
alias gph="git push"
alias gpl="git pull"

alias nrnmake="rm -r x86_64;nrnivmodl"

alias aklogall="aklog -cell nada.kth.se -k KTH.SE; aklog"

alias pynote="ipython3 notebook"

alias matlabnw="matlab -nojvm -nodisplay -nosplash"
alias matlabs="matlab -nojvm -nodisplay -nosplash -r "

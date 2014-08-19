
PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u][\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\W"; fi\`]\$(parse_git_branch)\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
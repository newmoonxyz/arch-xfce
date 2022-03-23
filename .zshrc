# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
unsetopt nomatch

PROMPT=$'\n''%B%F{230}%~ ::  | %b%f'
RPROMPT="[%h]"

alias x='startx'



##Git
#=====

push() {
   echo "commit message: " 
   read msg 
   git status
   git add -A
   git commit -m "$msg"
   git push
}


git_clear() {
      echo "WARNING!!!! You are about to clear the entire commit history of this repository" 
      echo "Enter new commit message: "
      read cmtmsg
      git checkout --orphan latest_branch
      git add -A
      git commit -am "$cmtmsg"
      git branch -D main
      git branch -m main
      git push -f --set-upstream origin main
}


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

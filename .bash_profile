# change directory to user home
alias gohome='cd ~'

# edit this file in TextEdit
alias editprofile='open -a TextEdit ~/.bash_profile'
alias psjava='ps ax | grep java | grep -v grep'

# show or hide hidden files
alias showfiles='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'

# add a spacer to the dock
alias addspacer="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'; killall Dock"

# coloring and formatting (works best with terminal homebrew theme)
export PS1="\[\033[0;37m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.each_line.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "

# print ip address
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2'
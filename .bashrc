# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

source /home/gkharkwal/.bash_completion.d/git-completion.bash;
source /home/gkharkwal/git-prompt.sh
export PATH="${PATH}:/c/dev/git-scripts";

export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\t \[\e[33m\]\w$(__git_ps1)\[\e[0m\] \[\e[35m\][\j]\[\e[0m\] \$ '
# export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\t \[\e[33m\]\w\[\e[0m\] \[\e[35m\][\j]\[\e[0m\] \n\$ '
export ONELINEPS1='\[\e[35m\][\j]\[\e[0m\] \$ '

# Misc :)
alias df='df -h'
alias du='du -h'
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias winpy='/c/Python27/python'
alias vi='vim -u NONE'                        # vim without rc

# This enables cl.exe on msys2
export VSDIR="/c/Program Files (x86)/Microsoft Visual Studio 12.0";
export SDKDIR="/c/Program Files (x86)/Windows Kits/8.1";
export EXTSDKDIR="/c/Program Files (x86)/Microsoft SDKs/Windows/v8.1/ExtensionSDKs";

export PATH="${PATH}:\
${VSDIR}/Common7/IDE:\
${VSDIR}/Common7/Tools:\
${VSDIR}/VC/BIN:\
${VSDIR}/VC/VCPackages:\
/c/Windows/Microsoft.NET/Framework/v4.0:\
/c/Windows/Microsoft.NET/Framework/v4.0.30319:\
${SDKDIR}/bin/x86:\
${SDKDIR}/Windows Performance Toolkit:\
/c/Program Files (x86)/Microsoft SDKs/Windows/v8.1A/NETFX 4.5.1 Tools;"

export INCLUDE=$INCLUDE"\
${VSDIR}/VC/include;\
${VSDIR}/VC/atlmfc/include;\
${SDKDIR}/Include/shared;\
${SDKDIR}/Include/um;\
${SDKDIR}/Include/winrt;"

export LIB=$LIB"\
${VSDIR}/VC/lib;\
${VSDIR}/VC/atlmfc/lib;\
${SDKDIR}/lib/winv6.3/um/x86;"

export LIBPATH=$LIBPATH"\
/c/Windows/Microsoft.NET/Framework/v4.0.30319:\
${VSDIR}/VC/lib;\
${VSDIR}/VC/atlmfc/lib;\
${SDKDIR}/References/CommonConfiguration/Neutral;\
${EXTSDKDIR}/Microsoft.VCLibs/12.0/References/CommonConfiguration/neutral;"

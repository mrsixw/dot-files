# Bash profile. Source the bashrc. Needed on Mac as terminal is login shell and sources this

export ETHAN_SVN_MIRRORS=svn+ssh://svnuser@cf-skyeng-svn.cisco.com/mnt/svnuser/bskybmirror

[[ -s ~/.bashrc ]] && source ~/.bashrc

# Git prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
archey -o

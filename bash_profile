# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

[ -s "/home/Drew/.scm_breeze/scm_breeze.sh" ] && source "/home/Drew/.scm_breeze/scm_breeze.sh"

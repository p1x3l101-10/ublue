# Data
USERNAME="\u"
CURRENT_PATH="\[\w\]"
# Ensure colors are set
source /etc/profile.d/theme-color.sh
# Conditional prompt values
if [[ $UID -eq 0 ]];then
	COL_PROMPT="${COL_RED}"
	PROMPT_CHAR="#"
else
	COL_PROMPT="${COL_GREEN}"
	PROMPT_CHAR="$"
fi

export PS1="\n${COL_RESET}┌──(${COL_PROMPT}${USERNAME}${COL_RESET}@${COL_BLUE}${HOSTNAME}${COL_RESET})-[${COL_CYAN}${CURRENT_PATH}${COL_RESET}]\n└─${COL_PROMPT}${PROMPT_CHAR}${COL_RESET} "
export PS2="${COL_PROMPT}${PROMPT_CHAR}${COL_RESET}>> "

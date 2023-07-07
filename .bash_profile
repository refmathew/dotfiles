#
# ~/.bash_profile
#

[ -f "$HOME/.profile" ] && source "$HOME/.profile"
[[ -f ~/.bashrc ]] && . ~/.bashrc


if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

export PHP="/opt/lampp/htdocs/"

alias bs="browser-sync start -wsb firefox .";
alias .gs="git status";
alias .ga="git add";
alias .gc="git commit -m";
alias vpnc="protonvpn-cli connect"
alias vpncf="protonvpn-cli connect -f"
alias vpnd="protonvpn-cli disconnect"

xb(){
	read -p "brightness: " BRIGHTNESSLEVEL
  xrandr --output VGA-1 --brightness $BRIGHTNESSLEVEL
}

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

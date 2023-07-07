export TUT="/home/mathew/Jolan/Web-development/Tutorials"
export PHP="/opt/lampp/htdocs/"
export TERMINAL="/bin/alacritty"

alias spd="systemctl suspend"

xb(){
	read -p "brightness: " BRIGHTNESSLEVEL
    xrandr --output VGA-1 --brightness $BRIGHTNESSLEVEL
}

htdocs(){
  read -p "Enter file name: " file
  read -p "Enter directory: " directory
  sudo touch "$file" && sudo chown mathew "$file" && mv "$file" /opt/lampp/htdocs/"$directory"
}

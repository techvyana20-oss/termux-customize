#!/data/data/com.termux/files/usr/bin/bash
# Termux Customization Script by TechVyana

read -p "Enter your name for the banner: " USERNAME

pkg update -y && pkg upgrade -y
pkg install -y git curl neofetch figlet toilet cmatrix zsh sl ruby
gem install lolcat || true

[ ! -d "$HOME/termux-style" ] && git clone https://github.com/adi1090x/termux-style ~/termux-style
cd ~/termux-style && chmod +x setup && ./setup || true
cd ~

BANNER="
clear
figlet -f slant '${USERNAME} 2.0' | lolcat
toilet -f mono12 'Welcome to ${USERNAME}' -F metal
neofetch
"

echo "$BANNER" >> ~/.bashrc
echo "$BANNER" >> ~/.zshrc

echo "PROMPT='%F{green}[${USERNAME}@termux]%f %F{cyan}%~%f %# '" >> ~/.zshrc
echo "alias ll='ls -la'" >> ~/.bashrc
echo "alias ll='ls -la'" >> ~/.zshrc
echo "alias hacklook='neofetch && cmatrix -b -u 2'" >> ~/.bashrc
echo "alias hacklook='neofetch && cmatrix -b -u 2'" >> ~/.zshrc

chsh -s zsh || true
echo "[*] Done! Close Termux and reopen to see your new style."

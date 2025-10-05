# Termux Customization Script — setup-termux.sh

A simple Termux setup script that installs useful tools, adds a colorful banner, and customizes your shell environment.

---

## 🛠 Installation & Usage

1. **Update Termux packages**:

```bash
pkg update && pkg upgrade -y
Make the script executable:

bash
Copy code
chmod +x setup-termux.sh
Run the script:

bash
Copy code
./setup-termux.sh
Close and reopen Termux after running to see the changes.

⚙️ How the Script Works
The script automates the following tasks:

Installs common Termux packages:

git, curl — for downloading code and files.

neofetch — shows system info.

figlet & toilet — create ASCII banners.

cmatrix — “Matrix-style” terminal effect.

zsh — enhanced shell.

ruby — required for lolcat.

sl — fun train animation.

Installs lolcat: adds rainbow-colored output.

Clones and runs termux-style for additional themes.

Adds a personalized banner to ~/.bashrc and ~/.zshrc using figlet, toilet, and neofetch.

Adds aliases:

ll='ls -la'

hacklook='neofetch && cmatrix -b -u 2'

Changes default shell to zsh (chsh -s zsh) for an improved terminal experience.

⚠️ Notes & Tips
Backup your shell configuration before running:

bash
Copy code
cp ~/.bashrc ~/.bashrc.backup
cp ~/.zshrc ~/.zshrc.backup
Running multiple times may duplicate banner code.

You can edit the script to change your banner name or add/remove packages.
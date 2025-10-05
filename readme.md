Termux Customization Script — setup-
termux.sh
This script streamlines the setup of a beautiful, personalized, and productive Termux environment. It installs
essential tools, adds a visually appealing banner, and customizes your shell for an enhanced terminal
experience.

Installation & Usage
Follow these steps to install and use the script:

Update Termux packages :
pkg update && pkg upgrade -y
Make the script executable :
chmod +x setup-termux.sh
Run the script :
./setup-termux.sh
Restart Termux to apply all changes.
⚙ What the Script Does
The script automates the following tasks to provide a user-friendly and feature-rich Termux setup:

Installs Common Packages :
git, curl: For downloading code and files.
neofetch: Shows system information in a stylish way.
figlet & toilet: Generate ASCII art banners.
cmatrix: Displays a “Matrix-style” terminal effect.
zsh: An enhanced shell with extra features.
ruby: Required for lolcat.
sl: Fun train animation.
Installs lolcat : Adds rainbow-colored output to your terminal.
Clones and runs termux-style : Brings additional terminal themes.
Personalizes your shell banner :
Adds a banner to both ~/.bashrc and ~/.zshrc using figlet, toilet, and neofetch.
Adds Useful Aliases :
ll='ls -la': Quickly list all files in long format.
hacklook='neofetch && cmatrix -b -u 2': Show system info, then launch Matrix effect.
Changes Default Shell to Zsh :
Uses chsh -s zsh for an improved experience.
What Each Package Is For
Package Purpose
git Code and file version control
curl Fetching files from the web
neofetch Stylish system info display
figlet ASCII art banners
toilet Extra ASCII art features
cmatrix Matrix movie terminal animation
sl Fun train animation
zsh Powerful shell environment
ruby Needed for lolcat
lolcat Rainbow terminal text
termux-style Terminal color themes
Banner and Alias Integration
After running the script, your terminal will display a personalized banner every time you launch it, and you'll
have access to handy command aliases for everyday tasks.

Example Workflow
# Update and upgrade Termux packages
pkg update && pkg upgrade -y
Make the setup script executable
chmod +x setup-termux.sh
Run the setup script
./setup-termux.sh
Restart Termux to see your new banner and enviro
Notes & Tips
Backup your shell configuration before running:
cp ~/.bashrc ~/.bashrc.backup
cp ~/.zshrc ~/.zshrc.backup
Avoid Duplicates : Running the script multiple times may duplicate banner code.
Customization : You can edit the script to change the banner name or add/remove packages as you
prefer.
T erminal Customization Flow
Below is an overview of how the script sets up and customizes your Termux environment:

flowchart TD
A[Start Script] --> B[Install Packages]
B --> C[Install lolcat]
C --> D[Clone termux-style]
D --> E[Add Banner to .bashrc/.zshrc]
E --> F[Add Aliases]
F --> G[Change Default Shell to zsh]
G --> H[Finish & Restart Termux]
Why Use This Script?
Saves time : Automates tedious setup steps.
Boosts productivity : Instantly brings powerful tools and stylish enhancements.
Easy to customize : Modify the script to match your workflow and preferences.
Enjoy your beautifully customized Termux environment!

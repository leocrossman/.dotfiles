# .dotfiles

## Instructions
### **Git**
#### _Generating a new SSH Key_
1. From the command line:
```sh
cd .ssh
ssh-keygen -t ed25519 -C "your_email@example.com"
```
2. When prompted to "Enter a file in which to save the key," press Enter.
3. At the prompt "Enter passphrase", type a secure passphrase.
#### _Add the SSH key to the ssh-agent_
1. Ensure the ssh-agent is running manually:
```sh
eval "$(ssh-agent -s)"
```
2. Add the SSH private key to the ssh-agent.
```sh
ssh-add ~/.ssh/id_ed25519
```
3. Log the public key to the console:
```sh
cat ~/.ssh/id_ed25519.pub
```
4. Copy the key outputted to the clipboard.
5. Go to GitHub ➡ Settings ➡ SSH and GPG keys ➡ New SSH key.
6. Enter a name for the Key, paste in the public key, and click "Add SSH key."
### **ZSH**
1. Install ZSH
```sh
sudo apt-get update sudo apt-get install zsh -y
```
2. Change the default shell to ZSH (add sudo to change shell for root instead of working user)
```zsh
chsh -s $(which zsh)
```
3. Install oh-my-zsh
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
4. Install powerlevel10k
```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
### **TMUX**
```zsh
sudo apt install tmux
```


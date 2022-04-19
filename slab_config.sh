sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt autoremove

sudo apt install zsh -y
sudo apt install nvidia-driver-510 -y

ssh-keygen
touch .ssh/authorized_keys

# For .zshrc: plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
zsh Miniconda3-latest-Linux-x86_64.sh
rm -rf Miniconda3-latest-Linux-x86_64.sh
sudo apt-get install curl zsh -y
sudo curl -L http://install.ohmyz.sh | sh
chsh -s $(which zsh)
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo "source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "bindkey '^ ' autosuggest-accept" >> ~/.zshrc

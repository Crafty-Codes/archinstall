sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git config --global core.editor nvim

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

rm -rf ~/.config/doom
git clone https://github.com/Crafty-Codes/doom-emacs-config.git ~/.config/doom
~/.config/emacs/bin/doom sync

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

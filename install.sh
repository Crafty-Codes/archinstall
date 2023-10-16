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

yay -S python-pywal python-desktop-entry-lib python-poetry python-build python-pillow
sudo pacman -S bc blueberry bluez boost boost-libs coreutils dunst findutils fish fuzzel fzf gawk gnome-control-center ibus imagemagick libqalculate light networkmanager network-manager-applet nlohmann-json pavucontrol plasma-browser-integration playerctl procps ripgrep socat sox starship swaybg swayidle ttf-jetbrains-mono udev upower util-linux xorg-xrandr wget wireplumber wl-clipboard yad
yay -S cava eww-wayland-git geticons gojq gtklock gtklock-playerctl-module gtklock-powerbar-module gtklock-userinfo-module hyprland-git python-material-color-utilities swww ttf-material-symbols-git xdg-desktop-portal-hyprland-git waybar-hyprland-git wlogout
sudo pacman -S tesseract cliphist grim slurp
git clone https://github.com/end-4/dots-hyprland.git dotfile
cd dotfile
./guided_install.sh 

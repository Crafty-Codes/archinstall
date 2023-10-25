# Installation of oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Astrovim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git config --global core.editor nvim

# emacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

rm -rf ~/.config/doom
git clone https://github.com/Crafty-Codes/doom-emacs-config.git ~/.config/doom
~/.config/emacs/bin/doom sync

# Yay
git clone https://aur.archlinux.org/yay.git
(cd yay && makepkg -si)

plasmapkg2 -t kwinscript -i krohnkite.kwinscript

# Gamestuff
flatpak install com.valvesoftware.Steam
flatpak install net.lutris.Lutris
flatpak install com.vysp3r.ProtonPlus
flatpak install com.discordapp.Discord
flatpak install com.github.Eloston.UngoogledChromium
flatpak install io.gitlab.librewolf-community

yay -S aur/mullvad-vpn aur/ungoogled-chromium aur/librewolf extra/qbittorrent


## alvr
if [ "$1" -eq "alvr" ]
then
    flatpak install flathub org.freedesktop.Sdk//22.08 \
        org.freedesktop.Sdk.Extension.llvm16//22.08 \
        org.freedesktop.Sdk.Extension.rust-stable//22.08
    flatpak install flathub org.freedesktop.Platform.GL.default//22.08-extra \
    org.freedesktop.Platform.GL32.default//22.08-extra

    echo Install SteamVR
    flatpak run com.valvesoftware.Steam
    sudo setcap CAP_SYS_NICE+ep ~/.var/app/com.valvesoftware.Steam/data/Steam/steamapps/common/SteamVR/bin/linux64/vrcompositor-launcher
    echo Run SteamVR once and close it then
    read
    flatpak install --bundle com.valvesoftware.Steam.Utility.alvr.flatpak
fi

if [ "$2" -eq "amd" ]
then
    yay -S multilib/lib32-mesa extra/xf86-video-amdgpu extra/vulkan-radeon extra/vulkan-radeon multilib/lib32-vulkan-radeon extra/libva-mesa-driver multilib/lib32-libva-mesa-driver extra/mesa-vdpau multilib/lib32-mesa-vdpau
fi

# last setup that need to be done
echo Layan and setting nerdfont

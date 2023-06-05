if ! command -v yay &> /dev/null
then
    pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
fi

yay -Sy --needed hyprland swaybg swaylock-effects swayidle grim slurp wl-clipboard dunst xdg-user-dirs rofi viewnior eww-wayland starship thunar thunar-volman thunar-archive-plugin gvfs file-roller gsettings-desktop-schemas lxappearance Kripton Qogir-cursors playerctl polkit dbus brightnessctl zsh alacritty networkmanageo bluez bluez-utils pulseaudio pulseaudio-bluetooth pipewire blueman nvim github-cli google-chrome

#all nerd-fonts
yay -Sy --needed nerd-fonts-meta

#oh my zsh
pacman -Sy --needed zsh curl git && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ -d "${HOME}/.zshrc"]
then
    source ${HOME}/.zshrc
fi

if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins" ]
then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

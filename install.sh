if ! command -v yay &>/dev/null; then
	sudo pacman -S --needed git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
fi

yay -Sy --needed --noconfirm bash awk grep socat jq python
yay -S --needed --noconfirm pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse wireplumber alsa-utils
 yay -S --needed --noconfirm hyprland wl-clipboard rofi zsh alacritty networkmanager bluez bluez-utils blueman neovim github-cli google-chrome stow tmux wl-clipboard copyq hyprpicker-git hyprpaper mako reflector xdg-desktop-portal-hyprland-git
yay -Sy --needed --noconfirm gtk3 gtk-layer-shell pango gdk-pixbuf2 cairo glib2 gcc-libs glibc                                                                                                              
#all nerd-fonts
yay -S --needed --noconfirm nerd-fonts-meta

#oh my zsh
pacman -S --needed --noconfirm zsh curl git
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# source ${HOME}/.zshrc

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# stow ${SCRIPT_DIR}/alacritty
# stow ${SCRIPT_DIR}/background
# stow ${SCRIPT_DIR}/dunst
# stow ${SCRIPT_DIR}/eww
# stow ${SCRIPT_DIR}/hypr
# stow ${SCRIPT_DIR}/rofi

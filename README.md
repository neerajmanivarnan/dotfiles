# Dotfiles for i3wm, Picom, Dunst, Polybar and Nvim.

This repository contains my personalized configuration files for i3 Window Manager (i3wm), Picom compositor, Dunst notification daemon, and Polybar status bar as well as my neovim configurations along with my personalised keybindings. These configurations are purely personal.

## Overview

- **i3wm**: Tiling window manager for productivity and efficiency.
- **Picom**: Lightweight compositor for transparency and shadows.
- **Dunst**: Minimal notification daemon.
- **Polybar**: Highly customizable status bar.
- **NVIM**: Personalised nvchad neovim configuration.

## Configurations

Here’s where each configuration file is located:

- **i3wm**: `~/.config/i3/config`
- **Picom**: `~/.config/picom/picom.conf`
- **Dunst**: `~/.config/dunst/dunstrc`
- **Polybar**: `~/.config/polybar/*`
- **nvim**: `~/.config/nvim/*`

## Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/neerajmanivarnan/dotfiles.git ~/dotfiles
   ```

2.  **Symlink the config files**:

    ```bash
    ln -s ~/dotfiles/.config/i3 ~/.config/i3
    ln -s ~/dotfiles/.config/picom ~/.config/picom
    ln -s ~/dotfiles/.config/dunst ~/.config/dunst
    ln -s ~/dotfiles/.config/polybar ~/.config/polybar

3. **Restart the desktop environment**:
        `Mod+Shift+r`



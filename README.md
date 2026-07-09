# Sway Dotfiles
- Login Manager: SDDM
  - SDDM Theme:    [Silent](https://github.com/uiriansan/SilentSDDM)
- WM:            Sway
- Screen Lock:   Swaylock
- Terminal:      Kitty
- Text Editor:   Neovim
- Bar:           Waybar
- Applauncher:   Rofi
  - Rofi Theme: [Squared Everforest](https://github.com/newmanls/rofi-themes-collection/blob/master/themes/squared-everforest.rasi)


## Nvim
I used vim-plug for plugins. After copying my nvim config, go and install [vim-plug](https://github.com/junegunn/vim-plug).

#### Plugins List:
- [barbar](https://github.com/romgrk/barbar.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
___

## Post Installation
You have to set your SDDM theme, I would do that for you but I don't know how you use the SDDM config. Mine simply is located in /etc/sddm.conf. If you don't have SDDM conf just create one with sudo and set your theme.
```
sudo nvim /etc/sddm.conf

[Theme]
Current=silent
```
Current=silent should work but if it's not, try entering the whole path. 

## Packages

| App          | Package                                           |
| :----------- | :------------------------------------------------ |
| Shell        | [Zsh](https://wiki.archlinux.org/title/Zsh)       |
| WM / DE      | [Sway](https://wiki.archlinux.org/title/sway)     |
| Status Bar   | [Waybar](https://github.com/Alexays/Waybar)       |
| Editor       | [Neovim](https://wiki.archlinux.org/title/Neovim) |
| Terminal     | [Kitty](https://wiki.archlinux.org/title/Kitty)   |
| File Manager | [Ranger](https://wiki.archlinux.org/title/Ranger) |

## USAGE

```bash
git clone --depth 1 --separate-git-dir=$HOME/.dotfiles https://github.com/nabakdev/dotfiles.git $HOME/dotfiles-tmp
    rm -r ~/dotfiles-tmp/
    alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## Screenshots

![image 1](.screenshots/ss-1.png)
![image 2](.screenshots/ss-2.png)

###### Optionals cool shell command wrapper

- [bat](https://github.com/sharkdp/bat)
- [prettyping](https://github.com/denilsonsa/prettyping)
- [lazygit](https://github.com/jesseduffield/lazygit.git)

###### References

- https://github.com/adi1090x/rofi
- https://news.ycombinator.com/item?id=11071754
- https://github.com/siduck76/dotfiles

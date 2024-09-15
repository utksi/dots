## Dotfiles for arch+KDE+Kwin

This is for **OS: arch, DE: KDE, WM: Kwin (Wayland)**.

At the time of the last commit, the kernel is: ```Linux 6.10.10-arch1-1```.

It should be fine to simply copy everything to ```~/.config```, **except** for the ```.rc``` files in the top level directory here; they should be in ```~/.``` (except if one has a custom ZSH_CONFIG path ..etc).

Other ```rc``` config files are in ```./dots/rcs/``` and should be copied to ```~/.config/```.

For a more general case, don't copy anything from the ```dots/rcs/``` directory.

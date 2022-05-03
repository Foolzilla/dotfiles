sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort packages.txt))

# pywal compatibility for cool-retro-term
Copy and update of the script from https://www.reddit.com/r/unixporn/comments/l3i7st/i3_lain_and_coolretroterm_with_pywal_colors/

Old script link : https://pastebin.com/w6a6ZEyE

(tested on Arch)

Download or copy the script

Place it wherever you want (example: your scripts folder)

Open it in a text editor to check if the cool-retro-term.colorscheme directory is right for your system especially for the mv line (it's at the bottom)
(mine was in /usr/lib/qt/qml/QMLTermWidget/color-schemes) (reminder that you can use the find command)

Keep a copy of the old cool-retro-term.colorscheme file IMPORTANT: you want to keep a copy :) 

chmod +x the script to make it executable

Install wpgtk package 

The script only works if you launch it in root (sudo) 

To test it, open a terminal in the script folder (where he is placed) and type sudo ./nameofthescript.sh  

Open cool-retro-term to check if it worked 

You can modify the "Color=${color}" lines in the script to choose what you like .

neofetch can help you to preview the colors in another terminal, the colors start from 0 to 7 for the first line and 8 to 15 for the second line .

You can make the script launch when you start the system , launch it manually , use a shortcut , make it change the colors when you change your background , etc . 

#!/bin/bash
# /usr/lib/qt/qml/QMLTermWidget/color-schemes
# link for the original script: https://pastebin.com/w6a6ZEyE

# Function to convert hex colors to rgb
hex2rgb() {
    hex=$(echo "${1^^}" | sed 's/#//g')

    a=$(echo $hex | cut -c-2)
    b=$(echo $hex | cut -c3-4)
    c=$(echo $hex | cut -c5-6)

    r=$(echo "ibase=16; $a" | bc)
    g=$(echo "ibase=16; $b" | bc)
    b=$(echo "ibase=16; $c" | bc)

    echo $r,$g,$b
}

# Get each line from wal color file and loop though
echo 'Getting generated wal colors...'

USER_HOME=$(eval echo ~${SUDO_USER})

IFS=$'\n' read -d '' -r -a colors < "${USER_HOME}/.cache/wal/colors"

color0=$(hex2rgb ${colors[0]})
color1=$(hex2rgb ${colors[1]})
color2=$(hex2rgb ${colors[2]})
color3=$(hex2rgb ${colors[3]})
color4=$(hex2rgb ${colors[4]})
color5=$(hex2rgb ${colors[5]})
color6=$(hex2rgb ${colors[6]})
color7=$(hex2rgb ${colors[7]})
color8=$(hex2rgb ${colors[8]})
color9=$(hex2rgb ${colors[9]})
color10=$(hex2rgb ${colors[10]})
color11=$(hex2rgb ${colors[11]})
color12=$(hex2rgb ${colors[12]})
color13=$(hex2rgb ${colors[13]})
color14=$(hex2rgb ${colors[14]})
color15=$(hex2rgb ${colors[15]})

echo 'Generating cool-retro-term colorscheme...'


echo "[Background]
Bold=false
Color=${color0} 
Transparency=false
" >> cool-retro-term.colorscheme
                                 
# Backround Intense
echo "[BackgroundIntense]
Bold=true
Color=${color0} 
Transparency=false
" >> cool-retro-term.colorscheme
                                  
# Color 0
echo "[Color0]
Bold=false
Color=${color0} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 0 Intense
echo "[Color0Intense]
Bold=false
Color=${color8} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 1
echo "[Color1]
Bold=false
Color=${color1} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 1 Intense
echo "[Color1Intense]
Bold=false
Color=${color9} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 2
echo "[Color2]
Bold=false
Color=${color2} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 2 Intense
echo "[Color2Intense]
Bold=false
Color=${color10} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 3
echo "[Color3]
Bold=false
Color=${color3} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 3 Intense
echo "[Color3Intense]
Bold=false
Color=${color11} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 4
echo "[Color4]
Bold=false
Color=${color4} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 4 Intense
echo "[Color4Intense]
Bold=false
Color=${color12} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 5
echo "[Color5]
Bold=false
Color=${color5} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 5 Intense
echo "[Color5Intense]
Bold=false
Color=${color13} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 6
echo "[Color6]
Bold=false
Color=${color6} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 6 Intense
echo "[Color6Intense]
Bold=false
Color=${color14} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 7
echo "[Color7]
Bold=false
Color=${color7} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Color 7 Intense
echo "[Color7Intense]
Bold=false
Color=${color15} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Foreground
echo "[Foreground]
Bold=false
Color=${color15} 
Transparency=false
" >> cool-retro-term.colorscheme
                                                                  
# Foreground Intense
echo "[ForegroundIntense]
Bold=true
Color=${color15} 
Transparency=true
" >> cool-retro-term.colorscheme

echo "[General]
Description=cool-retro-term
Opacity=1
" >> cool-retro-term.colorscheme

echo 'Replacing the old colorscheme with the new...'
mv cool-retro-term.colorscheme /usr/lib/qt/qml/QMLTermWidget/color-schemes/cool-retro-term.colorscheme

echo 'Done!'

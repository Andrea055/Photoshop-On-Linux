#!bin/bash

mkdir ~/wol/Adobe-Photoshop


WINEPREFIX=~/wol/Adobe-Photoshop wineboot

rm -rf ~/wol/progress.mimifile
touch ~/wol/progress.mimifile
echo "10" >> ~/wol/progress.mimifile

WINEPREFIX=~/wol/Adobe-Photoshop winetricks win10

curl -L "https://drive.google.com/uc?export=download&id=1qcmyHzWerZ39OhW0y4VQ-hOy7639bJPO" > allredist.tar.xz
mkdir allredist

rm -rf ~/wol/progress.mimifile
touch ~/wol/progress.mimifile
echo "20" >> ~/wol/progress.mimifile

tar -xf allredist.tar.xz
rm -rf allredist.tar.xz

rm -rf ~/wol/progress.mimifile
touch ~/wol/progress.mimifile
echo "25" >> ~/wol/progress.mimifile

curl -L "https://lulucloud.mywire.org/FileHosting/GithubProjects/AdobePhotoshop2021.tar.xz" > AdobePhotoshop2021.tar.xz

rm -rf ~/wol/progress.mimifile
touch ~/wol/progress.mimifile
echo "50" >> ~/wol/progress.mimifile

tar -xf AdobePhotoshop2021.tar.xz
rm -rf AdobePhotoshop2021.tar.xz


rm -rf ~/wol/progress.mimifile
touch ~/wol/progress.mimifile
echo "70" >> ~/wol/progress.mimifile


WINEPREFIX=~/wol/Adobe-Photoshop winetricks fontsmooth=rgb gdiplus msxml3 msxml6 atmlib corefonts dxvk win10

rm -rf ~/wol/progress.mimifile
touch ~/wol/progress.mimifile
echo "80" >> ~/wol/progress.mimifile


WINEPREFIX=~/wol/Adobe-Photoshop wine allredist/redist/2010/vcredist_x64.exe /q /norestart
WINEPREFIX=~/wol/Adobe-Photoshop wine allredist/redist/2010/vcredist_x86.exe /q /norestart

WINEPREFIX=~/wol/Adobe-Photoshop wine allredist/redist/2012/vcredist_x86.exe /install /quiet /norestart
WINEPREFIX=~/wol/Adobe-Photoshop wine allredist/redist/2012/vcredist_x64.exe /install /quiet /norestart

WINEPREFIX=~/wol/Adobe-Photoshop wine allredist/redist/2013/vcredist_x86.exe /install /quiet /norestart
WINEPREFIX=~/wol/Adobe-Photoshop wine allredist/redist/2013/vcredist_x64.exe /install /quiet /norestart

WINEPREFIX=~/wol/Adobe-Photoshop wine allredist/redist/2019/VC_redist.x64.exe /install /quiet /norestart
WINEPREFIX=~/wol/Adobe-Photoshop wine allredist/redist/2019/VC_redist.x86.exe /install /quiet /norestart


rm -rf ~/wol/progress.mimifile
touch ~/wol/progress.mimifile
echo "90" >> ~/wol/progress.mimifile

WINEPREFIX=~/wol/Adobe-Photoshop sh allredist/setup_vkd3d_proton.sh install


mkdir ~/wol/Adobe-Photoshop/drive_c/Program\ Files/Adobe
mv Adobe\ Photoshop\ 2021 ~/wol/Adobe-Photoshop/drive_c/Program\ Files/Adobe/Adobe\ Photoshop\ 2021

touch ~/wol/Adobe-Photoshop/drive_c/launcher.sh
echo '#!/usr/bin/env bash' >> ~/wol/Adobe-Photoshop/drive_c/launcher.sh
echo 'SCR_PATH="pspath"' >> ~/wol/Adobe-Photoshop/drive_c/launcher.sh
echo 'CACHE_PATH="pscache"' >> ~/wol/Adobe-Photoshop/drive_c/launcher.sh
echo 'RESOURCES_PATH="$SCR_PATH/resources"' >> ~/wol/Adobe-Photoshop/drive_c/launcher.sh
echo 'WINE_PREFIX="$SCR_PATH/prefix"' >> ~/wol/Adobe-Photoshop/drive_c/launcher.sh
echo 'FILE_PATH=$(winepath -w "~/wol")' >> ~/wol/Adobe-Photoshop/drive_c/launcher.sh
echo 'export WINEPREFIX="'~/wol'/Adobe-Photoshop"' >> ~/wol/Adobe-Photoshop/drive_c/launcher.sh
echo 'WINEPREFIX='~/wol'/Adobe-Photoshop DXVK_LOG_PATH='~/wol'/Adobe-Photoshop DXVK_STATE_CACHE_PATH='~/wol'/Adobe-Photoshop wine64 ' ~/wol'/Adobe-Photoshop/drive_c/Program\ Files/Adobe/Adobe\ Photoshop\ 2021/photoshop.exe $FILE_PATH' >> ~/wol/Adobe-Photoshop/drive_c/launcher.sh

chmod +x ~/wol/Adobe-Photoshop/drive_c/launcher.sh

WINEPREFIX=~/wol/Adobe-Photoshop winecfg -v win10


mv allredist/photoshop.png ~/.local/share/icons/photoshop.png


touch ~/.local/share/applications/photoshop.desktop
echo '[Desktop Entry]' >> ~/.local/share/applications/photoshop.desktop
echo 'Name=Photoshop CC 2021' >> ~/.local/share/applications/photoshop.desktop
echo 'Exec=bash -c "'~/wol'/Adobe-Photoshop/drive_c/launcher.sh %F"' >> ~/.local/share/applications/photoshop.desktop
echo 'Type=Application' >> ~/.local/share/applications/photoshop.desktop
echo 'Comment=Photoshop CC 2021 (Wine)' >> ~/.local/share/applications/photoshop.desktop
echo 'Categories=Graphics;' >> ~/.local/share/applications/photoshop.desktop
echo 'Icon=photoshop' >> ~/.local/share/applications/photoshop.desktop
echo 'StartupWMClass=photoshop.exe' >> ~/.local/share/applications/photoshop.desktop

rm -rf allredist
rm -rf winetricks

rm -rf ~/wol/progress.mimifile
touch ~/wol/progress.mimifile
echo "100" >> ~/wol/progress.mimifile
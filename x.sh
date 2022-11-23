d=$(date +%y%m%d)
echo "$d - $@<br>" >> ~/d/pattern.vision/now.md
cd ~/d/pattern.vision
./build.sh
./sync.sh

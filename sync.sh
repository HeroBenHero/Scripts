curl https://rclone.org/install.sh | sudo bash
curl 'https://raw.githubusercontent.com/HeroBenHero/HeroBenHero.github.io/main/Kodi/Latest/rclone.conf' > rclone.conf
#rclone sync Shared:HeroBenHero/Cartoons/"Ben 10" Shared2:"Ben 10" --config=rclone.conf --drive-acknowledge-abuse
#rclone sync Shared:HeroBenHero/Cartoons/"Ben 10" OnedriveBusiness1:"Ben 10" --config=rclone.conf --drive-acknowledge-abuse
#rclone sync Shared:HeroBenHero/Cartoons/"Ben 10" OnedriveBusiness:"Ben 10" --config=rclone.conf --drive-acknowledge-abuse
rclone sync Shared:GdriveXbot OnedriveBusiness1:GdriveXbot --config=rclone.conf --drive-acknowledge-abuse
rclone sync Shared:HeroBenHero/Movies OnedriveBusiness1:Movies --config=rclone.conf --drive-acknowledge-abuse

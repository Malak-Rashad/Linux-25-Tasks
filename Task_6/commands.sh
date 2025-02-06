sudo useradd -m alice
sudo useradd -m bob
sudo groupadd project_group
sudo usermod -aG project_group bob
sudo usermod -aG project_group alice
zip -r files.zip files
sudo chown alice files.zip 
sudo chgrp project_group files.zip
sudo chmod 640 files.zip 

bash repo.bash
apt install amlfs-lustre-client-2.15.4-42-gd6d405d=$(uname -r) -y
mkdir -p /eph/nvme0/lusterfs
mount -t lustre -o noatime,user_xattr IP@tcp0:/lustrefs /lustrefs


# Execute a bash script stored in the file 'repo.bash'  
bash srepo.bash 
  
# Install a Azure lustre client - amlfs-lustre-client  
apt install filesystem-client-version=$(uname -r) -y  
  
# Create a directory with a specific path  , change lustrefs accordingly
mkdir -p /eph/nvme0/[lusterfs]
  
# Mount a filesystem of type 'lustre' at a specific location with specific options  [IP] your amlfs IP, and replace [lustrefs] accordingly
mount -t lustre -o noatime,user_xattr [IP]@tcp0:/lustrefs /eph/nvme0/[lusterfs]

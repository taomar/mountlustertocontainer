if [[ "$LOCAL_RANK" -eq 0 ]]; then

    # Execute a bash script stored in the file 'repo.bash'  
    bash repo.bash 
    
    # Install a Azure lustre client - amlfs-lustre-client  
    apt install amlfs-lustre-client-2.15.4-42-gd6d405d=$(uname -r) -y
    
    # Create a directory with a specific path  , change lustrefs accordingly
    mkdir -p /eph/nvme0/[lusterfs]
    
    # Mount a filesystem of type 'lustre' at a specific location with specific options  [IP] your amlfs IP, and replace [lustrefs] accordingly
    mount -t lustre -o noatime,user_xattr [IP]@tcp0:/lustrefs /eph/nvme0/[lusterfs]
else
    sleep 60
fi

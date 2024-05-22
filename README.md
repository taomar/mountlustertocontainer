This sample to directly mount the amlfs (azure lustre file system) to Azure Machine Learning Job container directly on the runtime

1- in the file src/mountlustre.sh 
   - Replace 'lustrefs' with your specific Lustre filesystem name '[lusterfs]' in the mkdir command. The updated command will be mkdir -p /eph/nvme0/[lusterfs].
   - Replace 'IP' with your specific AzureML File System (AMLFS) IP, and 'lustrefs' with your specific Lustre filesystem name '[lusterfs]' in the mount command. The updated command will be mount -t lustre -o noatime,user_xattr [IP]@tcp0:/lustrefs /eph/nvme0/[lusterfs].
Note that '[lusterfs]' and '[IP]' are placeholders and you need to replace them with your specific Lustre filesystem name.

2- containerlustremount.yaml the job yaml file, 
  - command: bash mount_script.sh && python sleep_script.py
  note first command is bash to kick the the mountlusre.ssh which will execute the needed scripts to install the client and do the mounting, then execute your code . The sleep here is for testing purpose 

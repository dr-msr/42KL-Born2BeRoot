
# Born2BeRoot : VM Manager

So I'm starting my Born2BeRoot project of my 42-Cursus in 42KL. The project requires us to work with virtualization, using either Virtualbox or UTM. The submission requirement is a signature to a virtual harddisk (VDI) created via this virtualization.

VDI files are typically large as it contains the base OS (Debian or Centos) as well as other requirement components. Such large files is not being synced among the computers in the network campus. 

Because of this, unlike other project files that are developed in C/C++ which can be easily maintained via git, it's a bit trickier to work with VDI files. 

### Workaround

One method that could work is by using portable USB drive containing the VDI files. To run VM with configured VDI directly from the drive is inefficient and slow, limited by the drive's I/O speed. Hence one would need to copy it first to a local directory, and once finished working for the day, copy it back to the portable drive.

I find it quite a hassle and kinda defeat the purpose. The world of virtualization has progress in such a way that, one could easily deploy/clone a container or VM, with a single command line. 

Hence, this script is wrote. It is (at its current state) initially hardcoded, at least some of its part, with my own Born2BeRoot project. Maybe later I will make the code much cleaner and universal.

### The Script

The script uses VBoxManage command for VM management, bypassing the need to launch the VirtualBox app. 

Upon running the first time, it has the option to initialize a new VM, download the Debian (and later Centos) ISO from the server, and attach it to the VM.

Users have the option of launching the VM for OS installation manually, or initiating an unattended installation with preconfigured script.

During working, users have the option of pushing the VDI file to the cloud (Google Drive), or restoring it from the cloud.

The script is expected to work on all machine that supports VirtualBox. 

### Future Development

- Comparing the local VDI file with remote VDI, return the timestamp and size difference, offer to overwrite with latest VDI.
- Other cloud provider (FTP).
- Alternative OS (Centos).

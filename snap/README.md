# Unofficial Snap Packaging for wimlib
![Placeholder Icon of wimlib](https://cdn.rawgit.com/Lin-Buo-Ren/wimlib-snap/93be0c4a/snap/gui/icon.png "Placeholder Icon of wimlib")

**This is the unofficial snap for wimlib**, *"the open source Windows Imaging (WIM) library"*. It works on Ubuntu, Fedora, Debian, and other major Linux distributions.

[![Build Status Badge of the `wimlib` Snap](https://build.snapcraft.io/badge/Lin-Buo-Ren/wimlib-snap.svg "Build Status of the `wimlib` snap")](https://build.snapcraft.io/user/Lin-Buo-Ren/wimlib-snap)

![Screenshot of the Snapped Application](https://cdn.rawgit.com/Lin-Buo-Ren/wimlib-snap/9ba674d6/snap/screenshots/wimlib-imagex-version.png "Screenshot of the Snapped Application")

Published for <img src="http://anything.codes/slack-emoji-for-techies/emoji/tux.png" align="top" width="24" /> with 💝 by Snapcrafters

<!-- Uncomment and modify this when you have published the snap to the Snap Store
## Installation
([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

### In Terminal
    # Install Snap #
    sudo snap install --channel=edge --devmode wimlib
    #sudo snap install --channel=beta wimlib
    #sudo snap install wimlib
    
    # Connect the Snap to Required Interfaces #
    ## _plug_name_: Reasoning of connecting _plug_name_ ##
    sudo snap connect wimlib:_plug_name_
    
    # Connect the Snap to Optional Interfaces #
    ## _plug_name_: Reasoning of connecting _plug_name_ ##
    sudo snap connect wimlib:_plug_name_

### The Graphical Way
Browse <https://snapcraft.io/wimlib> and follow the instructions.
-->

## Release Model
As wimlib's compatiblity with NTFS volumes greatly depends on libntfs-3g's capability, a special release model is established to let user get the full benefits (and risks) of the newer version of libntfs-3g.

As wimlib's backup capability doesn't match DISM's yet, always keep additional backup using DISM for your important NTFS volumes!

| Channel | Build Configuration |
| :-: | :-: |
| stable | latest stable release of wimlib + latest stable release of ntfs-3g |
| candidate | N/A |
| beta | latest development snapshot of wimlib + latest stable release of ntfs-3g |
| edge | latest development snapshot of wimlib + **latest development snapshot of ntfs-3g** |

## Test Results
### What is Working
* `wimcapture` an NTFS volume, with none/maximum compression as superuser
* `wiminfo` a WIM file
* `wimmount` a WIM file and access its content
* `wimverify` a WIM file with and without integrity data
* `wimapply` a `wimcapture` created WIM file to a NTFS volume as superuser
* `wimapply` a DISM created WIM file to a NTFS volume as superuser

### What is NOT Working...yet 
None so far.

Check out the [issue tracker](https://github.com/Lin-Buo-Ren/wimlib-snap/issues) for more known issues.

### What is NOT Tested...yet
* Anything not listed in the "What is Working" section

## Support
* Report issues regarding using this snap to the issue tracker:  
  <https://github.com/Lin-Buo-Ren/wimlib-snap/issues>
* You may also post on the Snapcraft Forum, under the `snap` topic category:  
  <https://forum.snapcraft.io/c/snap>

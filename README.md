# TWRP 10.0 for Samsung Galaxy F41/M21s

### How to build ###

```bash
# Create dirs
$ mkdir tw; cd tw

# Init repo
$ repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-10.0

# Clone f41dd repo
$ git clone https://github.com/F41-M21s/android_device_samsung_f41dd -b twrp-10.0 device/samsung/f41dd

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ source build/envsetup.sh; export ALLOW_MISSING_DEPENDENCIES=true; lunch omni_f41dd-eng; mka recoveryimage
```

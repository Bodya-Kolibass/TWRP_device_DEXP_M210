# TWRP_device_DEXP_M210
How to build:
--------------------------------------------
mkdir omni_8.0  
cd omni_8.0  
repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-8.0   
repo sync   
mkdir device && mkdir device/DEXP && mkdir device/DEXP/M210     
git clone https://github.com/Bodya-Kolibass/TWRP_device_DEXP_M210.git device/DEXP/M210  
cd bootable/recovery    
git apply -v ../../device/DEXP/M210/patches/0001-Delete-all-languages-except-EN-and-RU.patch    
git apply -v ../../device/DEXP/M210/patches/0002-Exclude-the-TWRP-app.patch     
cd ../..    
. build/envsetup.sh     
lunch omni_M210-userdebug   
make -j5 recoveryimage

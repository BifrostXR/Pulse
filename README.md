![alt text](https://drive.google.com/uc?export=download&id=1elh8oCuQ3XcnKBsewteKs-1h6Jder6ev)

# Bifrost Pulse Driver

**Beta SteamVR driver** for the Pulse haptic glove. This driver operates by emulating a Knuckles controller, enabling seamless integration of Pulse for titles that lack native support. Additionally, it offers basic haptic feedback, enhancing your experience with vibrations and subtle force feedback*.

*Proper force feedback requires native support and thus, is not fully enabled in this driver.

# Installation/Removal

**To Install:**

1) Download and extract the .zip file
2) Run **install.bat**
3) Done!

If you encounter an error while installing please make sure Steam is not running and check that the target directory is correct.
In the case it is incorrect, please manaully copy the file "bifrost" to your SteamVR driver directory and retry the installer.
If the issue persists, please post in the _issues_ tab!

**To Remove:**

In the same folder, run **uninstall.bat**

Or, if you deleted it:

1) Locate your SteamVR Directory (Usually _C:\Program Files (x86)\Steam\steamapps\common\SteamVR_)
2) Go to _drivers\bifrost_
3) Run **uninstall.bat**

# How To Use

Launching SteamVR will automitically load the driver and open the user interface. The Bifrost UI will display the current status of each device and their configurations. When you turn on and connect the device, some options will be enabled:

At the top you will find the **tracker ID**. This is the unique ID of the tracker or controller mounted to your Pulse device. If you are using controllers, this value will be set automatically. If you are using tracking pucks you will need to manually set this. To set the correct ID:

1) Look in the SteamVR status window (where it displays your VR devices.)
2) Start at zero and count the devices from left to right until you reach the tracking device. That is your ID.
3) Type the ID you found into the Bifrost UI.

Below that you will find two buttons:

**Calibrate:** Used to calibrate the device to the user's hand. When the button is pressed the user will be prompted to open their hand fully and a countdown will begin (5s). Once the open pose has been measured, the user will then be prompted to make a fist. For best calibration, we recommend positioning the thumb over the other four fingers.

**Align:** Used to align the mounted tracker or controller with the user's hand. Pressing the button will freeze the location of the tracker and begin a countdown (10s). The user can then positon their own hand to line up with the model in-game. Once the alignment feels correct, please wait until the timer ends and tracking will resume with the correct alligment.

# Still To Come

As this is the beta release, there are still many features that will role out in the coming weeks/months.

1) Full splay support.
2) Improved adaptive haptics (Including customization.)
3) Joystick emulation and button input gestures.

# Troubleshooting

Please report any bugs in the issues tab!

# Bifrost Pulse Driver

**Beta SteamVR driver** for the Pulse haptic glove. This driver operates by emulating a Knuckles controller, enabling seamless integration of Pulse for titles that lack native support. Additionally, it offers basic haptic feedback, enhancing your experience with vibrations and subtle force feedback*.

*Proper force feedback requires native support and thus, is not fully enabled in this driver.

# Installation/Removal

**To Install:**

1) Extract the .zip file
2) Run **install.exe**
3) Done!

**To Remove:**

In the same folder, run **uninstall.exe**

Or, if you deleted it:

1) Locate your SteamVR Directory (Usually _C:\Program Files (x86)\Steam\steamapps\common\SteamVR_)
2) Go to _drivers\bifrost_
3) Run **uninstall.exe**

# How To Use

Launching SteamVR will automitically load the driver and open the user interface. The Bifrost UI will display the current status of each device and their configurations. When you turn on and connect the device, two buttons will be enabled: **Calibrate** and **Align**.

**Calibrate:** Used to calibrate the device to the user's hand. When the button is pressed the user will be prompted to open their hand fully and a countdown will begin (5s). Once the open pose has been measured, the user will then be prompted to make a fist. For best calibration, we recommend positioning the thumb over the other four fingers.

**Align:** Used to align the mounted tracker or controller with the user's hand. Pressing the button will freeze the location of the tracker. The user can then positon their own hand to line up with the model in-game. Once the alignment feels correct, the button can be pressed again to continue tracking with the correct alligment.

*Note: Uninstalling the driver will also erase the user's calibration and alignment profiles.

# Still To Come

As this is the beta release, there are still many features that will role out in the coming weeks/months.

1) Full splay support.
2) Improved adaptive haptics (Including customization)
3) Joystick emulation and button input gestures.

# Troubleshooting

Please report any bugs in the issues tab! For assistance please feel free to reach out on our Discord server.

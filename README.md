## Alfred 2 Terminal Control Workflow

An [Alfred](http://www.alfredapp.com/ "Alfred App") workflow for controlling aspects of Apple's Terminal Utility.  Designed specifically for developers and admins who spend a lot of time in Terminal at the command line.  Particularly useful for those who manage multiple tabs and use varied Profiles (color themes) for Terminal windows.

![Screenshot: Alred Workflow Topology](http://cl.ly/image/3Z1d1b0N1y12 "Workflow Topology")


### New Terminals

The keyword trigger "_term_" will bring up a list of Profiles (themes/skins) based on Terminal preferences.  Continue typing to select one.

![Screenshot: Launch New Terminal](http://cl.ly/image/3d0A1T3w1y3f "New Terminal")

Modifier keys:
* **Shift**: launch this Profile in a new tab
* **Command**: change the active Terminal tab to this Profile

### Merge and Split

Keyword trigger "_term move_" will separate the current tab into its own window.
![Screenshot: Move Terminal Tab to New Window](http://cl.ly/image/191W032e1C3Z "Move Terminal Tab to New Window")

Keyword trigger "_term merge_" will merge all open Terminal windows into one tabbed set.
![Screenshot: Merge Terminal Windows](http://cl.ly/image/3m1J0R1x3U13 "Merge Terminal Windows")


### Terminal to a Directory

Keyword trigger "_term dir_", followed by a directory search phrase will launch the default Terminal profile, and automatically change to the selected directory.

![Screenshot: Launch Terminal at Directory](http://cl.ly/image/2c2z0n182B0X "Launch Terminal at Directory")

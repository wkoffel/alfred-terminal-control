## Alfred 2 Terminal Control Workflow

An [Alfred](http://www.alfredapp.com/ "Alfred App") workflow for controlling aspects of Apple's Terminal Utility.  Designed specifically for developers and admins who spend a lot of time in Terminal at the command line.  Particularly useful for those who manage multiple tabs and use varied Profiles (color themes) for Terminal windows.

![Screenshot: Alred Workflow Topology](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/workflow.png "Workflow Topology")


### New Terminals

The keyword trigger *term* will bring up a list of Profiles (themes/skins) based on Terminal preferences.  Continue typing to select one.

![Screenshot: Launch New Terminal](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/new-term.png "New Terminal")

Modifier keys:
* **Shift**: launch this Profile in a new tab
* **Command**: change the active Terminal tab to this Profile

### Merge and Split

Keyword trigger ( *term move* ) will separate the current tab into its own window.
![Screenshot: Move Terminal Tab to New Window](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/term-move.png "Move Terminal Tab to New Window")

Keyword trigger "*term merge*" will merge all open Terminal windows into one tabbed set.
![Screenshot: Merge Terminal Windows](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/term-merge.png "Merge Terminal Windows")


### Terminal to a Directory

Keyword trigger "*term dir*", followed by a directory search phrase will launch the default Terminal profile, and automatically change to the selected directory.

![Screenshot: Launch Terminal at Directory](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/term-dir.png "Launch Terminal at Directory")

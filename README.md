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

Keyword trigger *term move* will separate the current tab into its own window.
![Screenshot: Move Terminal Tab to New Window](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/term-move.png "Move Terminal Tab to New Window")

Keyword trigger *term merge* will merge all open Terminal windows into one tabbed set.
![Screenshot: Merge Terminal Windows](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/term-merge.png "Merge Terminal Windows")


### Terminal to a Directory

Keyword trigger *term dir*, followed by a directory search phrase will launch the default Terminal profile, and automatically change to the selected directory.

![Screenshot: Launch Terminal at Directory](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/term-dir.png "Launch Terminal at Directory")

#### Why Do I Want This?
I spend a lot of time connected to various processes, machines, networks, running screen/tmux sessions, etc.  From my personal experience (read: typing the wrong command into an ssh session of a production machine and taking down large consumer web properties in the proces), I've built a habit of always color-coding my terminal windows.  White on black for local OSX terminal.  Green on black for local virtual machines, green background for testing networks, and RED background for production machines (a constant reminder to be careful what I type).  This alfred workflow allows me to launch terminal themes, and also change a terminal tab quickly to a new theme if I repurpose it for a new task.

#### Install Notes
Download the compiled workflow directly at https://github.com/wkoffel/alfred-terminal-control/raw/master/alfredworkflow/Terminal%20Control.alfredworkflow

Visit the repository for the full source code at https://github.com/wkoffel/alfred-terminal-control

In theory, I've bundled all the necessary ruby gems in the workflow package proper, so it should be a simple double-click install.  If you do need to install manually, please let me know.  To install manual dependencies, you would run just "sudo gem install alfredo", and that should suffice.

#### Release Notes

* v1.0 - Initial release
* v1.1 - Support for [Alleyoop](http://www.alfredforum.com/topic/1582-alleyoop-update-alfred-workflows/ "Alleyoop Workflow Updater") workflow updater

#### Credits

Thanks to Bryan McKelvey for the simple [Alfredo Gem](https://github.com/brymck/alfredo "Alfredo Ruby Gem")
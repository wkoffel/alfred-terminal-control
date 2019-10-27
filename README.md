## Alfred 2 Terminal Control Workflow

An [Alfred](http://www.alfredapp.com/ "Alfred App") workflow for controlling aspects of Apple's Terminal Utility and [iTerm2](http://www.iterm2.com/ "iTerm 2").  Designed specifically for developers and admins who spend a lot of time in terminals at the command line.  Particularly useful for those who manage multiple tabs and use varied Profiles (color themes) for Terminal/iTerm2 windows.

![Screenshot: Alred Workflow Topology](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/workflow.png "Workflow Topology")


### New Terminals

The keyword trigger *term* will bring up a list of Profiles (themes/skins) based on Terminal preferences.  Continue typing to select one.

![Screenshot: Launch New Terminal](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/new-term.png "New Terminal")

Modifier keys:
* **Shift**: launch this Profile in a new tab
* **Command**: change the active Terminal tab to this Profile (Not available for iTerm2)

### Merge and Split

**Terminal only:** Keyword trigger *term move* will separate the current tab into its own window.
![Screenshot: Move Terminal Tab to New Window](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/term-move.png "Move Terminal Tab to New Window")

**Terminal only:** Keyword trigger *term merge* will merge all open Terminal windows into one tabbed set.
![Screenshot: Merge Terminal Windows](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/term-merge.png "Merge Terminal Windows")

**iTerm2 only:** Keyword trigger *iterm arrange* will call iTerm's "arrange all windows horizontally" window helper.
![Screenshot: Arrange iTerm Windows](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/iterm-arrange.png "Arrange iTerm Windows Horizontally")

### Terminal to a Directory

Keyword trigger *term dir* (or *iterm dir*), followed by a directory search phrase will launch the default Terminal profile, and automatically change to the selected directory.

![Screenshot: Launch Terminal at Directory](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/term-dir.png "Launch Terminal at Directory")

#### Why Do I Want This?
I spend a lot of time connected to various processes, machines, networks, running screen/tmux sessions, etc.  From my personal experience (read: typing the wrong command into an ssh session of a production machine and taking down large consumer web properties in the process), I've built a habit of always color-coding my terminal windows.  White on black for local OSX terminal.  Green on black for local virtual machines, green background for testing networks, and RED background for production machines (a constant reminder to be careful what I type).  This alfred workflow allows me to launch terminal themes, and also change a terminal tab quickly to a new theme if I repurpose it for a new task.

#### Install Notes
Download the latest compiled workflow directly from
https://github.com/wkoffel/alfred-terminal-control/tree/master/dist

![Screenshot: Download Workflow](https://raw.github.com/wkoffel/alfred-terminal-control/master/screenshots/download.png "Download Workflow")

Visit the repository for the full source code at https://github.com/wkoffel/alfred-terminal-control

In theory, I've bundled all the necessary ruby gems in the workflow package proper, so it should be a simple double-click install.  If you do need to install manually, please let me know.  To install manual dependencies, you would run just "sudo gem install alfredo", and that should suffice.

#### Credits

Thanks to Bryan McKelvey for the simple [Alfredo Gem](https://github.com/brymck/alfredo "Alfredo Ruby Gem") (no longer used, but still influential)
Thanks to phyllisstein for [Alleyoop](http://www.alfredforum.com/topic/1582-alleyoop-update-alfred-workflows/ "Alleyoop Workflow Updater")
Thanks to Quentin Stafford-Fraser for inspiration and approach in his dedicated [iTerm2 Profiles](http://qandr.org/quentin/software/alfred_itp "alfred_itp") workflow

#### Release Notes

* v1.0 (May 6, 2013) - Initial release
* v1.1 (May 10, 2013) - Support for [Alleyoop](http://www.alfredforum.com/topic/1582-alleyoop-update-alfred-workflows/ "Alleyoop Workflow Updater") workflow updater
* v2.0 (May 12, 2013) - Added control for the popular alternative [iTerm2](http://www.iterm2.com/ "iTerm2") Terminal emulator
* v2.1 (Nov 7, 2013) - Included bundled gems for ruby 2.0.0 for Mavericks OS X 10.9 Support
* v2.2 (Nov 21, 2014) - Improved UI scripting dialog to conform with 10.9+ privacy behaviors
* v2.3 (Jun 23, 2016) - Support for iTerm2 version 3.0.0+ to accommodate their new AppleScript dictionaries
* v2.4 (Oct 15, 2017) - Included bundled gems for ruby 2.3.0 for macOS High Sierra 10.13 Support
* v2.5 (Sep 29, 2018) - macOS Mojave 10.14 Support
* v2.6 (Oct 27, 2019) - Removed alfredo and nokogiri dependencies, moved to Alfred JSON format, macOS Catalina 10.15 Support. Requires Alfred 3+

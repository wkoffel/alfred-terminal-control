# Developer Notes

This should be all irrelevant as an end-user.  See README.md for all the usage info.

## Rebuilding for new versions of Mac OS X

> Since v2.6 (Oct 2019), this has gotten easier, with the switch to Alfred JSON format, and the removal of the alfredo/nokogiri dependency. Instructions below will be updated in 2020 when we see what the process is for an OS upgrade.

1. Install bundler for latest system ruby.  `sudo gem install bundler`

2. Ensure latest gems are in place.  This is generally the tricky part with OS upgrades.
  - Try to `bundle install --standalone` in the development directory.  Potentially, nokogiri will complain.  Try to get it working through hand-wavey magic.  It's getting harder and harder with each passing version.
  - Failing that, try just copying the `bundle/ruby/<old_version>/gems/` directory over to the latest version (ruby 2.3.0 as of macOS 10.13), and see if that builds.

3. Make sure you are running the system ruby (`rbenv version` = system or equivalent for your ruby version manager), and if you can run `ruby ./terminal-control.rb` and get back XML on stdout, you are likely in good shape.

## Packaging a Release

The order of operations a bit tricky on packaging a new release, because of the alleyoop updater support.  Do it like this:

1. Operate with the local directory mounted into Alfred until the code works perfectly.
2. Remove old version from the dist directory.
3. Update the version number and changelog in `alleyoop.json`
4. Update the README with changelog.
5. From Alfred preferences, export to a new `TerminalControl-vx_x` file in `dist/` directory.
6. Upload *that* file to CloudApp for distribution.
7. Take the "download link" from CloudApp and put that into the `alleyoop.json` (this will be read from GitHub source by updater)
8. Push everything to github.
9. Update the Alfred forum post at `https://www.alfredforum.com/topic/2334-terminal-control-workflow/?do=edit`

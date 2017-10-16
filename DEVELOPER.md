# Developer Notes

This should be all irrelevant as an end-user.  See README.md for all the usage info.

## Rebuilding for new versions of Mac OS X

1. Install bundler for latest system ruby.  `sudo gem install bundler`

2. Ensure latest gems are in place.  This is generally the tricky part with OS upgrades.
  - Try to `bundle install` in the development directory.  Potentially, nokogiri will complain.  Try to get it working through hand-wavey magic.  It's getting harder and harder with each passing version.
  - Failing that, try just copying the `bundle/ruby/<old_version>/gems/` directory over to the latest version (ruby 2.3.0 as of macOS 10.13), and see if that builds.

3. Make sure you are running the system ruby (`rbenv version` = system or equivalent for your ruby version manager), and if you can run `ruby ./terminal-control.rb` and get back XML on stdout, you are likely in good shape.

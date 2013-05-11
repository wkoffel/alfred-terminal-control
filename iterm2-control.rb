require 'rubygems' unless defined? Gem
require './bundle/bundler/setup'
require "alfredo"
require "cfpropertylist"

def console_log(msg)
  escape = proc{ |m| m.gsub("'", "'\\\\''") }
  `logger -t 'Alfred Workflow' '#{escape[msg]}'`
end

# Get the arguments from {query}
args = ARGV.join(" ")

# Get a list of all the settings configured for the Terminal, by name
plist = CFPropertyList::List.new(:file => File.expand_path("~/Library/Preferences/com.googlecode.iTerm2.plist"))
data = CFPropertyList.native_types(plist.value)
term_settings = data["New Bookmarks"].map { |bmark| bmark["Name"] }

# Now search for matching items to the query
filtered_settings = term_settings.select do |setting_name|
  setting_name.match(/#{args}/i)
end

workflow = Alfredo::Workflow.new
filtered_settings.each do |setting|
  display_setting = setting
  if(match = setting.match(/(.*) \(Default\)/))
    setting = match[1]
  end
  workflow << Alfredo::Item.new(:arg => setting, :title => display_setting, :subtitle => "Open '#{setting}' iTerm2", :icon_path => "icon.png")  
end
workflow.output!

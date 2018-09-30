Encoding.default_external = Encoding::UTF_8
require 'rubygems' unless defined? Gem
require './bundle/bundler/setup'
require "alfredo"

def console_log(msg)
  escape = proc{ |m| m.gsub("'", "'\\\\''") }
  `logger -t 'Alfred Workflow' '#{escape[msg]}'`
end

# Get the arguments from {query}
args = ARGV.join(" ")

# Get a list of all the settings configured for the Terminal, by name
term_settings = `osascript << EOF

tell application "Terminal"
	set theSettings to settings sets
	set defaultSettings to default settings
	set output to ""
	repeat with aSetting in theSettings
		if (name of aSetting) is equal to (name of defaultSettings) then
			set output to output & (name of aSetting) & " (Default),"
		else
			set output to output & (name of aSetting) & ","
		end if
	end repeat
end tell

EOF`

term_settings = term_settings.split(",")
term_settings = term_settings.reject { |line| line == "\n" }

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
  workflow << Alfredo::Item.new(:arg => setting, :title => display_setting, :subtitle => "Open '#{setting}' Terminal", :icon_path => "icon.png")
end
workflow.output!

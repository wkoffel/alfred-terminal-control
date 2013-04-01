require 'rubygems' unless defined? Gem
require 'bundler/setup'
require "alfredo"
#require 'ap'

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
	set output to ""
	repeat with aSetting in theSettings
		set output to output & (name of aSetting) & ","
	end repeat
end tell

EOF`

term_settings = term_settings.split(",")
term_settings = term_settings.reject { |line| line == "\n" }


# Now search for matching items to the query
filtered_settings = term_settings.select do |setting_name|
  setting_name.match(/#{args}/i)
end

# console_log(filtered_settings.join(","))

workflow = Alfredo::Workflow.new
filtered_settings.each do |setting|
  workflow << Alfredo::Item.new(:arg => setting, :title => setting, :subtitle => "Open '#{setting}' Terminal", :icon_path => "public.folder", :icon_type => "filetype")  
end
workflow.output!

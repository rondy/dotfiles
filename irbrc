# irbrc merged
# http://eustaquiorangel.com/posts/552
# http://gist.github.com/86875

require "irb/completion"         # activate default completion
require 'irb/ext/save-history'   # activate default history 
require 'pp'

# save history using built-in options
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# auto-indent
IRB.conf[:AUTO_INDENT]=true

# try to load rubygems
begin
   require "rubygems"
rescue LoadError => e
   puts "Seems you don't have Rubygems installed: #{e}"
end

# let there be colors
# just use Wirble for colors, since some enviroments dont have
# rubygems and wirble installed
begin
   require "wirble"
   Wirble.init(:skip_prompt=>true, :skip_history=>true)
   Wirble.colorize
rescue LoadError => e
   puts "Seems you don't have Wirble installed: #{e}"
end

# enabling Hirb
begin
  require "hirb"
  Hirb.enable
rescue LoadError => e
  puts "Seems you don't have Hirb installed: #{e}"
end

def v(object)
  puts Hirb::Helpers::AutoTable.render(object, :vertical => true)
end

class Object
  # get all the methods for an object that aren't basic methods from Object
  def my_methods
    (methods - Object.instance_methods).sort
  end
end

alias p pp
alias quit exit

require 'irb/completion'
require 'irb/ext/save-history'

class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

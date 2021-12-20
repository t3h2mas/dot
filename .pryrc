require 'awesome_print'
require 'pry-byebug'

Pry.editor = 'vi'

unless ENV['PRY_BW']
  Pry.color = true
  Pry.config.theme = "zenburn"
  Pry.config.prompt = PryRails::RAILS_PROMPT if defined?(PryRails::RAILS_PROMPT)
  Pry.config.prompt ||= Pry.prompt
end

Pry::Commands.command /^$/, "repeat last command" do
  pry_instance.run_command Pry.history.to_a.last
end

if defined?(PryByebug)
  Pry.config.pager = false
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end


Pry.config.ls.separator = "\n" # new lines between methods
Pry.config.ls.heading_color = :magenta
Pry.config.ls.public_method_color = :green
Pry.config.ls.protected_method_color = :yellow
Pry.config.ls.private_method_color = :bright_black

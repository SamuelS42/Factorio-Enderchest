--control.lua

script.on_event({defines.events.on_console_command},
 function (e)
	if e.command == "ender" do
		e.player.print("This does something", "cyan")
	end
  end
)
--control.lua

script.on_event({defines.events.on_console_command},
 function (e)
	if e.command == "omnichest" then
		game.print("This does something")
	end
  end
)
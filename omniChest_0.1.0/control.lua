--control.lua

script.on_event({defines.events.on_console_command},
 function (e)
	if e.command == "omnichest" then
		game.print("This does something")
	end
  end
)

script.on_init(
 function()
		-- createChest
		game.print("This does  too!")
		game.surfaces[1].create_entity{name="omni-chest", position={0,0},}
	
 end
)
script.on_event(defines.events.on_console_command,
 function (e)
	if e.command == "omnichest" then
		game.print("This does nothing")
	end
  end
)

script.on_init(
 function()
		-- createChest
		game.print("This does too!")
		global.masterChest = game.surfaces[1].create_entity{name="omni-inventory", position={0,0},}
 end
)

script.on_event_name({defines.events.on_mod_item_opened},
function(e)
		-- createChest
		if e.item == "omni-chest"then
			game.print("This does  too!")
			game.surfaces[1].create_entity{name="omni-inventory", position={0,0},}
		end
 end
)

script.on_event({defines.events.on_gui_opened},
function(e)
		-- createChest
		if e.entity.name == "omni-chest"then
			game.print("This does  too!")
			
		end
 end
)
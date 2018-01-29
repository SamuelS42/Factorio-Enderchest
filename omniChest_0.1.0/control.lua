-- script.on_init(
	-- function (e) 
		-- global.inventory = LuaInventory:create()
	-- end
-- )
-- script.on_load(
	-- function (e)
		-- inventory = global.inventory
	-- end
-- )

-- script.on_event(defines.events.on_tick,
	-- function (e)
		
	-- end
-- )

script.on_event(defines.events.on_console_command,
 function (e)
	if e.command == "omnichest" then
		game.print("This does nothing")
	end
  end
)
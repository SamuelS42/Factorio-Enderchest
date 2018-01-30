script.on_event(defines.events.on_console_command,
 function (e)
	if e.command == "omnichest" then
		game.print("This does nothing")
	end
  end
)

script.on_init(
 function()
		global.masterChest = game.surfaces[1].create_entity{name="omni-inventory", position={0,0},}
		global.slaveChests = {}
 end
)

script.on_event(defines.events.on_tick,
	function (e)
		if e.tick % 30 == 0 then
			--Sync slave chests to master chest here
		end
	end
)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity},
	function (e)
		if e.created_entity.valid and e.created_entity.name == "omni-chest" then
			table.insert(global.slaveChests, e.created_entity)
		end
	end
)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.on_entity_died},
	function (e)
		if e.entity.name == "omni-chest" then
			for i, v in pairs(global.slaveChests) do
				if v == e.entity then
					table.remove(global.slaveChests, i)
					break
				end
			end
		end
	end
)
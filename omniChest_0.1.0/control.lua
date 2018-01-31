script.on_event(defines.events.on_console_command,
 function (e)
	if e.command == "omnichest" then
		
		game.players[e.player_index].opened = global.masterChest
	end
  end
)

script.on_init(
 function()
		global.masterChest = game.surfaces[1].create_entity{name="omni-inventory", position={0,0},}
		global.combinators = {}
		global.slaveChests = {}
		global.slaveCombinators = {}
 end
)

script.on_event(defines.events.on_tick,
	function (e)
		if e.tick % 60 == 0 then
			local signals = {}
            for k, j in pairs(global.masterChest.get_inventory(defines.inventory.chest).get_contents()) do
                table.insert(signals, {signal={type="item", name=k}, count=j})
            end
            if #signals > 0 then
                for j, v in pairs(global.combinators) do
                    for i, signal in pairs(signals) do
                        v.get_control_behavior().set_signal(i, signal)
                    end
                end
            end
			
			for l, v in pairs(global.slaveChests) do
						
				--if v.get_inventory(defines.inventory.chest) ~= nil then
					for k, j in pairs(v.get_inventory(defines.inventory.chest).get_contents()) do
						if global.masterChest.can_insert({name= k, count = j}) then
						global.masterChest.insert({name= k, count = j})
						v.get_inventory(defines.inventory.chest).clear()
						end
					end
				--end
				
				--v.get_output_inventory.remove(v.get_output_inventory.get_contents())
				
			end
			
			
		end
			
		
	end
)

script.on_event({defines.events.on_player_built_tile, defines.events.on_player_mined_tile, defines.events.on_player_mined_entity },
	function (e)
		if game.players[e.player_index].character_reach_distance_bonus ~= 0 then
			--prevent abuse of long reach, this may be obsolete
			game.players[e.player_index].character_reach_distance_bonus = 0
		end
	end
)

script.on_event({defines.events.on_gui_closed},
	function (e)
			-- try abusing this. you can only mine entities in sight, not build, as far as i tested. for me this is enough
			game.players[e.player_index].character_reach_distance_bonus = 0
		
	end
)
script.on_event(defines.events.on_gui_opened,
	function (e)
		if e.entity ~= nil and e.entity.name == "omni-chest" then
			--Sync omnichest to chest.
			
			local p = game.players[e.player_index]
			p.opened = nil
			p.character_reach_distance_bonus = 1000000000
			p.opened = global.masterChest
			
		end
	end
)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity},
	function (e)
		if e.created_entity.valid and e.created_entity.name == "omni-chest" then
			slaveCombinator = game.surfaces[1].create_entity{name="omni-combinator",position = e.created_entity.position}
			slaveCombinator.connect_neighbour({wire = defines.wire_type.red, target_entity =  e.created_entity})
			table.insert(global.combinators, slaveCombinator)
			table.insert(global.slaveChests, e.created_entity)
		
		end
	end
)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.on_entity_died},
	function (e)
		if e.entity.name == "omni-chest" then
			for i, v in pairs(global.slaveChests) do
				if v == e.entity then
					thisCombinator = i
					table.remove(global.slaveChests, i)
					break
				end
			end
			combinator = table.remove(global.combinators, i)
			combinator.destroy()
			
		end
	end
)
data:extend{
	{
    type = "container",
    name = "omni-chest",
    icon = "__base__/graphics/icons/infinity-chest.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "omni-chest"},
    max_health = 200,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 1,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__base__/graphics/entity/infinity-chest/infinity-chest.png",
      priority = "extra-high",
      width = 48,
      height = 34,
      shift = {0.1875, 0}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "container",
    name = "omni-inventory",
    icon = "__base__/graphics/icons/infinity-chest.png", --(I think) this icon only appears in menus
    icon_size = 32,
    minable = nil,
	destructible = false,
	collision_mask = {},
    selection_box = nil,
    inventory_size = 32,
    picture = "__core__/graphics/empty.png",
    {
      filename = "__base__/graphics/entity/infinity-chest/infinity-chest.png",
      priority = "extra-high",
      width = 48,
      height = 34,
      shift = {0.1875, 0}
    }
  },
  {
	type = "constant-combinator",
    name = "omni-combinator",
    icon = "__base__/graphics/icons/constant-combinator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = nil,
	destructible = false,
	collision_mask = {},
    selection_box = nil,
    
    picture = "__core__/graphics/empty.png",
    max_health = 120,
    corpse = "small-remnants",

  
    item_slot_count = 32,

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    activity_led_light =
    {
      intensity = 0.8,
      size = 1,
      color = {r = 1.0, g = 1.0, b = 1.0}
    },

    activity_led_light_offsets =
    {
      {0.296875, -0.40625},
      {0.25, -0.03125},
      {-0.296875, -0.078125},
      {-0.21875, -0.46875}
    },

    circuit_wire_max_distance = 9,
	sprites = {
		north = {
				filename = "__omniChest__/graphics/factory-combinators.png",
				x = 158,
				y = 0,
				width = 79,
				height = 63,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			east = {
				filename = "__omniChest__/graphics/factory-combinators.png",
				y = 0,
				width = 79,
				height = 63,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			south = {
				filename = "__omniChest__/graphics/factory-combinators.png",
				x = 237,
				y = 0,
				width = 79,
				height = 63,
				frame_count = 1,
				shift = {0.140625, 0.140625},
			},
			west = {
				filename = "__omniChest__/graphics/factory-combinators.png",
				x = 79,
				y = 0,
				width = 79,
				height = 63,
				frame_count = 1,
				shift = {0.140625, 0.140625},
}
	},
	activity_led_sprites = {
			north = {
				filename = "__base__/graphics/entity/combinator/activity-leds/constant-combinator-LED-N.png",
				width = 8,
				height = 6,
				frame_count = 1,
				shift = util.by_pixel(9, -12),
				
			},
			east = {
				filename = "__base__/graphics/entity/combinator/activity-leds/constant-combinator-LED-E.png",
				width = 8,
				height = 8,
				frame_count = 1,
				shift = util.by_pixel(8, 0),
				
			},
			south = {
				filename = "__base__/graphics/entity/combinator/activity-leds/constant-combinator-LED-S.png",
				width = 8,
				height = 8,
				frame_count = 1,
				shift = util.by_pixel(-9, 2),
				
			},
			west = {
				filename = "__base__/graphics/entity/combinator/activity-leds/constant-combinator-LED-W.png",
				width = 8,
				height = 8,
				frame_count = 1,
				shift = util.by_pixel(-7, -15),
				
			},
		},

		activity_led_light = {
			intensity = 0.2,
			size = 1,
		},

		activity_led_light_offsets = {
			{0.296875, -0.40625},
			{0.25, -0.03125},
			{-0.296875, -0.078125},
			{-0.21875, -0.46875}
		},

		circuit_wire_connection_points = {
			{
				shadow = {
					red = {0.15625, -0.28125},
					green = {0.65625, -0.25}
				},
				wire = {
					red = {-0.28125, -0.5625},
					green = {0.21875, -0.5625},
				}
			},
			{
				shadow = {
					red = {0.75, -0.15625},
					green = {0.75, 0.25},
				},
				wire = {
					red = {0.46875, -0.5},
					green = {0.46875, -0.09375},
				}
			},
			{
				shadow = {
					red = {0.75, 0.5625},
					green = {0.21875, 0.5625}
				},
				wire = {
					red = {0.28125, 0.15625},
					green = {-0.21875, 0.15625}
				}
			},
			{
				shadow = {
					red = {-0.03125, 0.28125},
					green = {-0.03125, -0.125},
				},
				wire = {
					red = {-0.46875, 0},
					green = {-0.46875, -0.40625},
				}
			}
},
  }
}

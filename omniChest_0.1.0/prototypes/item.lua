local omniChest = table.deepcopy(data.raw.container["iron-chest"])

omniChest.name = "omni-chest"
omniChest.icons= {
   {
      icon=omniChest.icon,
      tint={r=0.7,g=0,b=0.7,a=1}
   },
}


local recipe = table.deepcopy(data.raw.recipe["iron-chest"])
recipe.enabled = true
recipe.ingredients = {{"iron-plate", 20},{"steel-plate",5}}
recipe.result = "omni-chest"

data:extend{omniChest,recipe}

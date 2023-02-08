-- item.lua

-- copy the table that defines the radar item into the radarCircuit variable
local radarCircuitNetwork = table.deepcopy(data.raw["item"]["radar"])

--What the new prototype is referred to as
radarCircuitNetwork.name = "radar-circuit-network"

--Icon while in the player's inventory
radarCircuitNetwork.icons = {
	{
		icon = radarCircuitNetwork.icon,
		tint = {r=0.5,g=0.5,b=0.5,a=0.3}
	}
}

--specific features

--Copying recipe similarly to how we copied above
local recipe = table.deepcopy(data.raw["recipe"]["radar"])
-- true: allways disponibile, false: need a tecnology to be unlocked
recipe.enabled = true
recipe.name = "radar-circuit-network"
recipe.ingredients = {{"iron-plate",1}} -- empty: recipe needs no ingridients
recipe.result = "radar-circuit-network" -- Links recipe to object created above 

data:extend{radarCircuitNetwork, recipe}
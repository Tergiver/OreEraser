
script.on_event(defines.events.on_player_selected_area, function(event, player_index)
		local player = game.players[event.player_index]
		local area = event.area
		local item = event.item
		local entities = event.entities
		local tiles = event.tiles
		if item == "ore-eraser" then
			for _,entity in ipairs(player.surface.find_entities_filtered({area=area, type="resource"})) do
				player.print("Erasing: "..entity.name)
				entity.destroy()
			end
		end
	end)


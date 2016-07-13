
script.on_event(defines.events.on_player_selected_area, function(event)
		local player = game.players[event.player_index]
		local item = event.item
		local entities = event.entities
		if item == "ore-eraser" then
			local destroyed_counts = {}
			for _,entity in ipairs(entities) do
				if entity.type == "resource" then
					if destroyed_counts[entity.name] == nil then
						destroyed_counts[entity.name] = 1
					else
						destroyed_counts[entity.name] = destroyed_counts[entity.name] + 1
					end
					entity.destroy()
				end
			end
			local text = ""
			for k,v in pairs(destroyed_counts) do
				if #text == 0 then
					text = "Resources removed: "
				else
					text = text .. ", "
				end
				text = text .. v .. " " .. k
			end
			if #text > 0 then
				player.print(text)
			end
		end
	end)

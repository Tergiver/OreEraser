
script.on_event(defines.events.on_player_selected_area, function(event)
		local player = game.players[event.player_index]
		local item = event.item
		local entities = event.entities
		if item == "ore-eraser" then
			local destroyed_info = {}
			for _,entity in ipairs(entities) do
				if entity.type == "resource" then
					local name = entity.name
					if destroyed_info[name] == nil then
						destroyed_info[name] = { count = 1, amount = entity.amount, localised_name = entity.localised_name[1] }
					else
						destroyed_info[name].count = destroyed_info[name].count + 1
						destroyed_info[name].amount = destroyed_info[name].amount + entity.amount
					end
					entity.destroy()
				end
			end
			local args = {""}
			for k,v in pairs(destroyed_info) do
				local text = ""
				if #args == 1 then
					text = "Resources removed: "
				else
					text = text .. ", "
				end
				table.insert(args, text .. v.count .. " ")
				table.insert(args, {v.localised_name})
				table.insert(args, " [" .. v.amount .. "]")
			end
			if #args > 1 then
				player.print(args)
			end
		end
	end)

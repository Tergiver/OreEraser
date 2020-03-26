require("util")

function on_player_selected_area(event, do_destroy)
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
				if do_destroy then
					entity.destroy()
				end
			end
		end
		local args = {""}
		for k,v in pairs(destroyed_info) do
			local text = ""
			if #args == 1 then
				if do_destroy then
					text = "Resources removed: "
				else
					text = "Resources: "
				end
			else
				text = text .. ", "
			end
			table.insert(args, text .. v.count .. " ")
			table.insert(args, {v.localised_name})
			table.insert(args, " [" .. util.format_number(v.amount, true) .. "]")
		end
		if #args > 1 then
			player.print(args)
		end
	end
end
	
script.on_event(defines.events.on_player_selected_area, function(event)
		on_player_selected_area(event, true)
	end)

script.on_event(defines.events.on_player_alt_selected_area, function(event)
		on_player_selected_area(event, false)
	end)

script.on_event(defines.events.on_player_dropped_item, function(event)
		if event.entity ~= nil and event.entity.stack ~= nil and event.entity.stack.name == "ore-erase" then
			event.entity.stack.clear()
		end
	end)

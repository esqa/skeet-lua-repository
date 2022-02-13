local client_visible, client_eye_position, client_log, client_trace_bullet, entity_get_bounding_box, entity_get_local_player, entity_get_origin, entity_get_player_name, entity_get_player_resource, entity_get_player_weapon, entity_get_prop, entity_is_dormant, entity_is_enemy, globals_curtime, globals_maxplayers, globals_tickcount, math_max, renderer_indicator, string_format, ui_get, ui_set, ui_new_checkbox, ui_new_hotkey, ui_reference, ui_set_callback, sqrt, unpack = client.visible, client.eye_position, client.log, client.trace_bullet, entity.get_bounding_box, entity.get_local_player, entity.get_origin, entity.get_player_name, entity.get_player_resource, entity.get_player_weapon, entity.get_prop, entity.is_dormant, entity.is_enemy, globals.curtime, globals.maxplayers, globals.tickcount, math.max, renderer.indicator, string.format, ui.get, ui.set, ui.new_checkbox, ui.new_hotkey, ui.reference, ui.set_callback, sqrt, unpack

local main = ui.new_checkbox("VISUALS", "Other ESP", "Display enemy killstreak")
local minkills = ui.new_combobox("VISUALS", "Other ESP", "Minimum kills to display", "1", "2", "3", "4", "5")

local data = {}

local function die(e)
	local attacker = client.userid_to_entindex(e.attacker)
    if not entity.is_enemy(attacker) then return end
    if data[attacker] == nil then 
        data[attacker] = 1
    else
        data[attacker] = data[attacker] + 1
    end
end
local function reset()
    data = {}
end 
client.register_esp_flag("", 206, 206, 206, function(player) 
	if not ui_get(main) then return end
    for k, v in pairs(data) do
        if k == player and v >= tonumber(ui_get(minkills)) then
            return true, v
        end
    end
end)

ui_set_callback(main, function()
	local update_callback = ui_get(main) and client.set_event_callback or client.unset_event_callback 
	update_callback("player_death", die)
    update_callback('round_prestart', reset)
    ui.set_visible(minkills,ui_get(main))
end)
ui.set_visible(minkills,false)

-- peace
-- love
-- unity 
-- respect
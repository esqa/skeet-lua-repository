--local variables for API. Automatically generated by https://github.com/simpleavaster/gslua/blob/master/authors/sapphyrus/generate_api.lua 
local client_latency, client_set_clan_tag, client_log, client_draw_rectangle, client_draw_indicator, client_draw_circle_outline, client_timestamp, client_world_to_screen, client_userid_to_entindex = client.latency, client.set_clan_tag, client.log, client.draw_rectangle, client.draw_indicator, client.draw_circle_outline, client.timestamp, client.world_to_screen, client.userid_to_entindex 
local client_draw_circle, client_draw_gradient, client_set_event_callback, client_screen_size, client_trace_line, client_draw_text, client_color_log = client.draw_circle, client.draw_gradient, client.set_event_callback, client.screen_size, client.trace_line, client.draw_text, client.color_log 
local client_system_time, client_delay_call, client_visible, client_exec, client_open_panorama_context, client_set_cvar, client_eye_position = client.system_time, client.delay_call, client.visible, client.exec, client.open_panorama_context, client.set_cvar, client.eye_position 
local client_draw_hitboxes, client_get_cvar, client_draw_line, client_camera_angles, client_draw_debug_text, client_random_int, client_random_float = client.draw_hitboxes, client.get_cvar, client.draw_line, client.camera_angles, client.draw_debug_text, client.random_int, client.random_float 
local entity_get_local_player, entity_is_enemy, entity_is_dormant, entity_hitbox_position, entity_get_player_name, entity_get_steam64, entity_get_bounding_box, entity_get_all, entity_set_prop = entity.get_local_player, entity.is_enemy, entity.is_dormant, entity.hitbox_position, entity.get_player_name, entity.get_steam64, entity.get_bounding_box, entity.get_all, entity.set_prop 
local entity_is_alive, entity_get_player_weapon, entity_get_prop, entity_get_players, entity_get_classname = entity.is_alive, entity.get_player_weapon, entity.get_prop, entity.get_players, entity.get_classname 
local globals_realtime, globals_absoluteframetime, globals_tickcount, globals_curtime, globals_mapname, globals_tickinterval, globals_framecount, globals_frametime, globals_maxplayers = globals.realtime, globals.absoluteframetime, globals.tickcount, globals.curtime, globals.mapname, globals.tickinterval, globals.framecount, globals.frametime, globals.maxplayers 
local ui_new_slider, ui_new_combobox, ui_reference, ui_set_visible, ui_is_menu_open, ui_new_color_picker, ui_set_callback, ui_set = ui.new_slider, ui.new_combobox, ui.reference, ui.set_visible, ui.is_menu_open, ui.new_color_picker, ui.set_callback, ui.set 
local ui_new_checkbox, ui_new_hotkey, ui_new_button, ui_new_multiselect, ui_get = ui.new_checkbox, ui.new_hotkey, ui.new_button, ui.new_multiselect, ui.get 
local math_ceil, math_tan, math_cos, math_sinh, math_pi, math_max, math_atan2, math_floor, math_sqrt, math_deg, math_atan, math_fmod, math_acos = math.ceil, math.tan, math.cos, math.sinh, math.pi, math.max, math.atan2, math.floor, math.sqrt, math.deg, math.atan, math.fmod, math.acos 
local math_pow, math_abs, math_min, math_sin, math_log, math_exp, math_cosh, math_asin, math_rad = math.pow, math.abs, math.min, math.sin, math.log, math.exp, math.cosh, math.asin, math.rad 
local table_sort, table_remove, table_concat, table_insert = table.sort, table.remove, table.concat, table.insert 
local string_find, string_format, string_gsub, string_len, string_gmatch, string_match, string_reverse, string_upper, string_lower, string_sub = string.find, string.format, string.gsub, string.len, string.gmatch, string.match, string.reverse, string.upper, string.lower, string.sub 
local renderer_line, renderer_indicator, renderer_world_to_screen, renderer_circle_outline, renderer_rectangle, renderer_gradient, renderer_circle, renderer_text = renderer.line, renderer.indicator, renderer.world_to_screen, renderer.circle_outline, renderer.rectangle, renderer.gradient, renderer.circle, renderer.text 
--end of local variables 

local function time_to_ticks(time)
	return math_floor(time / globals_tickinterval() + .5)
end

local skeet_tag_name = "skeet.cc (Old)"

local enabled_reference = ui.new_combobox("MISC", "Miscellaneous", "Clan tag spammer", {"Off", "gamesense", skeet_tag_name})
local default_reference = ui.reference("MISC", "Miscellaneous", "Clan tag spammer")

local clan_tag_prev = ""
local enabled_prev = "Off"

ui.set_visible(default_reference, false)

local function on_enabled_changed()
	local enabled = ui_get(enabled_reference)

	ui_set(default_reference, enabled == "gamesense")
end
ui.set_callback(enabled_reference, on_enabled_changed)
on_enabled_changed()

local function gamesense_anim(text, indices)
	local text_anim = "               " .. text .. "                      " 
	local tickinterval = globals_tickinterval()
	local tickcount = globals_tickcount() + time_to_ticks(client_latency())
	local i = tickcount / time_to_ticks(0.3)
	i = math_floor(i % #indices)
	i = indices[i+1]+1

	return string_sub(text_anim, i, i+15)
end

local function run_tag_animation()
	if ui_get(enabled_reference) == skeet_tag_name then
		--don't advertise other cheats using this or drone strike
		local clan_tag = gamesense_anim("skeet.cc", {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22})
		if clan_tag ~= clan_tag_prev then
			client_set_clan_tag(clan_tag)
		end
		clan_tag_prev = clan_tag
	end
end

local function on_paint(ctx)
	local enabled = ui_get(enabled_reference)
	if enabled == skeet_tag_name then
		local local_player = entity_get_local_player()
		if local_player ~= nil and (not entity_is_alive(local_player)) and globals_tickcount() % 2 == 0 then --missing noclip check
			run_tag_animation()
		end
	elseif enabled_prev == skeet_tag_name then
		client_set_clan_tag("\0")
	end
	enabled_prev = enabled
end
client.set_event_callback("paint", on_paint)

local function on_run_command(e)
	if ui_get(enabled_reference) == skeet_tag_name then
		if e.chokedcommands == 0 then
			run_tag_animation()
		end
	end
end
client.set_event_callback("run_command", on_run_command)
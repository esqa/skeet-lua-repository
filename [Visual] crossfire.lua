-- FFI for matchmaking
local ffi = require("ffi")
local file_crc_status_e = {cant_open_file = 0,got_crc = 1,file_in_vpk = 2}
local vftable_e = {filesystem = {check_cached_file_hash = 56}}
local IFileSystem = ffi.cast("int*", client.create_interface("filesystem_stdio.dll", "VFileSystem017") or error("IFileSystem could not be accessed through filesystem_stdio.dll!CreateInterface(\"VFileSystem017\")"))

client.set_event_callback("paint_ui", function()
	IFileSystem[vftable_e.filesystem.check_cached_file_hash] = file_crc_status_e.got_crc
end)

-- Crossfire lua
local images = require "gamesense/images"
local killstreak = 0
local set_headshot = false
local w,h = client.screen_size()
local last_timestamp = client.timestamp()
local crossfire_mode = ui.new_checkbox("VISUALS", "Effects", "Crossfire mode")
local img = {
	[true] = images.load_png(readfile("hs.png")), 
	images.load_png(readfile("first.png")), 
	images.load_png(readfile("second.png")),
	images.load_png(readfile("third.png")),
	images.load_png(readfile("fourth.png")),
	images.load_png(readfile("fifth.png")),
	images.load_png(readfile("sixth.png"))
}

-- Reset
local function reset()
	killstreak = 0
	set_headshot = false
end

-- Show image
local function on_paint()
	-- 3500 = 3.5 sec
	if client.timestamp() - last_timestamp > 3500 then return end

	if set_headshot then
		img[set_headshot]:draw(w/2-76,h/2+h/3-h/24,158,158,255,255,255,255,false,"f")
		return
	end

	if killstreak == 0 then return end
	img[killstreak]:draw(w/2-76,h/2+h/3-h/24,158,158,255,255,255,255,false,"f")

end

-- Check things
local function on_player_death(e)
	if client.userid_to_entindex(e.userid) == entity.get_local_player() then
		reset()
	elseif entity.get_local_player() == client.userid_to_entindex(e.attacker) then
		last_timestamp = client.timestamp()
		killstreak = killstreak + 1
		killstreak = killstreak < 6 and killstreak or 6
		cvar.play:invoke_callback("crossfire//" .. (e.headshot and "hs" or killstreak))
		set_headshot = e.headshot
	end
end

-- Callbacks
local function menu_call()
	if ui.get(crossfire_mode) then
		client.set_event_callback("player_death", on_player_death)
		client.set_event_callback("paint", on_paint)
		client.set_event_callback("round_start", reset)
	else
		client.unset_event_callback("player_death", on_player_death)
		client.unset_event_callback("paint", on_paint)
		client.unset_event_callback("round_start", reset)
	end
end
menu_call()
ui.set_callback(crossfire_mode, menu_call)
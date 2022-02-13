local ui_get, ui_set, bit_lshift, bit_band, lp, entity_get_prop = ui.get, ui.set, bit.lshift, bit.band, entity.get_local_player, entity.get_prop

local refFreestanding = ui.reference("aa", "anti-aimbot angles", "Freestanding")
local master = ui.new_checkbox("aa", "other", "Disable freestanding when jumping")

local function shiet(e)
    local onground = bit_band(entity_get_prop(lp(), 'm_fFlags'), bit_lshift(1, 0))
    local state = e.in_jump == 1 or onground == 0
    ui_set(refFreestanding, state and "-" or "Default")
end

ui.set_callback(master, function()
	local setCallback = ui_get(master) and client.set_event_callback or client.unset_event_callback
	setCallback('setup_command', shiet)
end)
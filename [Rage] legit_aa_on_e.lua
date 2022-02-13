legit_e_key = ui.new_checkbox("AA", "Anti-aimbot angles", "Legit anti-aim (on E key)")
freestanding_body_yaw = ui.reference("AA", "Anti-aimbot angles", "Freestanding body yaw")

client.set_event_callback("setup_command",function(e)
    local weaponn = entity.get_player_weapon()
    if ui.get(legit_e_key) then
        if weaponn ~= nil and entity.get_classname(weaponn) == "CC4" then
            if e.in_attack == 1 then
                e.in_attack = 0 
                e.in_use = 1
            end
        else
            if e.chokedcommands == 0 then
                e.in_use = 0
            end
        end
end
end)
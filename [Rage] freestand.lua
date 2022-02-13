local freestand, key = ui.reference("aa", "anti-aimbot angles", "freestanding")

client.set_event_callback("paint", function()
if ui.get(key) then
renderer.indicator(150, 200, 60, 255, "FS")
else
end
end)
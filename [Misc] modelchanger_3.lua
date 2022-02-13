local customplayers = {
	{"Local T Agent", "models/player/custom_player/legacy/tm_phoenix.mdl", true},
	{"Local CT Agent", "models/player/custom_player/legacy/ctm_sas.mdl", false},
	{"Silent | Sir Bloody Darryl", "models/player/custom_player/legacy/tm_professional_varf1.mdl", true},
	{"Skullhead | Sir Bloody Darryl", "models/player/custom_player/legacy/tm_professional_varf2.mdl", true},
	{"Royale | Sir Bloody Darryl", "models/player/custom_player/legacy/tm_professional_varf3.mdl", true},
	{"Loudmouth | Sir Bloody Darryl", "models/player/custom_player/legacy/tm_professional_varf4.mdl", true},
	{"Miami | Sir Bloody Darryl", "models/player/custom_player/legacy/tm_professional_varf.mdl", true},
	{"Getaway Sally | Professional", "models/player/custom_player/legacy/tm_professional_varj.mdl", true},
	{"AGENT Gandon | Professional", "models/player/custom_player/legacy/tm_professional_vari.mdl", true},
	{"Safecracker Voltzmann | Professinal", "models/player/custom_player/legacy/tm_professional_varg.mdl", true},
	{"Little Kev | Professinal", "models/player/custom_player/legacy/tm_professional_varh.mdl", true},
	{"Blackwolf | Sabre", "models/player/custom_player/legacy/tm_balkan_variantj.mdl", true},
	{"Rezan the Redshirt | Sabre", "models/player/custom_player/legacy/tm_balkan_variantk.mdl", true},
	{"Rezan The Ready | Sabre", "models/player/custom_player/legacy/tm_balkan_variantg.mdl", true},
	{"Maximus | Sabre", "models/player/custom_player/legacy/tm_balkan_varianti.mdl", true},
	{"Dragomir | Sabre", "models/player/custom_player/legacy/tm_balkan_variantf.mdl", true},
	{"Dragomir | Sabre Footsoldier", "models/player/custom_player/legacy/tm_balkan_variantl.mdl", true},
	{"Lt. Commander Ricksaw | NSWC SEAL", "models/player/custom_player/legacy/ctm_st6_varianti.mdl", false},
	{"'Two Times' McCoy | USAF TACP", "models/player/custom_player/legacy/ctm_st6_variantm.mdl", false},
	{"'Two Times' McCoy | USAF Cavalry", "models/player/custom_player/legacy/ctm_st6_variantl.mdl", false},
	{"Buckshot | NSWC SEAL", "models/player/custom_player/legacy/ctm_st6_variantg.mdl", false},
	{"'Blueberries' Buckshot | NSWC SEAL", "models/player/custom_player/legacy/ctm_st6_variantj.mdl", false},
	{"Seal Team 6 Soldier | NSWC SEAL", "models/player/custom_player/legacy/ctm_st6_variante.mdl", false},
	{"3rd Commando Company | KSK", "models/player/custom_player/legacy/ctm_st6_variantk.mdl", false},
	{"'The Doctor' Romanov | Sabre", "models/player/custom_player/legacy/tm_balkan_varianth.mdl", true},
	{"Michael Syfers  | FBI Sniper", "models/player/custom_player/legacy/ctm_fbi_varianth.mdl", false},
	{"Markus Delrow | FBI HRT", "models/player/custom_player/legacy/ctm_fbi_variantg.mdl", false},
	{"Cmdr. Mae | SWAT", "models/player/custom_player/legacy/ctm_swat_variante.mdl", false},
	{"1st Lieutenant Farlow | SWAT", "models/player/custom_player/legacy/ctm_swat_variantf.mdl", false},
	{"John 'Van Healen' Kask | SWAT", "models/player/custom_player/legacy/ctm_swat_variantg.mdl", false},
	{"Bio-Haz Specialist | SWAT", "models/player/custom_player/legacy/ctm_swat_varianth.mdl", false},
	{"Chem-Haz Specialist | SWAT", "models/player/custom_player/legacy/ctm_swat_variantj.mdl", false},
	{"Sergeant Bombson | SWAT", "models/player/custom_player/legacy/ctm_swat_varianti.mdl", false},		
	{"Operator | FBI SWAT", "models/player/custom_player/legacy/ctm_fbi_variantf.mdl", false},
	{"Street Soldier | Phoenix", "models/player/custom_player/legacy/tm_phoenix_varianti.mdl", true},
	{"Slingshot | Phoenix", "models/player/custom_player/legacy/tm_phoenix_variantg.mdl", true},
	{"Enforcer | Phoenix", "models/player/custom_player/legacy/tm_phoenix_variantf.mdl", true},
	{"Soldier | Phoenix", "models/player/custom_player/legacy/tm_phoenix_varianth.mdl", true},
	{"The Elite Mr. Muhlik | Elite Crew", "models/player/custom_player/legacy/tm_leet_variantf.mdl", true},
	{"Prof. Shahmat | Elite Crew", "models/player/custom_player/legacy/tm_leet_varianti.mdl", true},
	{"Osiris | Elite Crew", "models/player/custom_player/legacy/tm_leet_varianth.mdl", true},
	{"Ground Rebel  | Elite Crew", "models/player/custom_player/legacy/tm_leet_variantg.mdl", true},
	{"Special Agent Ava | FBI", "models/player/custom_player/legacy/ctm_fbi_variantb.mdl", false},
	{"B Squadron Officer | SAS", "models/player/custom_player/legacy/ctm_sas_variantf.mdl", false},
	{"Vypa Sista of the Revolution | Guerrilla Warfare", "models/player/custom_player/legacy/tm_jungle_raider_variante.mdl", true},
	{"'Medium Rare' Crasswater | Guerrilla Warfare", "models/player/custom_player/legacy/tm_jungle_raider_variantb2.mdl", true},
	{"Cmdr. Frank 'Wet Sox' Baroud | SEAL Frogman", "models/player/custom_player/legacy/ctm_diver_variantb.mdl", false},
	{"Chef d'Escadron Rouchard | Gendarmerie Nationale", "models/player/custom_player/legacy/ctm_gendarmerie_variantc.mdl", false},
	{"Cmdr. Davida 'Goggles' Fernandez | SEAL Frogman", "models/player/custom_player/legacy/ctm_diver_varianta.mdl", false},
	{"Crasswater The Forgotten | Guerrilla Warfare", "models/player/custom_player/legacy/tm_jungle_raider_variantb.mdl", true},
	{"Elite Trapper Solman | Guerrilla Warfare", "models/player/custom_player/legacy/tm_jungle_raider_varianta.mdl", true},
	{"Bloody Darryl The Strapped | The Professionals", "models/player/custom_player/legacy/tm_professional_varf5.mdl", true},
	{"Chem-Haz Capitaine | Gendarmerie Nationale", "models/player/custom_player/legacy/ctm_gendarmerie_variantb.mdl", false},
	{"Lieutenant Rex Krikey | SEAL Frogman", "models/player/custom_player/legacy/ctm_diver_variantc.mdl", false},
	{"Arno The Overgrown | Guerrilla Warfare", "models/player/custom_player/legacy/tm_jungle_raider_variantc.mdl", true},
	{"Col. Mangos Dabisi | Guerrilla Warfare", "models/player/custom_player/legacy/tm_jungle_raider_variantd.mdl", true},
	{"Officer Jacques Beltram | Gendarmerie Nationale", "models/player/custom_player/legacy/ctm_gendarmerie_variante.mdl", false},
	{"Trapper | Guerrilla Warfare", "models/player/custom_player/legacy/tm_jungle_raider_variantf2.mdl", true},
	{"Lieutenant 'Tree Hugger' Farlow | SWAT", "models/player/custom_player/legacy/ctm_swat_variantk.mdl", false},
	{"Sous-Lieutenant Medic | Gendarmerie Nationale", "models/player/custom_player/legacy/ctm_gendarmerie_varianta.mdl", false},
	{"Primeiro Tenente | Brazilian 1st Battalion", "models/player/custom_player/legacy/ctm_st6_variantn.mdl", false},
	{"D Squadron Officer | NZSAS", "models/player/custom_player/legacy/ctm_sas_variantg.mdl", false},
	{"Trapper Aggressor | Guerrilla Warfare", "models/player/custom_player/legacy/tm_jungle_raider_variantf.mdl", true},
	{"Jungle Rebel  | Elite Crew", "models/player/custom_player/legacy/tm_leet_variantj.mdl", true},
	{"Aspirant | Gendarmerie Nationale", "models/player/custom_player/legacy/ctm_gendarmerie_variantd.mdl", false}
}


local ffi = require "ffi"
ffi.cdef [[
typedef struct {
  float x;
  float y;
  float z;
}vec3_t;

typedef struct
{
  void*   fnHandle;               //0x0000
  char    szName[260];            //0x0004
  int     nLoadFlags;             //0x0108
  int     nServerCount;           //0x010C
  int     type;                   //0x0110
  int     flags;                  //0x0114
  vec3_t  vecMins;                //0x0118
  vec3_t  vecMaxs;                //0x0124
  float   radius;                 //0x0130
  char    pad[0x1C];              //0x0134
}model_t;//Size=0x0150

typedef int(__thiscall* get_model_index_t)(void*, const char*);
typedef const model_t(__thiscall* find_or_load_model_t)(void*, const char*);
typedef int(__thiscall* add_string_t)(void*, bool, const char*, int, const void*);
typedef void*(__thiscall* find_table_t)(void*, const char*);
typedef void(__thiscall* set_model_index_t)(void*, int);
typedef int(__thiscall* precache_model_t)(void*, const char*, bool);
]]

local class_ptr = ffi.typeof("void***")
local void_ptr = ffi.typeof("void*")

local rawivmodelinfo = client.create_interface("engine.dll", "VModelInfoClient004") or error("VModelInfoClient004 wasnt found", 2)
local ivmodelinfo = ffi.cast(class_ptr, rawivmodelinfo) or error("rawivmodelinfo is nil", 2)
local get_model_index = ffi.cast("get_model_index_t", ivmodelinfo[0][2]) or error("get_model_info is nil", 2)
local find_or_load_model = ffi.cast("find_or_load_model_t", ivmodelinfo[0][39]) or error("find_or_load_model is nil", 2)
local rawnetworkstringtablecontainer = client.create_interface("engine.dll", "VEngineServerStringTable001") or error("VEngineServerStringTable001 wasnt found", 2)
local networkstringtablecontainer = ffi.cast(class_ptr, rawnetworkstringtablecontainer) or error("rawnetworkstringtablecontainer is nil", 2)
local find_table = ffi.cast("find_table_t", networkstringtablecontainer[0][3]) or error("find_table is nil", 2)

local function precache_model(modelname)
	local rawprecache_table = find_table(networkstringtablecontainer, "modelprecache") or error("couldnt find modelprecache", 2)
	if rawprecache_table then
		local precache_table = ffi.cast(class_ptr, rawprecache_table) or error("couldnt cast precache_table", 2)
		if precache_table then
			local add_string = ffi.cast("add_string_t", precache_table[0][8]) or error("add_string is nil", 2)
			local emtpy_void_ptr = ffi.cast(void_ptr, 0)

			find_or_load_model(ivmodelinfo, modelname)
			local idx = add_string(precache_table, false, modelname, -1, emtpy_void_ptr)
			if idx == -1 then
			  return false
			end
		end
	end
	return true
end

local override_knife_reference = ui.reference("SKINS", "Knife options", "Override knife")
local teams = {
	{"Counter-Terrorist", false},
	{"Terrorist", true}
}
local team_references, team_model_paths = {}, {}
local model_index_prev

for i=1, #teams do
	local teamname, is_t = unpack(teams[i])

	team_model_paths[is_t] = {}
	local model_names = {}
	local l_i = 0
	for i=1, #customplayers do
		local model_name, model_path, model_is_t = unpack(customplayers[i])

		if model_is_t == nil or model_is_t == is_t then
			table.insert(model_names, model_name)
			l_i = l_i + 1
			team_model_paths[is_t][l_i] = model_path
		end
	end

	team_references[is_t] = {
		enabled_reference = ui.new_checkbox("SKINS", "Knife options", "Override player model\n" .. teamname),
		model_reference = ui.new_listbox("SKINS", "Knife options", "Selected player model\n" .. teamname, "-", unpack(model_names))
	}
	for key, value in pairs(team_references[is_t]) do
		ui.set_visible(value, false)
	end
end

client.set_event_callback("net_update_end", function()
	local local_player = entity.get_local_player()

	if local_player == nil then
		return
	end

	local model_path, model_index
	local teamnum = entity.get_prop(local_player, "m_iTeamNum")
	local is_t
	if teamnum == 2 then
		is_t = true
	elseif teamnum == 3 then
		is_t = false
	end

	for references_is_t, references in pairs(team_references) do
		ui.set_visible(references.enabled_reference, references_is_t == is_t)

		if references_is_t == is_t and ui.get(references.enabled_reference) then
			ui.set_visible(references.model_reference, true)
			model_path = team_model_paths[is_t][ui.get(references.model_reference)]
		else
			ui.set_visible(references.model_reference, false)
		end
	end

	if entity.is_alive(local_player) then
		local model_index

		if model_path ~= nil then
			model_index = get_model_index(ivmodelinfo, model_path)

			if model_index == -1 then
				model_index = nil
			end
		end

		if model_index ~= model_index_prev then
			local override_knife = ui.get(override_knife_reference)

			ui.set(override_knife_reference, not override_knife)
			ui.set(override_knife_reference, override_knife)
		end
		model_index_prev = model_index

		if model_index ~= nil then
			entity.set_prop(local_player, "m_nModelIndex", model_index)
		end
	end
end)
if minetest.settings:get_bool("log_mods") then
	print("[JCA_Mod] Loaded!")
end

minetest.register_privilege("announce", {
    description = "This allows you to use the /shout command.",
    give_to_admin = true
})
dofile(minetest.get_modpath("jca") ..'/admin.lua')
dofile(minetest.get_modpath("jca") ..'/day.lua')
dofile(minetest.get_modpath("jca") ..'/fly.lua')
dofile(minetest.get_modpath("jca") ..'/info.lua')
dofile(minetest.get_modpath("jca") ..'/mute.lua')
dofile(minetest.get_modpath("jca") ..'/noadmin.lua')
dofile(minetest.get_modpath("jca") ..'/nofly.lua')
dofile(minetest.get_modpath("jca") ..'/shout.lua')
dofile(minetest.get_modpath("jca") ..'/stop.lua')
dofile(minetest.get_modpath("jca") ..'/tp.lua')
dofile(minetest.get_modpath("jca") ..'/unmute.lua')
dofile(minetest.get_modpath("jca") ..'/build.lua')
dofile(minetest.get_modpath("jca") ..'/nobuild.lua')
dofile(minetest.get_modpath("jca") ..'/noclip.lua')
dofile(minetest.get_modpath("jca") ..'/clip.lua')
-- V 3.1.0
dofile(minetest.get_modpath("jca") ..'/ver.lua')
dofile(minetest.get_modpath("jca") ..'/stat.lua')
dofile(minetest.get_modpath("jca") ..'/b.lua')
minetest.register_chatcommand("noclip", {
	description = "This allows the target to clip through blocks when in fly mode.",
	params = "Target",
	privs = {privs = true},
	func = function(name, params)
		if params == "me" then
			local privs = minetest.get_player_privs(name)
			privs.noclip = true
			minetest.set_player_privs(name, privs)
			minetest.chat_send_player(name, "You have been granted noclip!")
		else
			local privs = minetest.get_player_privs(params)
			privs.noclip = true
			minetest.set_player_privs(params, privs)
			minetest.chat_send_player(name, params.. " has been granted noclip!")
			minetest.chat_send_player(params, "You have been granted noclip!")
		end
	end,
})
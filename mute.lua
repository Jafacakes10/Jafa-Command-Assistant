minetest.register_chatcommand("mute", {
	description = "This will mute someone!",
	params = "Target",
	privs = {privs = true},
	func = function(name, params)
		if params == "me" then
			local privs = minetest.get_player_privs(name)
			privs.announce = nil
			minetest.set_player_privs(name, privs)
			privs.shout = nil
			minetest.set_player_privs(name, privs)
			minetest.chat_send_player(name, "You have been muted!")
		else
			local privs = minetest.get_player_privs(params)
			privs.announce = nil
			minetest.set_player_privs(params, privs)
			privs.shout = nil
			minetest.set_player_privs(params, privs)
			minetest.chat_send_player(params, "You have been muted!")
		end
	end,
})
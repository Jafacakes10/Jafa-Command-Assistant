minetest.register_chatcommand("unmute", {
	description = "This will unmute someone!",
	params = "Target",
	privs = {privs = true},
	func = function(name, params)
		if params == "me" then
			local privs = minetest.get_player_privs(name)
			privs.shout = true
			minetest.set_player_privs(name, privs)
			minetest.chat_send_player(name, "You have been unmuted!")
			minetest.chat_send_player(name, "You will not have access to /shout as the announce priv has not been enabled! - use /grantme announce to enable it.")
		else
			local privs = minetest.get_player_privs(params)
			privs.shout = true
			minetest.set_player_privs(params, privs)
			minetest.chat_send_player(name, params.. " has been unmuted!")
			minetest.chat_send_player(name, params.. " will not have access to /shout as the announce priv has not been enabled! - use /grant " ..params.. " announce to enable it.")
		end
	end,
})
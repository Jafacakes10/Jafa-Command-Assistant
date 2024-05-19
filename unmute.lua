minetest.register_chatcommand("unmute", {
	description = "This will unmute someone!",
	params = "Target",
	privs = {privs = true},
	func = function(name, params)
		privs = minetest.get_player_privs(params)
		privs.shout = true
		minetest.set_player_privs(params, privs)
		minetest.chat_send_player(name, params.. " has been unmuted!")
		minetest.chat_send_player(name, params.. " will not have access to /shout as the announce priv has not been enabled! - use /grant " ..params.. " announce to enable it.")
	end,
})
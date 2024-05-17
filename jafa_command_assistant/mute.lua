minetest.register_chatcommand("mute", {
	description = "This will mute someone!",
	params = "Target",
	privs = {privs = true},
	func = function(name, params)
		privs = minetest.get_player_privs(params)
		privs.announce = nil
		minetest.set_player_privs(params, privs)
		privs.shout = nil
		minetest.set_player_privs(params, privs)
		minetest.chat_send_player(params, "You have been muted!")
	end,
})
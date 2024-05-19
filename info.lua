minetest.register_chatcommand("info", {
	description = "Gives you info on a player!",
	params = "Target",
	privs = {privs = true},
	func = function(name, params)
		info = minetest.get_player_ip(params)
		if info == nil then
			minetest.chat_send_player(name, "Unable to retrieve player info. Please check the name.")
		else
			minetest.chat_send_player(name, "Player ip: " ..info)
		end
	end,
})
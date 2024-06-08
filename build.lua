minetest.register_chatcommand("build", {
	description = "This will allow the given player to build or break blocks.",
	params = "Target",
	privs = {privs=true},
	func = function(name, params)
        if params == "me" then
		    local privs = minetest.get_player_privs(name)
		    privs.interact = true
		    minetest.set_player_privs(name, privs)
		    minetest.chat_send_player(name, "You have been unfrozen!")
        else
		    local privs = minetest.get_player_privs(params)
		    privs.interact = true
		    minetest.set_player_privs(params, privs)
		    minetest.chat_send_player(params, "You have been unfrozen!")
		    minetest.chat_send_player(name, "Player " ..params.. " has been unfrozen.")
        end
	end,
})
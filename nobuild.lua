minetest.register_chatcommand("nobuild", {
	description = "This will stop the given player from building or breaking blocks!",
	params = "Target",
	func = function(name, params)
        if params == "me" then
		    local privs = minetest.get_player_privs(name)
		    privs.interact = nil
		    minetest.set_player_privs(name, privs)
		    minetest.chat_send_player(name, "You have been frozen.")
        else
		    local privs = minetest.get_player_privs(params)
		    privs.interact = nil
		    minetest.set_player_privs(params, privs)
		    minetest.chat_send_player(params, "You have been frozen.")
		    minetest.chat_send_player(name, "Player " ..params.. " has been frozen!")
        end
	end,
})
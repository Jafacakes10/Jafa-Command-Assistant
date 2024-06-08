minetest.register_chatcommand("clip", {
    description = "This removes the ability to noclip!",
    params = "Target",
    privs = {privs = true},
    func = function(name, params)
        if params == "me" then
            local privs = minetest.get_player_privs(name)
            privs.noclip = nil
            minetest.set_player_privs(name, privs)
            minetest.chat_send_player(name, "You can no longer noclip")
        else
            local privs = minetest.get_player_privs(params)
            privs.noclip = nil
            minetest.set_player_privs(params, privs)
            minetest.chat_send_player(name, params.. " can no longer noclip!")
            minetest.chat_send_player(params, "You can no longer noclip!")
        end
    end,
})
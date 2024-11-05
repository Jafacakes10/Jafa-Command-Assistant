minetest.register_chatcommand("b", {
    description = "This will ban a player or use '/b $list' to list the banned players",
    params = "Target",
    privs = {ban = true},
    func = function(name, params)
        if (params == "$list") then
            local list = minetest.get_ban_list()
            minetest.chat_send_player(name, "LIST OF BANNED PLAYERS: " ..list)
        elseif (params == "") then
            minetest.chat_send_player(name, "Command usage: /b <target>")
        else
            if (minetest.player_exists(params)) then
                minetest.ban_player(params)
                minetest.chat_send_player(name, "Banned " ..params)
            else
                minetest.chat_send_player(name, "Cannot ban player, " ..params.. " does not exist!")
            end
        end
    end,
})
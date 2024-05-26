minetest.register_chatcommand('nofly', {
    description = "Stop someone's ability to fly!",
    params = 'Target',
    privs = {privs=true},
    func = function(name, params)
        if params == "me" then
            local privs = minetest.get_player_privs(name)
            privs.fly = nil
            minetest.set_player_privs(name, privs)
            minetest.chat_send_player(name, "Fly has been revoked from you!")
        else
            local privs = minetest.get_player_privs(params)
            privs.fly = nil
            minetest.set_player_privs(params, privs)
            minetest.chat_send_player(name, "Fly has been revoked!")
        end
    end,
})
minetest.register_chatcommand('nofly', {
    description = "Stop someone's ability to fly!",
    params = 'Target',
    privs = {privs=true},
    func = function(name, params)
        local privs = minetest.get_player_privs(params)
        privs.fly = nil
        minetest.set_player_privs(params, privs)
        minetest.chat_send_player(name, "Fly has been revoked!")
    end,
})
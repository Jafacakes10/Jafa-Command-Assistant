minetest.register_chatcommand('fly', {
    description = 'Make someone able to fly!',
    params = 'Target',
    privs = {privs=true},
    func = function(name, params)
        local privs = minetest.get_player_privs(params)
        privs.fly = true
        minetest.set_player_privs(params, privs)
        minetest.chat_send_player(name, "Fly has been granted!")
    end,
})
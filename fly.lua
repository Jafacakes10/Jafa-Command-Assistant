minetest.register_chatcommand('fly', {
    description = 'Make someone able to fly!',
    params = 'Target',
    privs = {privs=true},
    func = function(name, params)
        if params == "me" then
            local privs = minetest.get_player_privs(name)
            privs.fly = true
            minetest.set_player_privs(name, privs)
            minetest.chat_send_player(name, "You have been granted fly!")
        else
            local privs = minetest.get_player_privs(params)
            privs.fly = true
            minetest.set_player_privs(params, privs)
            minetest.chat_send_player(name, "Fly has been granted!")
        end
    end,
})
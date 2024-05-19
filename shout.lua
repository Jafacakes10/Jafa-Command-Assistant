minetest.register_chatcommand('shout', {
    description = 'Announce something with no gamertag!',
    params = 'message',
    privs = {announce=true},
    func = function(name, params)
        minetest.chat_send_all("[ANNOUNCEMENT] " ..params)
    end,
})
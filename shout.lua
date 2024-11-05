minetest.register_chatcommand('shout', {
    description = 'Announce something with no gamertag!',
    params = 'Message',
    privs = {announce=true},
    func = function(name, params)
        minetest.chat_send_all("[ANNOUNCEMENT] " ..params)
    end,
})
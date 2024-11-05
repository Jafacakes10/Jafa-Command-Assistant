minetest.register_chatcommand("stat", {
    description = "This will show the server status",
    func = function(name)
        local stat = minetest.get_server_status(name, false)
        minetest.chat_send_player(name, "Current server stats: " ..stat.. " | JCA version: 4.0.0")
    end,
})
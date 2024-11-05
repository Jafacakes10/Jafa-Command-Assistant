minetest.register_chatcommand("ver", {
    description = "This will display JCA version information",
    func = function(name)
        local player
        minetest.chat_send_player(name, "This server is running: Jafa Command Assistant: 3.1.0 -- For more info go to jca.jafacakes10.co.uk -- Thank you for downloading!")
    end,
})
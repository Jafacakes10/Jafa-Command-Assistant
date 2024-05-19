minetest.register_chatcommand("stop",{
    description = "This will shutdown the server",
    params = "Reason",
    privs = {server = true},
    func = function(name, params)
        minetest.request_shutdown(" - This server has been forcably closed by: " ..name.. " - " .. " For the reason: " ..params)
    end,
})
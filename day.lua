minetest.register_chatcommand("day", {
    description = "Make it day!",
    privs = {settime=true},
    func = function(name)
        minetest.set_timeofday(0.5)
    end,
})
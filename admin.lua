minetest.register_chatcommand("admin", {
    description = "Give a player admin commands! (All privs)",
    params = "Target",
    privs = {privs=true},
    func = function(name, params)
        local privs = minetest.get_player_privs(params)
        minetest.set_player_privs(params, {interact=true,give=true,teleport=true,bring=true,fast=true,fly=true,noclip=true,shout=true,announce=true,settime=true,privs=true,basic_privs=true,kick=true,ban=true,rollback=true,protection=true,server=true,debug=true})
        minetest.chat_send_player(name, "All privs have been granted!")
        minetest.chat_send_player(params, name.. " has granted you admin privs!")
    end,
})
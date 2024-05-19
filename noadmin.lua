minetest.register_chatcommand("noadmin", {
    description = "Revoke a player's admin commands!",
    params = "Target",
    privs = {privs=true},
    func = function(name, params)
        local privs = minetest.get_player_privs(params)
        minetest.set_player_privs(params, {interact=true,give=nil,teleport=nil,bring=nil,fast=nil,fly=nil,noclip=nil,shout=true,announce=nil,settime=nil,privs=nil,basic_privs=nil,kick=nil,ban=nil,rollback=nil,protection=nil,server=nil,debug=nil})
        minetest.chat_send_player(name, "All privs have been removed!")
        minetest.chat_send_player(params, name.. " has revoked admin privs!")
    end,
})
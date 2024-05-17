local S = core.get_translator("__builtin")

-- pos may be a non-integer position
local function find_free_position_near(pos)
	local tries = {
		vector.new( 1, 0,  0),
		vector.new(-1, 0,  0),
		vector.new( 0, 0,  1),
		vector.new( 0, 0, -1),
	}
	for _, d in ipairs(tries) do
		local p = vector.add(pos, d)
		local n = core.get_node_or_nil(p)
		if n then
			local def = core.registered_nodes[n.name]
			if def and not def.walkable then
				return p
			end
		end
	end
	return pos
end

-- Teleports player <name> to <p> if possible
local function teleport_to_pos(name, p)
	local lm = 31007 -- equals MAX_MAP_GENERATION_LIMIT in C++
	if p.x < -lm or p.x > lm or p.y < -lm or p.y > lm
			or p.z < -lm or p.z > lm then
		return false, S("Cannot teleport out of map bounds!")
	end
	local teleportee = core.get_player_by_name(name)
	if not teleportee then
		return false, S("Cannot get player with name @1.", name)
	end
	if teleportee:get_attach() then
		return false, S("Cannot teleport, @1 " ..
			"is attached to an object!", name)
	end
	teleportee:set_pos(p)
	return true, S("Teleporting @1 to @2.", name, core.pos_to_string(p, 1))
end

-- Teleports player <name> next to player <target_name> if possible
local function teleport_to_player(name, target_name)
	if name == target_name then
		return false, S("One does not teleport to oneself.")
	end
	local teleportee = core.get_player_by_name(name)
	if not teleportee then
		return false, S("Cannot get teleportee with name @1.", name)
	end
	if teleportee:get_attach() then
		return false, S("Cannot teleport, @1 " ..
			"is attached to an object!", name)
	end
	local target = core.get_player_by_name(target_name)
	if not target then
		return false, S("Cannot get target player with name @1.", target_name)
	end
	local p = find_free_position_near(target:get_pos())
	teleportee:set_pos(p)
	return true, S("Teleporting @1 to @2 at @3.", name, target_name,
		core.pos_to_string(p, 1))
end

core.register_chatcommand("tp", {
	params = S("<X>,<Y>,<Z> | <to_name> | <name> <X>,<Y>,<Z> | <name> <to_name>"),
	description = S("Teleport to position or player"),
	privs = {teleport=true},
	func = function(name, param)
		local player = core.get_player_by_name(name)
		local relpos
		if player then
			relpos = player:get_pos()
		end
		local p = {}
		p.x, p.y, p.z = string.match(param, "^([%d.~-]+)[, ] *([%d.~-]+)[, ] *([%d.~-]+)$")
		p = core.parse_coordinates(p.x, p.y, p.z, relpos)
		if p and p.x and p.y and p.z then
			return teleport_to_pos(name, p)
		end

		local target_name = param:match("^([^ ]+)$")
		if target_name then
			return teleport_to_player(name, target_name)
		end

		local has_bring_priv = core.check_player_privs(name, {bring=true})
		local missing_bring_msg = S("You don't have permission to teleport " ..
			"other players (missing privilege: @1).", "bring")

		local teleportee_name
		p = {}
		teleportee_name, p.x, p.y, p.z = param:match(
				"^([^ ]+) +([%d.~-]+)[, ] *([%d.~-]+)[, ] *([%d.~-]+)$")
		if teleportee_name then
			local teleportee = core.get_player_by_name(teleportee_name)
			if not teleportee then
				return
			end
			relpos = teleportee:get_pos()
			p = core.parse_coordinates(p.x, p.y, p.z, relpos)
		end
		p = vector.apply(p, tonumber)

		if teleportee_name and p.x and p.y and p.z then
			if not has_bring_priv then
				return false, missing_bring_msg
			end
			return teleport_to_pos(teleportee_name, p)
		end

		teleportee_name, target_name = string.match(param, "^([^ ]+) +([^ ]+)$")
		if teleportee_name and target_name then
			if not has_bring_priv then
				return false, missing_bring_msg
			end
			return teleport_to_player(teleportee_name, target_name)
		end

		return false
	end,
})
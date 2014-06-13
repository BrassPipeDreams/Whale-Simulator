krill = {}

function krill.load()
	krill.swarms = {}
	krill.swarm_dt = 0
	krill.swarm_rate = 5
	
	local krill_spr = love.graphics.newImage("assets/icons/krill.png")
	krill_anim = newAnimation(krill_spr, 32, 32, 1, 3)
end

function krill.draw()
   for _,v in ipairs(krill.swarms) do
		krill_anim:draw(v.x, v.y, v.rot, 1, 1, 16, 16)
   end
end

function krill.update(dt)
   krill.swarm_dt = krill.swarm_dt + dt
   if krill.swarm_dt > krill.swarm_rate then
		krill.swarm_dt = krill.swarm_dt - krill.swarm_rate
		krill.swarm_rate = krill.swarm_rate + 0.01 * krill.swarm_rate
		if krill.swarms[3] == nil then
		   local swarm = {}
		   swarm.x = math.random(0, 800)
		   swarm.y = math.random(0, 600)
		   swarm.rot = math.random(-6.2831853071796, 6.2831853071796)
		   table.insert(krill.swarms,swarm)
		end
	end
	krill_anim:update(dt)
end

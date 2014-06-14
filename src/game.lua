require("whale")
require("krill")
require("boat")
require("ui")
require("gameover")

game = {}

function game.load()
   krill.load()
   whale.load()
   boat.load()
   gameover.load()
   
   seabed_spr = love.graphics.newImage("assets/textures/seabed.png")
   seabed_spr:setFilter("nearest", "nearest")
   
   local waves_spr = love.graphics.newImage("assets/textures/waves.png")
   waves_spr:setFilter("nearest", "nearest")
   waves_anim = newAnimation(waves_spr, 100, 100, 1, 3)
   
   game.score = 0
   game.round = 1
   game.newround = 100
end

function game.draw()
	for i = 0,7 do
		for j = -1,6 do
		   love.graphics.setColor(35, 98, 145)
			love.graphics.draw(seabed_spr, i*100, j*100)
			love.graphics.setColor(255, 255, 255)
		end
	end
	krill.draw()
	whale.draw()
	love.graphics.setColor(255, 255, 255)
	for i = 0,7 do
		for j = -1,6 do	   
	      waves_anim:draw(i*100,j*100)
		end
	end
	boat.draw()
	ui.draw()
end

function game.update(dt)
   krill.update(dt)
   whale.update(dt)
   boat.update(dt)
   waves_anim:update(dt)
   if whale.isHurt ~= true then
      if game.dist(whale.x, whale.y, boat.x, boat.y) < (16+16) then
	      whale.health = whale.health - 40
         whale.isHurt = true
         whale.hurtRemaining = 2
	   end
	end
   
   for ei,ev in ipairs(krill.swarms) do
		if game.dist(whale.x, whale.y, ev.x, ev.y) < (16+16) then
			table.remove(krill.swarms,ei)
			game.score = game.score + 10
			whale.hunger = whale.hunger + 10
			if whale.hunger > 100 then
	         whale.hunger = 100
	      end
			if game.score >= game.newround then
			   whale.x = 400
			   whale.y = 300
			   whale.health = 100
			   whale.hunger = 100
			   table.remove(gesture)
			   whale.dir = nil
            for k,v in pairs(krill.swarms) do krill.swarms[k]=nil end
			   boat.x = math.random(0, 1000)
			   boat.y = math.random(0, 1000)
			   game.round = game.round + 1
			   game.newround = game.newround * 2 + 50
			end
		end
	end
end

function game.dist(x1,y1,x2,y2)
	return math.sqrt( (x1 - x2)^2 + (y1 - y2)^2 )
end
